.class Lcom/android/cyanogenmod/settings/DisplaySettings$2;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/DisplaySettings;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/DisplaySettings$2;->this$0:Lcom/android/cyanogenmod/settings/DisplaySettings;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/DisplaySettings$2;->this$0:Lcom/android/cyanogenmod/settings/DisplaySettings;

    # invokes: Lcom/android/cyanogenmod/settings/DisplaySettings;->updateDisplayRotationPreferenceDescription()V
    invoke-static {v0}, Lcom/android/cyanogenmod/settings/DisplaySettings;->access$000(Lcom/android/cyanogenmod/settings/DisplaySettings;)V

    .line 149
    return-void
.end method
