.class Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$ActionHolder;
.super Ljava/lang/Object;
.source "LockscreenShortcuts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionHolder"
.end annotation


# instance fields
.field private mAvailableEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailableValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;


# direct methods
.method private constructor <init>(Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;)V
    .locals 1

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$ActionHolder;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$ActionHolder;->mAvailableEntries:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$ActionHolder;->mAvailableValues:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;
    .param p2, "x1"    # Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$1;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$ActionHolder;-><init>(Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;)V

    return-void
.end method


# virtual methods
.method public addAction(Ljava/lang/String;I)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "entryResId"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$ActionHolder;->mAvailableEntries:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$ActionHolder;->this$0:Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;

    invoke-virtual {v1, p2}, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$ActionHolder;->mAvailableValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public getAction(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$ActionHolder;->mAvailableValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$ActionHolder;->mAvailableValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$ActionHolder;->mAvailableEntries:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/cyanogenmod/LockscreenShortcuts$ActionHolder;->mAvailableEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    return-object v0
.end method
