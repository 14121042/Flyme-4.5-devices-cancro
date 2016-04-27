.class Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$2;
.super Ljava/lang/Object;
.source "DisplayGamma.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$2;->this$0:Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 155
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$2;->this$0:Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;

    # getter for: Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mSeekBars:[[Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$GammaSeekBar;
    invoke-static {v7}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->access$000(Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;)[[Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$GammaSeekBar;

    move-result-object v7

    array-length v7, v7

    if-ge v3, v7, :cond_1

    .line 156
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$2;->this$0:Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;

    invoke-virtual {v7}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 157
    .local v4, "prefs":Landroid/content/SharedPreferences;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "display_gamma_default_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "defaultKey":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-interface {v4, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 161
    .local v6, "value":Ljava/lang/String;
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "defaultColors":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "color":I
    :goto_1
    # getter for: Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->BAR_COLORS:[I
    invoke-static {}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->access$100()[I

    move-result-object v7

    array-length v7, v7

    if-ge v0, v7, :cond_0

    .line 164
    aget-object v7, v1, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 165
    .local v5, "val":I
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$2;->this$0:Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;

    # getter for: Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mSeekBars:[[Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$GammaSeekBar;
    invoke-static {v7}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->access$000(Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;)[[Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$GammaSeekBar;

    move-result-object v7

    aget-object v7, v7, v3

    aget-object v7, v7, v0

    invoke-virtual {v7, v5}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$GammaSeekBar;->setGamma(I)V

    .line 166
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$2;->this$0:Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;

    # getter for: Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mCurrentColors:[[I
    invoke-static {v7}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->access$200(Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;)[[I

    move-result-object v7

    aget-object v7, v7, v3

    aput v5, v7, v0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 168
    .end local v5    # "val":I
    :cond_0
    iget-object v7, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$2;->this$0:Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;

    # getter for: Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;
    invoke-static {v7}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->access$300(Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma$2;->this$0:Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;

    # getter for: Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->mCurrentColors:[[I
    invoke-static {v8}, Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;->access$200(Lcom/android/cyanogenmod/settings/livedisplay/DisplayGamma;)[[I

    move-result-object v8

    aget-object v8, v8, v3

    invoke-virtual {v7, v3, v8}, Lcyanogenmod/hardware/CMHardwareManager;->setDisplayGammaCalibration(I[I)Z

    .line 155
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 170
    .end local v0    # "color":I
    .end local v1    # "defaultColors":[Ljava/lang/String;
    .end local v2    # "defaultKey":Ljava/lang/String;
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    .end local v6    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method
