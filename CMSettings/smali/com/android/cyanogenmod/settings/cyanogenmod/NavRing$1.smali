.class Lcom/android/cyanogenmod/settings/cyanogenmod/NavRing$1;
.super Ljava/lang/Object;
.source "NavRing.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cyanogenmod/settings/cyanogenmod/NavRing;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/NavRing;


# direct methods
.method constructor <init>(Lcom/android/cyanogenmod/settings/cyanogenmod/NavRing;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/NavRing$1;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/NavRing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/NavRing$1;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/NavRing;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/cyanogenmod/NavRing;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcyanogenmod/providers/CMSettings$Secure;->NAVIGATION_RING_TARGETS:[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method
