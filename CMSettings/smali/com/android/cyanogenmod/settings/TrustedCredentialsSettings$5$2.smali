.class Lcom/android/cyanogenmod/settings/TrustedCredentialsSettings$5$2;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/TrustedCredentialsSettings$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/cyanogenmod/settings/TrustedCredentialsSettings$5;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/TrustedCredentialsSettings$5;)V
    .locals 0

    .prologue
    .line 704
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/TrustedCredentialsSettings$5$2;->this$1:Lcom/android/cyanogenmod/settings/TrustedCredentialsSettings$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 706
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 707
    return-void
.end method
