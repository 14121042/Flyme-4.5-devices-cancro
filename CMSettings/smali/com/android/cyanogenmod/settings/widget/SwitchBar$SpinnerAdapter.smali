.class Lcom/android/cyanogenmod/settings/widget/SwitchBar$SpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SwitchBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cyanogenmod/settings/widget/SwitchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpinnerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final entries:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/cyanogenmod/settings/widget/SwitchBar;


# direct methods
.method public constructor <init>(Lcom/android/cyanogenmod/settings/widget/SwitchBar;Landroid/content/Context;[Ljava/lang/Object;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[TT;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p0, "this":Lcom/android/cyanogenmod/settings/widget/SwitchBar$SpinnerAdapter;, "Lcom/android/cyanogenmod/settings/widget/SwitchBar$SpinnerAdapter<TT;>;"
    .local p3, "entries":[Ljava/lang/Object;, "[TT;"
    iput-object p1, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar$SpinnerAdapter;->this$0:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    .line 255
    const v0, 0x7f0400f6

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 256
    iput-object p3, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar$SpinnerAdapter;->entries:[Ljava/lang/Object;

    .line 257
    return-void
.end method

.method private createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IZ)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "position"    # I
    .param p4, "dropDown"    # Z

    .prologue
    .local p0, "this":Lcom/android/cyanogenmod/settings/widget/SwitchBar$SpinnerAdapter;, "Lcom/android/cyanogenmod/settings/widget/SwitchBar$SpinnerAdapter<TT;>;"
    const/4 v4, 0x0

    .line 261
    const v1, 0x7f0400f6

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 263
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar$SpinnerAdapter;->entries:[Ljava/lang/Object;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    if-nez p4, :cond_0

    .line 265
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 270
    :goto_0
    return-object v0

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/widget/SwitchBar$SpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020142

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 281
    .local p0, "this":Lcom/android/cyanogenmod/settings/widget/SwitchBar$SpinnerAdapter;, "Lcom/android/cyanogenmod/settings/widget/SwitchBar$SpinnerAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/widget/SwitchBar$SpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p3, p1, v1}, Lcom/android/cyanogenmod/settings/widget/SwitchBar$SpinnerAdapter;->createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 275
    .local p0, "this":Lcom/android/cyanogenmod/settings/widget/SwitchBar$SpinnerAdapter;, "Lcom/android/cyanogenmod/settings/widget/SwitchBar$SpinnerAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/widget/SwitchBar$SpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar$SpinnerAdapter;->this$0:Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    # getter for: Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->access$000(Lcom/android/cyanogenmod/settings/widget/SwitchBar;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, p3, v1, v2}, Lcom/android/cyanogenmod/settings/widget/SwitchBar$SpinnerAdapter;->createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
