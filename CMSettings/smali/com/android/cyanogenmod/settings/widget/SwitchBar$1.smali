.class Lcom/android/cyanogenmod/settings/widget/SwitchBar$1;
.super Ljava/lang/Object;
.source "SwitchBar.java"

# interfaces
.implements Lcom/android/cyanogenmod/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/widget/SwitchBar;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/widget/SwitchBar;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar$1;->this$0:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar$1;->this$0:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    invoke-virtual {v0, p2}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->setTextViewLabel(Z)V

    .line 116
    return-void
.end method
