.class public Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;
.super Landroid/view/View;
.source "BatteryHistoryChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$DateLabel;,
        Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TimeLabel;,
        Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TextAttrs;,
        Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$ChartData;
    }
.end annotation


# instance fields
.field final mBatCriticalPath:Landroid/graphics/Path;

.field final mBatGoodPath:Landroid/graphics/Path;

.field mBatHigh:I

.field final mBatLevelPath:Landroid/graphics/Path;

.field mBatLow:I

.field final mBatWarnPath:Landroid/graphics/Path;

.field final mBatteryBackgroundPaint:Landroid/graphics/Paint;

.field mBatteryBroadcast:Landroid/content/Intent;

.field mBatteryCriticalLevel:I

.field final mBatteryCriticalPaint:Landroid/graphics/Paint;

.field final mBatteryGoodPaint:Landroid/graphics/Paint;

.field mBatteryLevel:I

.field mBatteryWarnLevel:I

.field final mBatteryWarnPaint:Landroid/graphics/Paint;

.field mBitmap:Landroid/graphics/Bitmap;

.field mCanvas:Landroid/graphics/Canvas;

.field mChargeDurationString:Ljava/lang/String;

.field mChargeDurationStringWidth:I

.field mChargeLabelString:Ljava/lang/String;

.field mChargeLabelStringWidth:I

.field mChargingLabel:Ljava/lang/String;

.field mChargingOffset:I

.field final mChargingPaint:Landroid/graphics/Paint;

.field final mChargingPath:Landroid/graphics/Path;

.field mChartMinHeight:I

.field mCpuRunningLabel:Ljava/lang/String;

.field mCpuRunningOffset:I

.field final mCpuRunningPaint:Landroid/graphics/Paint;

.field final mCpuRunningPath:Landroid/graphics/Path;

.field final mDateLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$DateLabel;",
            ">;"
        }
    .end annotation
.end field

.field final mDateLinePaint:Landroid/graphics/Paint;

.field final mDateLinePath:Landroid/graphics/Path;

.field final mDebugRectPaint:Landroid/graphics/Paint;

.field mDischarging:Z

.field final mDockBatLevelPath:Landroid/graphics/Path;

.field final mDockBatteryBackgroundPaint:Landroid/graphics/Paint;

.field mDockBatteryLevel:I

.field private final mDockBatterySupported:Z

.field mDockChargeLabelString:Ljava/lang/String;

.field mDockDischarging:Z

.field mDockEndDataWallTime:J

.field mDockEndWallTime:J

.field mDockHistDataEnd:J

.field mDockHistEnd:J

.field mDockHistStart:J

.field mDockNumHist:I

.field mDockStartWallTime:J

.field mDockStats:Landroid/os/BatteryStats;

.field mDockStatsPeriod:J

.field mDrainString:Ljava/lang/String;

.field mDrainStringWidth:I

.field mDurationString:Ljava/lang/String;

.field mDurationStringWidth:I

.field mEndDataWallTime:J

.field mEndWallTime:J

.field mGpsOnLabel:Ljava/lang/String;

.field mGpsOnOffset:I

.field final mGpsOnPaint:Landroid/graphics/Paint;

.field final mGpsOnPath:Landroid/graphics/Path;

.field mHaveGps:Z

.field mHavePhoneSignal:Z

.field mHaveWifi:Z

.field mHeaderHeight:I

.field mHeaderTextAscent:I

.field mHeaderTextDescent:I

.field final mHeaderTextPaint:Landroid/text/TextPaint;

.field mHistDataEnd:J

.field mHistEnd:J

.field mHistStart:J

.field mLargeMode:Z

.field mLastHeight:I

.field mLastWidth:I

.field mLevelBottom:I

.field mLevelLeft:I

.field mLevelOffset:I

.field mLevelRight:I

.field mLevelTop:I

.field mLineWidth:I

.field mMaxPercentLabelString:Ljava/lang/String;

.field mMaxPercentLabelStringWidth:I

.field mMinPercentLabelString:Ljava/lang/String;

.field mMinPercentLabelStringWidth:I

.field mNumHist:I

.field final mPhoneSignalChart:Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$ChartData;

.field mPhoneSignalLabel:Ljava/lang/String;

.field mPhoneSignalOffset:I

.field mScreenOnLabel:Ljava/lang/String;

.field mScreenOnOffset:I

.field final mScreenOnPaint:Landroid/graphics/Paint;

.field final mScreenOnPath:Landroid/graphics/Path;

.field mStartWallTime:J

.field mStats:Landroid/os/BatteryStats;

.field mStatsPeriod:J

.field mTextAscent:I

.field mTextDescent:I

.field final mTextPaint:Landroid/text/TextPaint;

.field mThinLineWidth:I

.field final mTimeLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TimeLabel;",
            ">;"
        }
    .end annotation
.end field

.field final mTimeRemainPaint:Landroid/graphics/Paint;

.field final mTimeRemainPath:Landroid/graphics/Path;

.field mWifiRunningLabel:Ljava/lang/String;

.field mWifiRunningOffset:I

.field final mWifiRunningPaint:Landroid/graphics/Paint;

.field final mWifiRunningPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 361
    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    new-instance v17, Landroid/graphics/Paint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    .line 127
    new-instance v17, Landroid/graphics/Paint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    .line 128
    new-instance v17, Landroid/graphics/Paint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    .line 129
    new-instance v17, Landroid/graphics/Paint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    .line 130
    new-instance v17, Landroid/graphics/Paint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    .line 131
    new-instance v17, Landroid/graphics/Paint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockBatteryBackgroundPaint:Landroid/graphics/Paint;

    .line 132
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    .line 133
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    .line 134
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    .line 135
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    .line 136
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    .line 137
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    .line 138
    new-instance v17, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-direct/range {v17 .. v17}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$ChartData;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$ChartData;

    .line 139
    new-instance v17, Landroid/text/TextPaint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 140
    new-instance v17, Landroid/text/TextPaint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    .line 141
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    .line 143
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 144
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    .line 145
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    .line 146
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    .line 147
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    .line 148
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockBatLevelPath:Landroid/graphics/Path;

    .line 149
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    .line 150
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    .line 151
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    .line 152
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    .line 153
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    .line 154
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    .line 196
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    .line 197
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    .line 235
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    .line 236
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    .line 365
    const-string v17, "batterymanager"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/BatteryManager;

    .line 367
    .local v12, "mBatteryService":Landroid/os/BatteryManager;
    invoke-virtual {v12}, Landroid/os/BatteryManager;->isDockBatterySupported()Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockBatterySupported:Z

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x10e0047

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnLevel:I

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x10e0045

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalLevel:I

    .line 374
    const/16 v17, 0x1

    const/high16 v18, 0x40000000    # 2.0f

    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const v18, -0xff6978

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x80

    const/16 v19, 0x0

    const/16 v20, 0x80

    const/16 v21, 0x0

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x80

    const/16 v19, 0x80

    const/16 v20, 0x80

    const/16 v21, 0x0

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0xc0

    const/16 v19, 0x80

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const v18, -0x312845

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 387
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockBatterySupported:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const v18, -0x7fc35748

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 391
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$ChartData;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/cyanogenmod/settings/Utils;->BADNESS_COLORS:[I

    invoke-virtual/range {v17 .. v18}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$ChartData;->setColors([I)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0xff

    const/16 v19, 0xff

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const v18, -0xff6978

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const v18, -0xff6978

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const v18, -0xff6978

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const v18, -0xff6978

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const v18, -0xff6978

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 405
    sget-object v17, Lcom/android/cyanogenmod/settings/R$styleable;->BatteryHistoryChart:[I

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 409
    .local v5, "a":Landroid/content/res/TypedArray;
    new-instance v13, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TextAttrs;

    invoke-direct {v13}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TextAttrs;-><init>()V

    .line 410
    .local v13, "mainTextAttrs":Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TextAttrs;
    new-instance v10, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TextAttrs;

    invoke-direct {v10}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TextAttrs;-><init>()V

    .line 411
    .local v10, "headTextAttrs":Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TextAttrs;
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v13, v0, v5, v1}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->retrieve(Landroid/content/Context;Landroid/content/res/TypedArray;I)V

    .line 412
    const/16 v17, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v10, v0, v5, v1}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->retrieve(Landroid/content/Context;Landroid/content/res/TypedArray;I)V

    .line 414
    const/16 v16, 0x0

    .line 415
    .local v16, "shadowcolor":I
    const/4 v7, 0x0

    .local v7, "dx":F
    const/4 v8, 0x0

    .local v8, "dy":F
    const/4 v15, 0x0

    .line 417
    .local v15, "r":F
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v14

    .line 418
    .local v14, "n":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v14, :cond_1

    .line 419
    invoke-virtual {v5, v11}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    .line 421
    .local v6, "attr":I
    packed-switch v6, :pswitch_data_0

    .line 418
    :goto_1
    :pswitch_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 423
    :pswitch_1
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    .line 424
    goto :goto_1

    .line 427
    :pswitch_2
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 428
    goto :goto_1

    .line 431
    :pswitch_3
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    .line 432
    goto :goto_1

    .line 435
    :pswitch_4
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    .line 436
    goto :goto_1

    .line 439
    :pswitch_5
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textColor:Landroid/content/res/ColorStateList;

    .line 440
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 444
    :pswitch_6
    iget v0, v13, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    iput v0, v13, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    .line 445
    iget v0, v10, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    iput v0, v10, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    goto :goto_1

    .line 449
    :pswitch_7
    iget v0, v13, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    iput v0, v13, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    .line 450
    iget v0, v10, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    iput v0, v10, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    goto :goto_1

    .line 454
    :pswitch_8
    iget v0, v13, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    iput v0, v13, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    .line 455
    iget v0, v10, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    iput v0, v10, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    goto/16 :goto_1

    .line 459
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 468
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 472
    :pswitch_b
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChartMinHeight:I

    goto/16 :goto_1

    .line 477
    .end local v6    # "attr":I
    :cond_1
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->apply(Landroid/content/Context;Landroid/text/TextPaint;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->apply(Landroid/content/Context;Landroid/text/TextPaint;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 484
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    move/from16 v17, v0

    div-int/lit8 v9, v17, 0x2

    .line 485
    .local v9, "hairlineWidth":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ge v9, v0, :cond_2

    .line 486
    const/4 v9, 0x1

    .line 488
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    int-to-float v0, v9

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    new-instance v18, Landroid/graphics/DashPathEffect;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    aput v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    aput v21, v19, v20

    const/16 v20, 0x0

    invoke-direct/range {v18 .. v20}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 492
    if-eqz v16, :cond_3

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v15, v7, v8, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v15, v7, v8, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 496
    :cond_3
    return-void

    .line 421
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 783
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isDayFirst()Z
    .locals 4

    .prologue
    .line 787
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 788
    .local v0, "d":Llibcore/icu/LocaleData;
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortDateFormat4:Ljava/lang/String;

    .line 789
    .local v1, "value":Ljava/lang/String;
    const/16 v2, 0x4d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method addDateLabel(Ljava/util/Calendar;IIZ)V
    .locals 14
    .param p1, "cal"    # Ljava/util/Calendar;
    .param p2, "levelLeft"    # I
    .param p3, "levelRight"    # I
    .param p4, "isDayFirst"    # Z

    .prologue
    .line 1333
    iget-wide v4, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 1334
    .local v4, "walltimeStart":J
    iget-wide v6, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    sub-long v2, v6, v4

    .line 1335
    .local v2, "walltimeChange":J
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$DateLabel;

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    sub-int v9, p3, p2

    int-to-long v12, v9

    mul-long/2addr v10, v12

    div-long/2addr v10, v2

    long-to-int v9, v10

    add-int v9, v9, p2

    move/from16 v0, p4

    invoke-direct {v7, v8, v9, p1, v0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$DateLabel;-><init>(Landroid/text/TextPaint;ILjava/util/Calendar;Z)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1339
    return-void
.end method

.method addTimeLabel(Ljava/util/Calendar;IIZ)V
    .locals 14
    .param p1, "cal"    # Ljava/util/Calendar;
    .param p2, "levelLeft"    # I
    .param p3, "levelRight"    # I
    .param p4, "is24hr"    # Z

    .prologue
    .line 1324
    iget-wide v4, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 1325
    .local v4, "walltimeStart":J
    iget-wide v6, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    sub-long v2, v6, v4

    .line 1326
    .local v2, "walltimeChange":J
    iget-object v6, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TimeLabel;

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    sub-int v9, p3, p2

    int-to-long v12, v9

    mul-long/2addr v10, v12

    div-long/2addr v10, v2

    long-to-int v9, v10

    add-int v9, v9, p2

    move/from16 v0, p4

    invoke-direct {v7, v8, v9, p1, v0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TimeLabel;-><init>(Landroid/text/TextPaint;ILjava/util/Calendar;Z)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1330
    return-void
.end method

.method drawChart(Landroid/graphics/Canvas;II)V
    .locals 29
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 1369
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->isLayoutRtl()Z

    move-result v15

    .line 1370
    .local v15, "layoutRtl":Z
    if-eqz v15, :cond_4

    move/from16 v22, p2

    .line 1371
    .local v22, "textStartX":I
    :goto_0
    if-eqz v15, :cond_5

    const/16 v21, 0x0

    .line 1372
    .local v21, "textEndX":I
    :goto_1
    if-eqz v15, :cond_6

    sget-object v19, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 1373
    .local v19, "textAlignLeft":Landroid/graphics/Paint$Align;
    :goto_2
    if-eqz v15, :cond_7

    sget-object v20, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 1380
    .local v20, "textAlignRight":Landroid/graphics/Paint$Align;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1385
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockBatterySupported:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockBatLevelPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockBatLevelPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1388
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_b

    .line 1389
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v3, v3, 0x4

    add-int v25, v2, v3

    .line 1390
    .local v25, "y":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int v27, v2, v3

    .line 1391
    .local v27, "ytick":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1392
    const/4 v14, 0x0

    .line 1393
    .local v14, "lastX":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_c

    .line 1394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TimeLabel;

    .line 1395
    .local v12, "label":Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TimeLabel;
    if-nez v11, :cond_8

    .line 1396
    iget v2, v12, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v3, v12, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int v24, v2, v3

    .line 1397
    .local v24, "x":I
    if-gez v24, :cond_2

    .line 1398
    const/16 v24, 0x0

    .line 1401
    :cond_2
    iget-object v2, v12, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    move/from16 v0, v24

    int-to-float v3, v0

    move/from16 v0, v25

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1402
    iget v2, v12, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v3, v2

    move/from16 v0, v27

    int-to-float v4, v0

    iget v2, v12, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int v2, v2, v27

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1403
    iget v2, v12, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int v14, v24, v2

    .line 1393
    :cond_3
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1370
    .end local v11    # "i":I
    .end local v12    # "label":Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TimeLabel;
    .end local v14    # "lastX":I
    .end local v19    # "textAlignLeft":Landroid/graphics/Paint$Align;
    .end local v20    # "textAlignRight":Landroid/graphics/Paint$Align;
    .end local v21    # "textEndX":I
    .end local v22    # "textStartX":I
    .end local v24    # "x":I
    .end local v25    # "y":I
    .end local v27    # "ytick":I
    :cond_4
    const/16 v22, 0x0

    goto/16 :goto_0

    .restart local v22    # "textStartX":I
    :cond_5
    move/from16 v21, p2

    .line 1371
    goto/16 :goto_1

    .line 1372
    .restart local v21    # "textEndX":I
    :cond_6
    sget-object v19, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto/16 :goto_2

    .line 1373
    .restart local v19    # "textAlignLeft":Landroid/graphics/Paint$Align;
    :cond_7
    sget-object v20, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto/16 :goto_3

    .line 1404
    .restart local v11    # "i":I
    .restart local v12    # "label":Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TimeLabel;
    .restart local v14    # "lastX":I
    .restart local v20    # "textAlignRight":Landroid/graphics/Paint$Align;
    .restart local v25    # "y":I
    .restart local v27    # "ytick":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v11, v2, :cond_9

    .line 1405
    iget v2, v12, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v3, v12, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int v24, v2, v3

    .line 1406
    .restart local v24    # "x":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    add-int/2addr v2, v14

    move/from16 v0, v24

    if-lt v0, v2, :cond_3

    .line 1409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    add-int/lit8 v3, v11, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TimeLabel;

    .line 1410
    .local v17, "nextLabel":Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TimeLabel;
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    sub-int v2, p2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v2, v3

    move/from16 v0, v24

    if-gt v0, v2, :cond_3

    .line 1414
    iget-object v2, v12, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    move/from16 v0, v24

    int-to-float v3, v0

    move/from16 v0, v25

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1415
    iget v2, v12, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v3, v2

    move/from16 v0, v27

    int-to-float v4, v0

    iget v2, v12, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int v2, v2, v27

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1416
    iget v2, v12, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int v14, v24, v2

    .line 1417
    goto :goto_5

    .line 1418
    .end local v17    # "nextLabel":Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TimeLabel;
    .end local v24    # "x":I
    :cond_9
    iget v2, v12, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v3, v12, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int v24, v2, v3

    .line 1419
    .restart local v24    # "x":I
    iget v2, v12, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int v2, v2, v24

    move/from16 v0, p2

    if-lt v2, v0, :cond_a

    .line 1420
    add-int/lit8 v2, p2, -0x1

    iget v3, v12, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    sub-int v24, v2, v3

    .line 1423
    :cond_a
    iget-object v2, v12, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    move/from16 v0, v24

    int-to-float v3, v0

    move/from16 v0, v25

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1424
    iget v2, v12, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v3, v2

    move/from16 v0, v27

    int-to-float v4, v0

    iget v2, v12, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int v2, v2, v27

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 1427
    .end local v11    # "i":I
    .end local v12    # "label":Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$TimeLabel;
    .end local v14    # "lastX":I
    .end local v24    # "x":I
    .end local v25    # "y":I
    .end local v27    # "ytick":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 1428
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v3, v3, 0x4

    add-int v25, v2, v3

    .line 1429
    .restart local v25    # "y":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move/from16 v0, v25

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1435
    .end local v25    # "y":I
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    neg-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextDescent:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3

    add-int v10, v2, v3

    .line 1436
    .local v10, "headerTop":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    int-to-float v4, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1439
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockBatterySupported:Z

    if-eqz v2, :cond_d

    .line 1441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockChargeLabelString:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextDescent:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    sub-int/2addr v4, v5

    add-int/2addr v4, v10

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1444
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargeDurationStringWidth:I

    div-int/lit8 v18, v2, 0x2

    .line 1445
    .local v18, "stringHalfWidth":I
    if-eqz v15, :cond_e

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    .line 1446
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargeDurationStringWidth:I

    sub-int v2, p2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDrainStringWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v3, v2, 0x2

    if-eqz v15, :cond_1c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDrainStringWidth:I

    :goto_6
    add-int v9, v3, v2

    .line 1449
    .local v9, "headerCenter":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargeDurationString:Ljava/lang/String;

    sub-int v3, v9, v18

    int-to-float v3, v3

    int-to-float v4, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDrainString:Ljava/lang/String;

    move/from16 v0, v21

    int-to-float v3, v0

    int-to-float v4, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1459
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 1461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1463
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1467
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_12

    .line 1469
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    sub-int v2, p3, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v23, v2, v3

    .line 1470
    .local v23, "top":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$ChartData;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$ChartData;->draw(Landroid/graphics/Canvas;II)V

    .line 1472
    .end local v23    # "top":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    .line 1474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1476
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    .line 1478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1480
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v2, :cond_15

    .line 1481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 1483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1486
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v2, :cond_16

    .line 1487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    .line 1489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1492
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    .line 1494
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1497
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v2, :cond_1b

    .line 1499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v8

    .line 1500
    .local v8, "align":Landroid/graphics/Paint$Align;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1501
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_18

    .line 1502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalLabel:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1505
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v2, :cond_19

    .line 1506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mGpsOnLabel:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1509
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v2, :cond_1a

    .line 1510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningLabel:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1513
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningLabel:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargingLabel:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mScreenOnLabel:Ljava/lang/String;

    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v8}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1522
    .end local v8    # "align":Landroid/graphics/Paint$Align;
    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v2, v3

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v2, v5

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1524
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v2, :cond_1d

    .line 1525
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_7
    const/16 v2, 0xa

    if-ge v11, v2, :cond_1d

    .line 1526
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    sub-int/2addr v3, v4

    mul-int/2addr v3, v11

    div-int/lit8 v3, v3, 0xa

    add-int v25, v2, v3

    .line 1527
    .restart local v25    # "y":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v3, v2

    move/from16 v0, v25

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    int-to-float v5, v2

    move/from16 v0, v25

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1525
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 1446
    .end local v9    # "headerCenter":I
    .end local v11    # "i":I
    .end local v25    # "y":I
    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargeLabelStringWidth:I

    goto/16 :goto_6

    .line 1533
    .restart local v9    # "headerCenter":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelString:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mMinPercentLabelString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelStringWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mMinPercentLabelStringWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1537
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v2, v4

    int-to-float v4, v2

    move/from16 v0, p2

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1540
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_20

    .line 1541
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    add-int v28, v2, v3

    .line 1542
    .local v28, "ytop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move/from16 v26, v0

    .line 1543
    .local v26, "ybottom":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    .line 1544
    .local v13, "lastLeft":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v11, v2, -0x1

    .restart local v11    # "i":I
    :goto_8
    if-ltz v11, :cond_20

    .line 1546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$DateLabel;

    .line 1547
    .local v12, "label":Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$DateLabel;
    iget v2, v12, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int v16, v2, v3

    .line 1548
    .local v16, "left":I
    iget v2, v12, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v3, v3, 0x2

    add-int v24, v2, v3

    .line 1549
    .restart local v24    # "x":I
    iget v2, v12, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$DateLabel;->width:I

    add-int v2, v2, v24

    if-lt v2, v13, :cond_1f

    .line 1550
    iget v2, v12, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v12, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$DateLabel;->width:I

    sub-int v24, v2, v3

    .line 1551
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int v16, v24, v2

    .line 1552
    move/from16 v0, v16

    if-lt v0, v13, :cond_1f

    .line 1545
    :cond_1e
    :goto_9
    add-int/lit8 v11, v11, -0x1

    goto :goto_8

    .line 1557
    :cond_1f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move/from16 v0, v16

    if-lt v0, v2, :cond_1e

    .line 1561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    iget v3, v12, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    int-to-float v3, v3

    move/from16 v0, v28

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    iget v3, v12, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    int-to-float v3, v3

    move/from16 v0, v26

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1565
    iget-object v2, v12, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$DateLabel;->label:Ljava/lang/String;

    move/from16 v0, v24

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int v4, v28, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_9

    .line 1568
    .end local v11    # "i":I
    .end local v12    # "label":Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$DateLabel;
    .end local v13    # "lastLeft":I
    .end local v16    # "left":I
    .end local v24    # "x":I
    .end local v26    # "ybottom":I
    .end local v28    # "ytop":I
    :cond_20
    return-void
.end method

.method finishCurLevelPath(IIIILandroid/graphics/Path;ILandroid/graphics/Path;)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "levelh"    # I
    .param p3, "startX"    # I
    .param p4, "y"    # I
    .param p5, "curLevelPath"    # Landroid/graphics/Path;
    .param p6, "lastX"    # I
    .param p7, "lastPath"    # Landroid/graphics/Path;

    .prologue
    .line 769
    if-eqz p5, :cond_2

    .line 770
    if-ltz p6, :cond_1

    if-ge p6, p1, :cond_1

    .line 771
    if-eqz p7, :cond_0

    .line 772
    int-to-float v0, p1

    int-to-float v1, p4

    invoke-virtual {p7, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 774
    :cond_0
    int-to-float v0, p1

    int-to-float v1, p4

    invoke-virtual {p5, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 776
    :cond_1
    int-to-float v0, p1

    iget v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v1, p2

    int-to-float v1, v1

    invoke-virtual {p5, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 777
    int-to-float v0, p3

    iget v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v1, p2

    int-to-float v1, v1

    invoke-virtual {p5, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 778
    invoke-virtual {p5}, Landroid/graphics/Path;->close()V

    .line 780
    :cond_2
    return-void
.end method

.method finishPaths(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V
    .locals 8
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "levelh"    # I
    .param p4, "startX"    # I
    .param p5, "y"    # I
    .param p6, "curLevelPath"    # Landroid/graphics/Path;
    .param p7, "lastX"    # I
    .param p8, "lastCharging"    # Z
    .param p9, "lastScreenOn"    # Z
    .param p10, "lastGpsOn"    # Z
    .param p11, "lastWifiRunning"    # Z
    .param p12, "lastCpuRunning"    # Z
    .param p13, "lastPath"    # Landroid/graphics/Path;

    .prologue
    .line 746
    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move v6, p7

    move-object/from16 v7, p13

    invoke-virtual/range {v0 .. v7}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->finishCurLevelPath(IIIILandroid/graphics/Path;ILandroid/graphics/Path;)V

    .line 747
    if-eqz p8, :cond_0

    .line 748
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v1, p1

    iget v2, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 750
    :cond_0
    if-eqz p9, :cond_1

    .line 751
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    int-to-float v1, p1

    iget v2, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 753
    :cond_1
    if-eqz p10, :cond_2

    .line 754
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    int-to-float v1, p1

    iget v2, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 756
    :cond_2
    if-eqz p11, :cond_3

    .line 757
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    int-to-float v1, p1

    iget v2, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 759
    :cond_3
    if-eqz p12, :cond_4

    .line 760
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    int-to-float v1, p1

    iget v2, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 762
    :cond_4
    iget-boolean v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v0, :cond_5

    .line 763
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-virtual {v0, p1}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$ChartData;->finish(I)V

    .line 765
    :cond_5
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1343
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1345
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->getWidth()I

    move-result v1

    .line 1346
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->getHeight()I

    move-result v0

    .line 1352
    .local v0, "height":I
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->drawChart(Landroid/graphics/Canvas;II)V

    .line 1353
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 725
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelStringWidth:I

    .line 726
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mMinPercentLabelString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mMinPercentLabelStringWidth:I

    .line 727
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDrainString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDrainStringWidth:I

    .line 728
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargeLabelStringWidth:I

    .line 729
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargeDurationString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargeDurationStringWidth:I

    .line 730
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    .line 731
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    .line 732
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    .line 733
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextDescent:I

    .line 734
    iget v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextDescent:I

    iget v2, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    sub-int v0, v1, v2

    .line 735
    .local v0, "headerTextHeight":I
    mul-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHeaderHeight:I

    .line 736
    iget-boolean v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockBatterySupported:Z

    if-eqz v1, :cond_0

    .line 737
    iget v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHeaderHeight:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHeaderHeight:I

    .line 739
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v1, p1}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->getDefaultSize(II)I

    move-result v1

    iget v2, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChartMinHeight:I

    iget v3, p0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHeaderHeight:I

    add-int/2addr v2, v3

    invoke-static {v2, p2}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->getDefaultSize(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->setMeasuredDimension(II)V

    .line 741
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 76
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 794
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 798
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    move/from16 v0, p1

    if-ne v4, v0, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    move/from16 v0, p2

    if-ne v4, v0, :cond_1

    .line 1321
    :cond_0
    :goto_0
    return-void

    .line 802
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    if-eqz v4, :cond_0

    .line 808
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    .line 809
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    .line 810
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBitmap:Landroid/graphics/Bitmap;

    .line 811
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mCanvas:Landroid/graphics/Canvas;

    .line 813
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int v62, v4, v6

    .line 814
    .local v62, "textHeight":I
    mul-int/lit8 v4, v62, 0xa

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChartMinHeight:I

    add-int/2addr v4, v6

    move/from16 v0, p2

    if-le v0, v4, :cond_12

    .line 815
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    .line 816
    mul-int/lit8 v4, v62, 0xf

    move/from16 v0, p2

    if-le v0, v4, :cond_11

    .line 818
    div-int/lit8 v4, v62, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    .line 827
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    if-gtz v4, :cond_2

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    .line 829
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHeaderHeight:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    .line 830
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelStringWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    .line 831
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    .line 832
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    sub-int v55, v4, v6

    .line 834
    .local v55, "levelWidth":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 835
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 836
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 837
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 838
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 839
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 840
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 841
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 842
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 843
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 845
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    add-int v42, v62, v4

    .line 847
    .local v42, "fullBarOffset":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v4, :cond_16

    .line 848
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    .line 849
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    add-int v4, v4, v42

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    .line 850
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    add-int v4, v4, v42

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    .line 851
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    add-int v4, v4, v42

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    .line 852
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v4, :cond_13

    move/from16 v4, v42

    :goto_2
    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    .line 853
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v4, :cond_14

    move/from16 v4, v42

    :goto_3
    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    .line 854
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v6, :cond_15

    .end local v42    # "fullBarOffset":I
    :goto_4
    add-int v4, v4, v42

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    .line 856
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v4, :cond_3

    .line 857
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$ChartData;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    .line 868
    :cond_3
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 869
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 870
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 871
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 872
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 873
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockBatterySupported:Z

    if-eqz v4, :cond_4

    .line 874
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockBatLevelPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 876
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 877
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 878
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 879
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 880
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 882
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 883
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 885
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockBatterySupported:Z

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockStartWallTime:J

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v70

    .line 887
    .local v70, "walltimeStart":J
    :goto_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v18, v0

    cmp-long v4, v18, v70

    if-lez v4, :cond_18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v18, v0

    sub-long v64, v18, v70

    .line 888
    .local v64, "w1":J
    :goto_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v18, v0

    cmp-long v4, v18, v70

    if-lez v4, :cond_19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v18, v0

    sub-long v66, v18, v70

    .line 889
    .local v66, "w2":J
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockBatterySupported:Z

    if-eqz v4, :cond_1a

    invoke-static/range {v64 .. v67}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v68

    .line 893
    .local v68, "walltimeChange":J
    :goto_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v38, v0

    .line 894
    .local v38, "curWalltime":J
    const-wide/16 v50, 0x0

    .line 896
    .local v50, "lastRealtime":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatLow:I

    move/from16 v28, v0

    .line 897
    .local v28, "batLow":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatHigh:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatLow:I

    sub-int v27, v4, v6

    .line 899
    .local v27, "batChange":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    sub-int v4, p2, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    sub-int v7, v4, v6

    .line 900
    .local v7, "levelh":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    .line 902
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    .local v5, "x":I
    const/16 v75, 0x0

    .local v75, "y":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    .local v8, "startX":I
    const/4 v11, -0x1

    .local v11, "lastX":I
    const/4 v9, -0x1

    .line 903
    .local v9, "lastY":I
    const/16 v45, 0x0

    .line 904
    .local v45, "i":I
    const/4 v10, 0x0

    .line 905
    .local v10, "curLevelPath":Landroid/graphics/Path;
    const/16 v17, 0x0

    .line 906
    .local v17, "lastLinePath":Landroid/graphics/Path;
    const/4 v12, 0x0

    .local v12, "lastCharging":Z
    const/4 v13, 0x0

    .local v13, "lastScreenOn":Z
    const/4 v14, 0x0

    .line 907
    .local v14, "lastGpsOn":Z
    const/4 v15, 0x0

    .local v15, "lastWifiRunning":Z
    const/16 v49, 0x0

    .local v49, "lastWifiSupplRunning":Z
    const/16 v16, 0x0

    .line 908
    .local v16, "lastCpuRunning":Z
    const/16 v54, 0x0

    .line 909
    .local v54, "lastWifiSupplState":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mNumHist:I

    move/from16 v26, v0

    .line 910
    .local v26, "N":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v20, v0

    cmp-long v4, v18, v20

    if-lez v4, :cond_31

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v4}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 911
    new-instance v58, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v58 .. v58}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .local v58, "rec":Landroid/os/BatteryStats$HistoryItem;
    move/from16 v74, v5

    .line 912
    .end local v5    # "x":I
    .end local v12    # "lastCharging":Z
    .end local v13    # "lastScreenOn":Z
    .end local v14    # "lastGpsOn":Z
    .local v74, "x":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, v58

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v4

    if-eqz v4, :cond_30

    move/from16 v0, v45

    move/from16 v1, v26

    if-ge v0, v1, :cond_30

    .line 913
    invoke-virtual/range {v58 .. v58}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 914
    move-object/from16 v0, v58

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v18, v0

    sub-long v18, v18, v50

    add-long v38, v38, v18

    .line 915
    move-object/from16 v0, v58

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v50, v0

    .line 916
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    sub-long v18, v38, v70

    move/from16 v0, v55

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    div-long v18, v18, v68

    move-wide/from16 v0, v18

    long-to-int v6, v0

    add-int v5, v4, v6

    .line 917
    .end local v74    # "x":I
    .restart local v5    # "x":I
    if-gez v5, :cond_5

    .line 918
    const/4 v5, 0x0

    .line 930
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    move-object/from16 v0, v58

    iget-byte v6, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    sub-int v6, v6, v28

    add-int/lit8 v18, v7, -0x1

    mul-int v6, v6, v18

    div-int v6, v6, v27

    sub-int v75, v4, v6

    .line 932
    if-eq v11, v5, :cond_9

    .line 934
    move/from16 v0, v75

    if-eq v9, v0, :cond_9

    .line 937
    move-object/from16 v0, v58

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v63, v0

    .line 938
    .local v63, "value":B
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalLevel:I

    move/from16 v0, v63

    if-gt v0, v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    move-object/from16 v56, v0

    .line 942
    .local v56, "path":Landroid/graphics/Path;
    :goto_b
    move-object/from16 v0, v56

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_1d

    .line 943
    if-eqz v17, :cond_6

    .line 944
    int-to-float v4, v5

    move/from16 v0, v75

    int-to-float v6, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 946
    :cond_6
    if-eqz v56, :cond_7

    .line 947
    int-to-float v4, v5

    move/from16 v0, v75

    int-to-float v6, v0

    move-object/from16 v0, v56

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 949
    :cond_7
    move-object/from16 v17, v56

    .line 954
    :cond_8
    :goto_c
    if-nez v10, :cond_1e

    .line 955
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 956
    int-to-float v4, v5

    move/from16 v0, v75

    int-to-float v6, v0

    invoke-virtual {v10, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 957
    move v8, v5

    .line 961
    :goto_d
    move v11, v5

    .line 962
    move/from16 v9, v75

    .line 966
    .end local v56    # "path":Landroid/graphics/Path;
    .end local v63    # "value":B
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v4, :cond_10

    .line 967
    move-object/from16 v0, v58

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x80000

    and-int/2addr v4, v6

    if-eqz v4, :cond_1f

    const/16 v35, 0x1

    .line 969
    .local v35, "charging":Z
    :goto_e
    move/from16 v0, v35

    if-eq v0, v12, :cond_a

    .line 970
    if-eqz v35, :cond_20

    .line 971
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    move/from16 v18, v0

    sub-int v18, p2, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 975
    :goto_f
    move/from16 v12, v35

    .line 978
    :cond_a
    move-object/from16 v0, v58

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x100000

    and-int/2addr v4, v6

    if-eqz v4, :cond_21

    const/16 v59, 0x1

    .line 980
    .local v59, "screenOn":Z
    :goto_10
    move/from16 v0, v59

    if-eq v0, v13, :cond_b

    .line 981
    if-eqz v59, :cond_22

    .line 982
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    move/from16 v18, v0

    sub-int v18, p2, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 986
    :goto_11
    move/from16 v13, v59

    .line 989
    :cond_b
    move-object/from16 v0, v58

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x20000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_23

    const/16 v44, 0x1

    .line 991
    .local v44, "gpsOn":Z
    :goto_12
    move/from16 v0, v44

    if-eq v0, v14, :cond_c

    .line 992
    if-eqz v44, :cond_24

    .line 993
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move/from16 v18, v0

    sub-int v18, p2, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 997
    :goto_13
    move/from16 v14, v44

    .line 1000
    :cond_c
    move-object/from16 v0, v58

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/lit8 v4, v4, 0xf

    shr-int/lit8 v73, v4, 0x0

    .line 1004
    .local v73, "wifiSupplState":I
    move/from16 v0, v54

    move/from16 v1, v73

    if-eq v0, v1, :cond_25

    .line 1005
    move/from16 v54, v73

    .line 1006
    packed-switch v73, :pswitch_data_0

    .line 1016
    :pswitch_0
    const/16 v49, 0x1

    move/from16 v72, v49

    .line 1022
    :goto_14
    move-object/from16 v0, v58

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x1c000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_d

    .line 1025
    const/16 v72, 0x1

    .line 1027
    :cond_d
    move/from16 v0, v72

    if-eq v0, v15, :cond_e

    .line 1028
    if-eqz v72, :cond_26

    .line 1029
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move/from16 v18, v0

    sub-int v18, p2, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1033
    :goto_15
    move/from16 v15, v72

    .line 1036
    :cond_e
    move-object/from16 v0, v58

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, -0x80000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_27

    const/16 v36, 0x1

    .line 1038
    .local v36, "cpuRunning":Z
    :goto_16
    move/from16 v0, v36

    move/from16 v1, v16

    if-eq v0, v1, :cond_f

    .line 1039
    if-eqz v36, :cond_28

    .line 1040
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    move/from16 v18, v0

    sub-int v18, p2, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1044
    :goto_17
    move/from16 v16, v36

    .line 1047
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v4, :cond_10

    .line 1049
    move-object/from16 v0, v58

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v4, v4, 0x1c0

    shr-int/lit8 v4, v4, 0x6

    const/4 v6, 0x3

    if-ne v4, v6, :cond_29

    .line 1052
    const/16 v29, 0x0

    .line 1060
    .local v29, "bin":I
    :goto_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$ChartData;

    move/from16 v0, v29

    invoke-virtual {v4, v5, v0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$ChartData;->addTick(II)V

    .line 1091
    .end local v29    # "bin":I
    .end local v35    # "charging":Z
    .end local v36    # "cpuRunning":Z
    .end local v44    # "gpsOn":Z
    .end local v59    # "screenOn":Z
    .end local v73    # "wifiSupplState":I
    :cond_10
    :goto_19
    add-int/lit8 v45, v45, 0x1

    move/from16 v74, v5

    .end local v5    # "x":I
    .restart local v74    # "x":I
    goto/16 :goto_a

    .line 821
    .end local v7    # "levelh":I
    .end local v8    # "startX":I
    .end local v9    # "lastY":I
    .end local v10    # "curLevelPath":Landroid/graphics/Path;
    .end local v11    # "lastX":I
    .end local v15    # "lastWifiRunning":Z
    .end local v16    # "lastCpuRunning":Z
    .end local v17    # "lastLinePath":Landroid/graphics/Path;
    .end local v26    # "N":I
    .end local v27    # "batChange":I
    .end local v28    # "batLow":I
    .end local v38    # "curWalltime":J
    .end local v45    # "i":I
    .end local v49    # "lastWifiSupplRunning":Z
    .end local v50    # "lastRealtime":J
    .end local v54    # "lastWifiSupplState":I
    .end local v55    # "levelWidth":I
    .end local v58    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .end local v64    # "w1":J
    .end local v66    # "w2":J
    .end local v68    # "walltimeChange":J
    .end local v70    # "walltimeStart":J
    .end local v74    # "x":I
    .end local v75    # "y":I
    :cond_11
    div-int/lit8 v4, v62, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    goto/16 :goto_1

    .line 824
    :cond_12
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    .line 825
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    goto/16 :goto_1

    .line 852
    .restart local v42    # "fullBarOffset":I
    .restart local v55    # "levelWidth":I
    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 853
    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 854
    :cond_15
    const/16 v42, 0x0

    goto/16 :goto_4

    .line 860
    :cond_16
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    .line 862
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v4, v4, 0x4

    add-int v4, v4, v42

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    .line 863
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v4, :cond_3

    .line 864
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$ChartData;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    goto/16 :goto_5

    .line 885
    .end local v42    # "fullBarOffset":I
    :cond_17
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v70, v0

    goto/16 :goto_6

    .line 887
    .restart local v70    # "walltimeStart":J
    :cond_18
    const-wide/16 v64, 0x1

    goto/16 :goto_7

    .line 888
    .restart local v64    # "w1":J
    :cond_19
    const-wide/16 v66, 0x1

    goto/16 :goto_8

    .restart local v66    # "w2":J
    :cond_1a
    move-wide/from16 v68, v64

    .line 889
    goto/16 :goto_9

    .line 939
    .restart local v5    # "x":I
    .restart local v7    # "levelh":I
    .restart local v8    # "startX":I
    .restart local v9    # "lastY":I
    .restart local v10    # "curLevelPath":Landroid/graphics/Path;
    .restart local v11    # "lastX":I
    .restart local v15    # "lastWifiRunning":Z
    .restart local v16    # "lastCpuRunning":Z
    .restart local v17    # "lastLinePath":Landroid/graphics/Path;
    .restart local v26    # "N":I
    .restart local v27    # "batChange":I
    .restart local v28    # "batLow":I
    .restart local v38    # "curWalltime":J
    .restart local v45    # "i":I
    .restart local v49    # "lastWifiSupplRunning":Z
    .restart local v50    # "lastRealtime":J
    .restart local v54    # "lastWifiSupplState":I
    .restart local v58    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v63    # "value":B
    .restart local v68    # "walltimeChange":J
    .restart local v75    # "y":I
    :cond_1b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnLevel:I

    move/from16 v0, v63

    if-gt v0, v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    move-object/from16 v56, v0

    .restart local v56    # "path":Landroid/graphics/Path;
    goto/16 :goto_b

    .line 940
    .end local v56    # "path":Landroid/graphics/Path;
    :cond_1c
    const/16 v56, 0x0

    .restart local v56    # "path":Landroid/graphics/Path;
    goto/16 :goto_b

    .line 950
    :cond_1d
    if-eqz v56, :cond_8

    .line 951
    int-to-float v4, v5

    move/from16 v0, v75

    int-to-float v6, v0

    move-object/from16 v0, v56

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_c

    .line 959
    :cond_1e
    int-to-float v4, v5

    move/from16 v0, v75

    int-to-float v6, v0

    invoke-virtual {v10, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_d

    .line 967
    .end local v56    # "path":Landroid/graphics/Path;
    .end local v63    # "value":B
    :cond_1f
    const/16 v35, 0x0

    goto/16 :goto_e

    .line 973
    .restart local v35    # "charging":Z
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    move/from16 v18, v0

    sub-int v18, p2, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_f

    .line 978
    :cond_21
    const/16 v59, 0x0

    goto/16 :goto_10

    .line 984
    .restart local v59    # "screenOn":Z
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    move/from16 v18, v0

    sub-int v18, p2, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_11

    .line 989
    :cond_23
    const/16 v44, 0x0

    goto/16 :goto_12

    .line 995
    .restart local v44    # "gpsOn":Z
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move/from16 v18, v0

    sub-int v18, p2, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_13

    .line 1013
    .restart local v73    # "wifiSupplState":I
    :pswitch_1
    const/16 v49, 0x0

    move/from16 v72, v49

    .line 1014
    .local v72, "wifiRunning":I
    goto/16 :goto_14

    .line 1020
    .end local v72    # "wifiRunning":I
    :cond_25
    move/from16 v72, v49

    .local v72, "wifiRunning":Z
    goto/16 :goto_14

    .line 1031
    .end local v72    # "wifiRunning":Z
    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move/from16 v18, v0

    sub-int v18, p2, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_15

    .line 1036
    :cond_27
    const/16 v36, 0x0

    goto/16 :goto_16

    .line 1042
    .restart local v36    # "cpuRunning":Z
    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    move/from16 v18, v0

    sub-int v18, p2, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_17

    .line 1053
    :cond_29
    move-object/from16 v0, v58

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x200000

    and-int/2addr v4, v6

    if-eqz v4, :cond_2a

    .line 1054
    const/16 v29, 0x1

    .restart local v29    # "bin":I
    goto/16 :goto_18

    .line 1056
    .end local v29    # "bin":I
    :cond_2a
    move-object/from16 v0, v58

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit8 v4, v4, 0x38

    shr-int/lit8 v29, v4, 0x3

    .line 1058
    .restart local v29    # "bin":I
    add-int/lit8 v29, v29, 0x2

    goto/16 :goto_18

    .line 1065
    .end local v5    # "x":I
    .end local v29    # "bin":I
    .end local v35    # "charging":Z
    .end local v36    # "cpuRunning":Z
    .end local v44    # "gpsOn":Z
    .end local v59    # "screenOn":Z
    .end local v73    # "wifiSupplState":I
    .restart local v74    # "x":I
    :cond_2b
    move-wide/from16 v52, v38

    .line 1066
    .local v52, "lastWalltime":J
    move-object/from16 v0, v58

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x5

    if-eq v4, v6, :cond_2c

    move-object/from16 v0, v58

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x7

    if-ne v4, v6, :cond_2d

    .line 1068
    :cond_2c
    move-object/from16 v0, v58

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v20, v0

    cmp-long v4, v18, v20

    if-ltz v4, :cond_2f

    .line 1069
    move-object/from16 v0, v58

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v38, v0

    .line 1073
    :goto_1a
    move-object/from16 v0, v58

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v50, v0

    .line 1076
    :cond_2d
    move-object/from16 v0, v58

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x6

    if-eq v4, v6, :cond_52

    move-object/from16 v0, v58

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x5

    if-ne v4, v6, :cond_2e

    sub-long v18, v52, v38

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(J)J

    move-result-wide v18

    const-wide/32 v20, 0x36ee80

    cmp-long v4, v18, v20

    if-lez v4, :cond_52

    .line 1079
    :cond_2e
    if-eqz v10, :cond_52

    .line 1080
    add-int/lit8 v5, v74, 0x1

    move-object/from16 v4, p0

    move/from16 v6, p2

    invoke-virtual/range {v4 .. v17}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->finishPaths(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V

    .line 1083
    const/4 v9, -0x1

    move v11, v9

    .line 1084
    const/4 v10, 0x0

    .line 1085
    const/16 v17, 0x0

    .line 1086
    const/16 v16, 0x0

    move/from16 v14, v16

    .local v14, "lastGpsOn":I
    move/from16 v13, v16

    .local v13, "lastScreenOn":I
    move/from16 v12, v16

    .local v12, "lastCharging":I
    move/from16 v5, v74

    .end local v74    # "x":I
    .restart local v5    # "x":I
    goto/16 :goto_19

    .line 1071
    .end local v5    # "x":I
    .end local v12    # "lastCharging":I
    .end local v13    # "lastScreenOn":I
    .end local v14    # "lastGpsOn":I
    .restart local v74    # "x":I
    :cond_2f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v58

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    add-long v38, v18, v20

    goto :goto_1a

    .line 1093
    .end local v52    # "lastWalltime":J
    :cond_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v4}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    move/from16 v5, v74

    .line 1096
    .end local v58    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .end local v74    # "x":I
    .restart local v5    # "x":I
    :cond_31
    if-ltz v9, :cond_32

    if-gez v11, :cond_3a

    .line 1098
    :cond_32
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move v5, v11

    .line 1099
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryLevel:I

    sub-int v6, v6, v28

    add-int/lit8 v18, v7, -0x1

    mul-int v6, v6, v18

    div-int v6, v6, v27

    sub-int v9, v4, v6

    move/from16 v75, v9

    .line 1101
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryLevel:I

    int-to-byte v0, v4

    move/from16 v63, v0

    .line 1102
    .restart local v63    # "value":B
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalLevel:I

    move/from16 v0, v63

    if-gt v0, v4, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    move-object/from16 v56, v0

    .line 1105
    .restart local v56    # "path":Landroid/graphics/Path;
    :goto_1b
    if-eqz v56, :cond_33

    .line 1106
    int-to-float v4, v5

    move/from16 v0, v75

    int-to-float v6, v0

    move-object/from16 v0, v56

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1107
    move-object/from16 v17, v56

    .line 1109
    :cond_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move/from16 v0, v75

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1110
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 1111
    move/from16 v5, p1

    .end local v56    # "path":Landroid/graphics/Path;
    .end local v63    # "value":B
    :cond_34
    :goto_1c
    move-object/from16 v4, p0

    move/from16 v6, p2

    .line 1120
    invoke-virtual/range {v4 .. v17}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->finishPaths(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V

    .line 1123
    move/from16 v48, v5

    .line 1125
    .local v48, "lastBatX":I
    move/from16 v0, p1

    if-ge v5, v0, :cond_35

    .line 1128
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    int-to-float v6, v5

    int-to-float v0, v9

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1129
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    rsub-int/lit8 v6, v28, 0x64

    add-int/lit8 v18, v7, -0x1

    mul-int v6, v6, v18

    div-int v6, v6, v27

    sub-int v43, v4, v6

    .line 1130
    .local v43, "fullY":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    rsub-int/lit8 v6, v28, 0x0

    add-int/lit8 v18, v7, -0x1

    mul-int v6, v6, v18

    div-int v6, v6, v27

    sub-int v37, v4, v6

    .line 1131
    .local v37, "emptyY":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDischarging:Z

    if-eqz v4, :cond_3b

    .line 1132
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    int-to-float v6, v6

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1137
    :goto_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1138
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 1142
    .end local v37    # "emptyY":I
    .end local v43    # "fullY":I
    :cond_35
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockBatterySupported:Z

    if-eqz v4, :cond_48

    .line 1143
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    .line 1144
    const/16 v75, 0x0

    .line 1145
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    .line 1146
    const/4 v11, -0x1

    .line 1147
    const/4 v9, -0x1

    .line 1148
    const/16 v45, 0x0

    .line 1149
    const/4 v10, 0x0

    .line 1150
    const/16 v17, 0x0

    .line 1151
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockStartWallTime:J

    move-wide/from16 v38, v0

    .line 1152
    const-wide/16 v50, 0x0

    .line 1153
    const/4 v12, 0x0

    .line 1154
    .local v12, "lastCharging":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockNumHist:I

    move/from16 v26, v0

    .line 1155
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockEndDataWallTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockStartWallTime:J

    move-wide/from16 v20, v0

    cmp-long v4, v18, v20

    if-lez v4, :cond_43

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockStats:Landroid/os/BatteryStats;

    invoke-virtual {v4}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 1157
    new-instance v58, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v58 .. v58}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 1158
    .end local v12    # "lastCharging":Z
    .restart local v58    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :goto_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockStats:Landroid/os/BatteryStats;

    move-object/from16 v0, v58

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v4

    if-eqz v4, :cond_42

    move/from16 v0, v45

    move/from16 v1, v26

    if-ge v0, v1, :cond_42

    .line 1159
    invoke-virtual/range {v58 .. v58}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1160
    move-object/from16 v0, v58

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v18, v0

    sub-long v18, v18, v50

    add-long v38, v38, v18

    .line 1161
    move-object/from16 v0, v58

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v50, v0

    .line 1162
    sub-long v18, v38, v70

    move/from16 v0, v55

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    div-long v18, v18, v68

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v57, v0

    .line 1163
    .local v57, "pos":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    add-int v5, v4, v57

    .line 1164
    if-gez v5, :cond_36

    .line 1165
    const/4 v5, 0x0

    .line 1177
    :cond_36
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    move-object/from16 v0, v58

    iget-byte v6, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    sub-int v6, v6, v28

    add-int/lit8 v18, v7, -0x1

    mul-int v6, v6, v18

    div-int v6, v6, v27

    sub-int v75, v4, v6

    .line 1179
    if-eq v11, v5, :cond_37

    .line 1181
    move/from16 v0, v75

    if-eq v9, v0, :cond_37

    .line 1182
    if-nez v10, :cond_3c

    .line 1183
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockBatLevelPath:Landroid/graphics/Path;

    .line 1184
    int-to-float v4, v5

    move/from16 v0, v75

    int-to-float v6, v0

    invoke-virtual {v10, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1185
    move v8, v5

    .line 1189
    :goto_1f
    move v11, v5

    .line 1190
    move/from16 v9, v75

    .line 1220
    .end local v57    # "pos":I
    :cond_37
    :goto_20
    add-int/lit8 v45, v45, 0x1

    goto :goto_1e

    .line 1103
    .end local v48    # "lastBatX":I
    .end local v58    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v63    # "value":B
    :cond_38
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnLevel:I

    move/from16 v0, v63

    if-gt v0, v4, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    move-object/from16 v56, v0

    .restart local v56    # "path":Landroid/graphics/Path;
    goto/16 :goto_1b

    .line 1104
    .end local v56    # "path":Landroid/graphics/Path;
    :cond_39
    const/16 v56, 0x0

    .restart local v56    # "path":Landroid/graphics/Path;
    goto/16 :goto_1b

    .line 1114
    .end local v56    # "path":Landroid/graphics/Path;
    .end local v63    # "value":B
    :cond_3a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    move-wide/from16 v18, v0

    sub-long v18, v18, v70

    move/from16 v0, v55

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    div-long v18, v18, v68

    move-wide/from16 v0, v18

    long-to-int v6, v0

    add-int v5, v4, v6

    .line 1115
    if-gez v5, :cond_34

    .line 1116
    const/4 v5, 0x0

    goto/16 :goto_1c

    .line 1134
    .restart local v37    # "emptyY":I
    .restart local v43    # "fullY":I
    .restart local v48    # "lastBatX":I
    :cond_3b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    int-to-float v6, v6

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1135
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    int-to-float v6, v6

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_1d

    .line 1187
    .end local v37    # "emptyY":I
    .end local v43    # "fullY":I
    .restart local v57    # "pos":I
    .restart local v58    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_3c
    int-to-float v4, v5

    move/from16 v0, v75

    int-to-float v6, v0

    invoke-virtual {v10, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1f

    .line 1195
    .end local v57    # "pos":I
    :cond_3d
    move-wide/from16 v52, v38

    .line 1196
    .restart local v52    # "lastWalltime":J
    move-object/from16 v0, v58

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x5

    if-eq v4, v6, :cond_3e

    move-object/from16 v0, v58

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x7

    if-ne v4, v6, :cond_3f

    .line 1198
    :cond_3e
    move-object/from16 v0, v58

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockStartWallTime:J

    move-wide/from16 v20, v0

    cmp-long v4, v18, v20

    if-ltz v4, :cond_41

    .line 1199
    move-object/from16 v0, v58

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v38, v0

    .line 1203
    :goto_21
    move-object/from16 v0, v58

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v50, v0

    .line 1206
    :cond_3f
    move-object/from16 v0, v58

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x6

    if-eq v4, v6, :cond_37

    move-object/from16 v0, v58

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x5

    if-ne v4, v6, :cond_40

    sub-long v18, v52, v38

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(J)J

    move-result-wide v18

    const-wide/32 v20, 0x36ee80

    cmp-long v4, v18, v20

    if-lez v4, :cond_37

    .line 1209
    :cond_40
    if-eqz v10, :cond_37

    .line 1210
    add-int/lit8 v19, v5, 0x1

    move-object/from16 v18, p0

    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v9

    move-object/from16 v23, v10

    move/from16 v24, v11

    move-object/from16 v25, v17

    invoke-virtual/range {v18 .. v25}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->finishCurLevelPath(IIIILandroid/graphics/Path;ILandroid/graphics/Path;)V

    .line 1212
    const/4 v9, -0x1

    move v11, v9

    .line 1213
    const/4 v10, 0x0

    .line 1214
    const/16 v17, 0x0

    .line 1215
    const/16 v16, 0x0

    move/from16 v14, v16

    .restart local v14    # "lastGpsOn":I
    move/from16 v13, v16

    .restart local v13    # "lastScreenOn":I
    move/from16 v12, v16

    .local v12, "lastCharging":I
    goto/16 :goto_20

    .line 1201
    .end local v12    # "lastCharging":I
    .end local v13    # "lastScreenOn":I
    .end local v14    # "lastGpsOn":I
    :cond_41
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockStartWallTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v58

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockHistStart:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    add-long v38, v18, v20

    goto :goto_21

    .line 1222
    .end local v52    # "lastWalltime":J
    :cond_42
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockStats:Landroid/os/BatteryStats;

    invoke-virtual {v4}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 1225
    .end local v58    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_43
    if-ltz v9, :cond_44

    if-gez v11, :cond_50

    .line 1227
    :cond_44
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move v5, v11

    .line 1228
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockBatteryLevel:I

    sub-int v6, v6, v28

    add-int/lit8 v18, v7, -0x1

    mul-int v6, v6, v18

    div-int v6, v6, v27

    sub-int v9, v4, v6

    move/from16 v75, v9

    .line 1229
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockBatLevelPath:Landroid/graphics/Path;

    int-to-float v6, v5

    move/from16 v0, v75

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1230
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockBatLevelPath:Landroid/graphics/Path;

    .line 1231
    move/from16 v5, p1

    .line 1241
    :cond_45
    :goto_22
    move/from16 v0, v48

    if-ge v5, v0, :cond_47

    .line 1242
    if-eqz v10, :cond_46

    .line 1243
    int-to-float v4, v5

    int-to-float v6, v9

    invoke-virtual {v10, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1245
    :cond_46
    move/from16 v5, v48

    :cond_47
    move-object/from16 v18, p0

    move/from16 v19, v5

    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v9

    move-object/from16 v23, v10

    move/from16 v24, v11

    move-object/from16 v25, v17

    .line 1248
    invoke-virtual/range {v18 .. v25}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->finishCurLevelPath(IIIILandroid/graphics/Path;ILandroid/graphics/Path;)V

    .line 1252
    :cond_48
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v4, v18, v20

    if-lez v4, :cond_4f

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v20, v0

    cmp-long v4, v18, v20

    if-lez v4, :cond_4f

    .line 1254
    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->is24Hour()Z

    move-result v46

    .line 1255
    .local v46, "is24hr":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v34

    .line 1256
    .local v34, "calStart":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1257
    const/16 v4, 0xe

    const/4 v6, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1258
    const/16 v4, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1259
    const/16 v4, 0xc

    const/4 v6, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1260
    invoke-virtual/range {v34 .. v34}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v60

    .line 1261
    .local v60, "startRoundTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v18, v0

    cmp-long v4, v60, v18

    if-gez v4, :cond_49

    .line 1262
    const/16 v4, 0xb

    const/16 v6, 0xb

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1263
    invoke-virtual/range {v34 .. v34}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v60

    .line 1265
    :cond_49
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v30

    .line 1266
    .local v30, "calEnd":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v30

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1267
    const/16 v4, 0xe

    const/4 v6, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1268
    const/16 v4, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1269
    const/16 v4, 0xc

    const/4 v6, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1270
    invoke-virtual/range {v30 .. v30}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v40

    .line 1271
    .local v40, "endRoundTime":J
    cmp-long v4, v60, v40

    if-gez v4, :cond_4b

    .line 1272
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v46

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->addTimeLabel(Ljava/util/Calendar;IIZ)V

    .line 1273
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v31

    .line 1274
    .local v31, "calMid":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    const-wide/16 v22, 0x2

    div-long v20, v20, v22

    add-long v18, v18, v20

    move-object/from16 v0, v31

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1275
    const/16 v4, 0xe

    const/4 v6, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1276
    const/16 v4, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1277
    const/16 v4, 0xc

    const/4 v6, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1278
    invoke-virtual/range {v31 .. v31}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v32

    .line 1279
    .local v32, "calMidMillis":J
    cmp-long v4, v32, v60

    if-lez v4, :cond_4a

    cmp-long v4, v32, v40

    if-gez v4, :cond_4a

    .line 1280
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v46

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->addTimeLabel(Ljava/util/Calendar;IIZ)V

    .line 1282
    :cond_4a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v46

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->addTimeLabel(Ljava/util/Calendar;IIZ)V

    .line 1286
    .end local v31    # "calMid":Ljava/util/Calendar;
    .end local v32    # "calMidMillis":J
    :cond_4b
    const/4 v4, 0x6

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x6

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v4, v6, :cond_4c

    const/4 v4, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-eq v4, v6, :cond_4f

    .line 1288
    :cond_4c
    invoke-direct/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->isDayFirst()Z

    move-result v47

    .line 1289
    .local v47, "isDayFirst":Z
    const/16 v4, 0xb

    const/4 v6, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1290
    invoke-virtual/range {v34 .. v34}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v60

    .line 1291
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v18, v0

    cmp-long v4, v60, v18

    if-gez v4, :cond_4d

    .line 1292
    const/4 v4, 0x6

    const/4 v6, 0x6

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1293
    invoke-virtual/range {v34 .. v34}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v60

    .line 1295
    :cond_4d
    const/16 v4, 0xb

    const/4 v6, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1296
    invoke-virtual/range {v30 .. v30}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v40

    .line 1297
    cmp-long v4, v60, v40

    if-gez v4, :cond_4e

    .line 1298
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v47

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->addDateLabel(Ljava/util/Calendar;IIZ)V

    .line 1299
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v31

    .line 1300
    .restart local v31    # "calMid":Ljava/util/Calendar;
    sub-long v18, v40, v60

    const-wide/16 v20, 0x2

    div-long v18, v18, v20

    add-long v18, v18, v60

    move-object/from16 v0, v31

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1301
    const/16 v4, 0xb

    const/4 v6, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1302
    invoke-virtual/range {v31 .. v31}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v32

    .line 1303
    .restart local v32    # "calMidMillis":J
    cmp-long v4, v32, v60

    if-lez v4, :cond_4e

    cmp-long v4, v32, v40

    if-gez v4, :cond_4e

    .line 1304
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v47

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->addDateLabel(Ljava/util/Calendar;IIZ)V

    .line 1307
    .end local v31    # "calMid":Ljava/util/Calendar;
    .end local v32    # "calMidMillis":J
    :cond_4e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v47

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->addDateLabel(Ljava/util/Calendar;IIZ)V

    .line 1311
    .end local v30    # "calEnd":Ljava/util/Calendar;
    .end local v34    # "calStart":Ljava/util/Calendar;
    .end local v40    # "endRoundTime":J
    .end local v46    # "is24hr":Z
    .end local v47    # "isDayFirst":Z
    .end local v60    # "startRoundTime":J
    :cond_4f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x2

    if-ge v4, v6, :cond_51

    .line 1314
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    .line 1316
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    goto/16 :goto_0

    .line 1234
    :cond_50
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockEndDataWallTime:J

    move-wide/from16 v18, v0

    sub-long v18, v18, v70

    move/from16 v0, v55

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    div-long v18, v18, v68

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v57, v0

    .line 1235
    .restart local v57    # "pos":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    add-int v5, v4, v57

    .line 1236
    if-gez v5, :cond_45

    .line 1237
    const/4 v5, 0x0

    goto/16 :goto_22

    .line 1318
    .end local v57    # "pos":I
    :cond_51
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    .line 1319
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    goto/16 :goto_0

    .end local v5    # "x":I
    .end local v48    # "lastBatX":I
    .restart local v52    # "lastWalltime":J
    .restart local v58    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v74    # "x":I
    :cond_52
    move/from16 v5, v74

    .end local v74    # "x":I
    .restart local v5    # "x":I
    goto/16 :goto_19

    .line 1006
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method setDockStats(Landroid/os/BatteryStats;Landroid/content/Intent;)V
    .locals 30
    .param p1, "dockStats"    # Landroid/os/BatteryStats;
    .param p2, "broadcast"    # Landroid/content/Intent;

    .prologue
    .line 637
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockStats:Landroid/os/BatteryStats;

    .line 638
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockBatterySupported:Z

    move/from16 v24, v0

    if-eqz v24, :cond_d

    if-eqz p1, :cond_d

    .line 639
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    mul-long v6, v24, v26

    .line 641
    .local v6, "elapsedRealtimeUs":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockStats:Landroid/os/BatteryStats;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v22

    .line 643
    .local v22, "uSecTime":J
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockStatsPeriod:J

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/cyanogenmod/settings/Utils;->getDockBatteryLevel(Landroid/content/Intent;)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockBatteryLevel:I

    .line 646
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockBatteryLevel:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/cyanogenmod/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v4

    .line 647
    .local v4, "batteryPercentString":Ljava/lang/String;
    const-wide/16 v18, 0x0

    .line 648
    .local v18, "remainingTimeUs":J
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockDischarging:Z

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v24, v0

    const-string v25, "dock_present"

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v24, v0

    const-string v25, "dock_plugged"

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 654
    .local v14, "plugType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v24, v0

    const-string v25, "dock_status"

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 656
    .local v20, "status":I
    if-eqz v14, :cond_9

    const/16 v24, 0x2

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    const/16 v24, 0x5

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    :cond_0
    const/4 v15, 0x1

    .line 659
    .local v15, "plugged":Z
    :goto_0
    if-nez v15, :cond_a

    .line 660
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockChargeLabelString:Ljava/lang/String;

    .line 672
    .end local v14    # "plugType":I
    .end local v15    # "plugged":Z
    .end local v20    # "status":I
    :goto_1
    const/16 v16, 0x0

    .line 673
    .local v16, "pos":I
    const/4 v8, 0x0

    .line 674
    .local v8, "lastInteresting":I
    const/4 v9, -0x1

    .line 675
    .local v9, "lastLevel":B
    const-wide/16 v12, 0x0

    .line 676
    .local v12, "lastWallTime":J
    const-wide/16 v10, 0x0

    .line 677
    .local v10, "lastRealtime":J
    const/4 v5, 0x1

    .line 678
    .local v5, "first":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v24

    if-eqz v24, :cond_c

    .line 679
    new-instance v17, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v17 .. v17}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 680
    .local v17, "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_1
    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 681
    add-int/lit8 v16, v16, 0x1

    .line 682
    if-eqz v5, :cond_2

    .line 683
    const/4 v5, 0x0

    .line 684
    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockHistStart:J

    .line 686
    :cond_2
    move-object/from16 v0, v17

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v24, v0

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    move-object/from16 v0, v17

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v24, v0

    const/16 v25, 0x7

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    .line 696
    :cond_3
    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v24, v0

    const-wide v26, 0x39ef8b000L

    add-long v26, v26, v12

    cmp-long v24, v24, v26

    if-gtz v24, :cond_4

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockHistStart:J

    move-wide/from16 v26, v0

    const-wide/32 v28, 0x493e0

    add-long v26, v26, v28

    cmp-long v24, v24, v26

    if-gez v24, :cond_5

    .line 698
    :cond_4
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockStartWallTime:J

    .line 700
    :cond_5
    move-object/from16 v0, v17

    iget-wide v12, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 701
    move-object/from16 v0, v17

    iget-wide v10, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 702
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockStartWallTime:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-nez v24, :cond_6

    .line 703
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockHistStart:J

    move-wide/from16 v24, v0

    sub-long v24, v10, v24

    sub-long v24, v12, v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockStartWallTime:J

    .line 706
    :cond_6
    invoke-virtual/range {v17 .. v17}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 707
    move-object/from16 v0, v17

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v0, v9, :cond_7

    const/16 v24, 0x1

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 708
    :cond_7
    move-object/from16 v0, v17

    iget-byte v9, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 710
    :cond_8
    move/from16 v8, v16

    .line 711
    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockHistDataEnd:J

    goto/16 :goto_2

    .line 656
    .end local v5    # "first":Z
    .end local v8    # "lastInteresting":I
    .end local v9    # "lastLevel":B
    .end local v10    # "lastRealtime":J
    .end local v12    # "lastWallTime":J
    .end local v16    # "pos":I
    .end local v17    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v14    # "plugType":I
    .restart local v20    # "status":I
    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 662
    .restart local v15    # "plugged":Z
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lcom/android/cyanogenmod/settings/Utils;->getDockBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v21

    .line 664
    .local v21, "statusLabel":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0909e5

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v4, v26, v27

    const/16 v27, 0x1

    aput-object v21, v26, v27

    invoke-virtual/range {v24 .. v26}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockChargeLabelString:Ljava/lang/String;

    goto/16 :goto_1

    .line 668
    .end local v14    # "plugType":I
    .end local v15    # "plugged":Z
    .end local v20    # "status":I
    .end local v21    # "statusLabel":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0903c2

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockChargeLabelString:Ljava/lang/String;

    goto/16 :goto_1

    .line 715
    .restart local v5    # "first":Z
    .restart local v8    # "lastInteresting":I
    .restart local v9    # "lastLevel":B
    .restart local v10    # "lastRealtime":J
    .restart local v12    # "lastWallTime":J
    .restart local v16    # "pos":I
    :cond_c
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockHistDataEnd:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x3e8

    div-long v26, v18, v26

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockHistEnd:J

    .line 716
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockHistDataEnd:J

    move-wide/from16 v24, v0

    add-long v24, v24, v12

    sub-long v24, v24, v10

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockEndDataWallTime:J

    .line 717
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockEndDataWallTime:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x3e8

    div-long v26, v18, v26

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockEndWallTime:J

    .line 718
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockNumHist:I

    .line 719
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockHistEnd:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockHistStart:J

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-gtz v24, :cond_d

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockHistStart:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x1

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDockHistEnd:J

    .line 721
    .end local v4    # "batteryPercentString":Ljava/lang/String;
    .end local v5    # "first":Z
    .end local v6    # "elapsedRealtimeUs":J
    .end local v8    # "lastInteresting":I
    .end local v9    # "lastLevel":B
    .end local v10    # "lastRealtime":J
    .end local v12    # "lastWallTime":J
    .end local v16    # "pos":I
    .end local v18    # "remainingTimeUs":J
    .end local v22    # "uSecTime":J
    :cond_d
    return-void
.end method

.method setStats(Landroid/os/BatteryStats;Landroid/content/Intent;)V
    .locals 38
    .param p1, "stats"    # Landroid/os/BatteryStats;
    .param p2, "broadcast"    # Landroid/content/Intent;

    .prologue
    .line 499
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    .line 500
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    .line 504
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    mul-long v12, v32, v34

    .line 506
    .local v12, "elapsedRealtimeUs":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v29, v0

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v12, v13, v1}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v30

    .line 508
    .local v30, "uSecTime":J
    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mStatsPeriod:J

    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f0909ef

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargingLabel:Ljava/lang/String;

    .line 510
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f0909f0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mScreenOnLabel:Ljava/lang/String;

    .line 511
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f0909f1

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mGpsOnLabel:Ljava/lang/String;

    .line 512
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f0909f2

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningLabel:Ljava/lang/String;

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f0909f3

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningLabel:Ljava/lang/String;

    .line 514
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const v32, 0x7f0909f4

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalLabel:Ljava/lang/String;

    .line 516
    const/16 v29, 0x64

    invoke-static/range {v29 .. v29}, Lcom/android/cyanogenmod/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelString:Ljava/lang/String;

    .line 517
    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Lcom/android/cyanogenmod/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mMinPercentLabelString:Ljava/lang/String;

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/cyanogenmod/settings/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryLevel:I

    .line 520
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryLevel:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/cyanogenmod/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v6

    .line 521
    .local v6, "batteryPercentString":Ljava/lang/String;
    const-wide/16 v24, 0x0

    .line 522
    .local v24, "remainingTimeUs":J
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDischarging:Z

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v29, v0

    const-string v32, "plugged"

    const/16 v33, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v29

    if-nez v29, :cond_9

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v12, v13}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v10

    .line 525
    .local v10, "drainTime":J
    const-wide/16 v32, 0x0

    cmp-long v29, v10, v32

    if-lez v29, :cond_8

    .line 526
    move-wide/from16 v24, v10

    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const-wide/16 v32, 0x3e8

    div-long v32, v10, v32

    move-object/from16 v0, v29

    move-wide/from16 v1, v32

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v28

    .line 529
    .local v28, "timeString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v32, 0x7f0909e4

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-object v6, v33, v34

    const/16 v34, 0x1

    aput-object v28, v33, v34

    move-object/from16 v0, v29

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    .line 563
    .end local v10    # "drainTime":J
    .end local v28    # "timeString":Ljava/lang/String;
    :goto_0
    const-string v29, ""

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDrainString:Ljava/lang/String;

    .line 564
    const-string v29, ""

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargeDurationString:Ljava/lang/String;

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 567
    const/16 v21, 0x0

    .line 568
    .local v21, "pos":I
    const/4 v14, 0x0

    .line 569
    .local v14, "lastInteresting":I
    const/4 v15, -0x1

    .line 570
    .local v15, "lastLevel":B
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatLow:I

    .line 571
    const/16 v29, 0x64

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatHigh:I

    .line 572
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 573
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    .line 574
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    .line 575
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    .line 576
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    .line 577
    const-wide/16 v18, 0x0

    .line 578
    .local v18, "lastWallTime":J
    const-wide/16 v16, 0x0

    .line 579
    .local v16, "lastRealtime":J
    const/4 v4, 0x0

    .line 580
    .local v4, "aggrStates":I
    const/4 v5, 0x0

    .line 581
    .local v5, "aggrStates2":I
    const/4 v7, 0x1

    .line 582
    .local v7, "first":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v29

    if-eqz v29, :cond_e

    .line 583
    new-instance v22, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v22 .. v22}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 584
    .local v22, "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_0
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v29

    if-eqz v29, :cond_e

    .line 585
    add-int/lit8 v21, v21, 0x1

    .line 586
    if-eqz v7, :cond_1

    .line 587
    const/4 v7, 0x0

    .line 588
    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    .line 590
    :cond_1
    move-object/from16 v0, v22

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v29, v0

    const/16 v32, 0x5

    move/from16 v0, v29

    move/from16 v1, v32

    if-eq v0, v1, :cond_2

    move-object/from16 v0, v22

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v29, v0

    const/16 v32, 0x7

    move/from16 v0, v29

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    .line 600
    :cond_2
    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v32, v0

    const-wide v34, 0x39ef8b000L

    add-long v34, v34, v18

    cmp-long v29, v32, v34

    if-gtz v29, :cond_3

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v34, v0

    const-wide/32 v36, 0x493e0

    add-long v34, v34, v36

    cmp-long v29, v32, v34

    if-gez v29, :cond_4

    .line 602
    :cond_3
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 604
    :cond_4
    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v18, v0

    .line 605
    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v16, v0

    .line 606
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v29, v32, v34

    if-nez v29, :cond_5

    .line 607
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v32, v0

    sub-long v32, v16, v32

    sub-long v32, v18, v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 610
    :cond_5
    invoke-virtual/range {v22 .. v22}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v29

    if-eqz v29, :cond_0

    .line 611
    move-object/from16 v0, v22

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v29, v0

    move/from16 v0, v29

    if-ne v0, v15, :cond_6

    const/16 v29, 0x1

    move/from16 v0, v21

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    .line 612
    :cond_6
    move-object/from16 v0, v22

    iget-byte v15, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 614
    :cond_7
    move/from16 v14, v21

    .line 615
    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHistDataEnd:J

    .line 616
    move-object/from16 v0, v22

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move/from16 v29, v0

    or-int v4, v4, v29

    .line 617
    move-object/from16 v0, v22

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move/from16 v29, v0

    or-int v5, v5, v29

    goto/16 :goto_1

    .line 532
    .end local v4    # "aggrStates":I
    .end local v5    # "aggrStates2":I
    .end local v7    # "first":Z
    .end local v14    # "lastInteresting":I
    .end local v15    # "lastLevel":B
    .end local v16    # "lastRealtime":J
    .end local v18    # "lastWallTime":J
    .end local v21    # "pos":I
    .end local v22    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v10    # "drainTime":J
    :cond_8
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    goto/16 :goto_0

    .line 535
    .end local v10    # "drainTime":J
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v12, v13}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v8

    .line 536
    .local v8, "chargeTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v32, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/cyanogenmod/settings/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v27

    .line 538
    .local v27, "statusLabel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v29, v0

    const-string v32, "status"

    const/16 v33, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    .line 540
    .local v26, "status":I
    const-wide/16 v32, 0x0

    cmp-long v29, v8, v32

    if-lez v29, :cond_d

    const/16 v29, 0x5

    move/from16 v0, v26

    move/from16 v1, v29

    if-eq v0, v1, :cond_d

    .line 541
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mDischarging:Z

    .line 542
    move-wide/from16 v24, v8

    .line 543
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    const-wide/16 v32, 0x3e8

    div-long v32, v8, v32

    move-object/from16 v0, v29

    move-wide/from16 v1, v32

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v28

    .line 545
    .restart local v28    # "timeString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    move-object/from16 v29, v0

    const-string v32, "plugged"

    const/16 v33, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 547
    .local v20, "plugType":I
    const/16 v29, 0x1

    move/from16 v0, v20

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    .line 548
    const v23, 0x7f0909e7

    .line 556
    .local v23, "resId":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v6, v32, v33

    const/16 v33, 0x1

    aput-object v28, v32, v33

    move-object/from16 v0, v29

    move/from16 v1, v23

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    goto/16 :goto_0

    .line 549
    .end local v23    # "resId":I
    :cond_a
    const/16 v29, 0x2

    move/from16 v0, v20

    move/from16 v1, v29

    if-ne v0, v1, :cond_b

    .line 550
    const v23, 0x7f0909e8

    .restart local v23    # "resId":I
    goto :goto_2

    .line 551
    .end local v23    # "resId":I
    :cond_b
    const/16 v29, 0x4

    move/from16 v0, v20

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    .line 552
    const v23, 0x7f0909e9

    .restart local v23    # "resId":I
    goto :goto_2

    .line 554
    .end local v23    # "resId":I
    :cond_c
    const v23, 0x7f0909e6

    .restart local v23    # "resId":I
    goto :goto_2

    .line 559
    .end local v20    # "plugType":I
    .end local v23    # "resId":I
    .end local v28    # "timeString":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v32, 0x7f0909e5

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-object v6, v33, v34

    const/16 v34, 0x1

    aput-object v27, v33, v34

    move-object/from16 v0, v29

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mChargeLabelString:Ljava/lang/String;

    goto/16 :goto_0

    .line 621
    .end local v8    # "chargeTime":J
    .end local v26    # "status":I
    .end local v27    # "statusLabel":Ljava/lang/String;
    .restart local v4    # "aggrStates":I
    .restart local v5    # "aggrStates2":I
    .restart local v7    # "first":Z
    .restart local v14    # "lastInteresting":I
    .restart local v15    # "lastLevel":B
    .restart local v16    # "lastRealtime":J
    .restart local v18    # "lastWallTime":J
    .restart local v21    # "pos":I
    :cond_e
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHistDataEnd:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x3e8

    div-long v34, v24, v34

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    .line 622
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHistDataEnd:J

    move-wide/from16 v32, v0

    add-long v32, v32, v18

    sub-long v32, v32, v16

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    .line 623
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x3e8

    div-long v34, v24, v34

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    .line 624
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mNumHist:I

    .line 625
    const/high16 v29, 0x20000000

    and-int v29, v29, v4

    if-eqz v29, :cond_12

    const/16 v29, 0x1

    :goto_3
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    .line 626
    const/high16 v29, 0x20000000

    and-int v29, v29, v5

    if-nez v29, :cond_f

    const/high16 v29, 0x1c000000

    and-int v29, v29, v4

    if-eqz v29, :cond_13

    :cond_f
    const/16 v29, 0x1

    :goto_4
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    .line 630
    invoke-virtual/range {p0 .. p0}, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/cyanogenmod/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v29

    if-nez v29, :cond_10

    .line 631
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    .line 633
    :cond_10
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v34, v0

    cmp-long v29, v32, v34

    if-gtz v29, :cond_11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x1

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/cyanogenmod/settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    .line 634
    :cond_11
    return-void

    .line 625
    :cond_12
    const/16 v29, 0x0

    goto :goto_3

    .line 626
    :cond_13
    const/16 v29, 0x0

    goto :goto_4
.end method
