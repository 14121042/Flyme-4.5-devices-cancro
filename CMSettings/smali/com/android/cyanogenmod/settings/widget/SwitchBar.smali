.class public Lcom/android/cyanogenmod/settings/widget/SwitchBar;
.super Landroid/widget/LinearLayout;
.source "SwitchBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cyanogenmod/settings/widget/SwitchBar$SavedState;,
        Lcom/android/cyanogenmod/settings/widget/SwitchBar$SpinnerAdapter;,
        Lcom/android/cyanogenmod/settings/widget/SwitchBar$OnItemSelectedListener;,
        Lcom/android/cyanogenmod/settings/widget/SwitchBar$OnSwitchChangeListener;
    }
.end annotation


# static fields
.field private static MARGIN_ATTRIBUTES:[I


# instance fields
.field private mItemSelectedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/cyanogenmod/settings/widget/SwitchBar$OnItemSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSpinner:Landroid/widget/Spinner;

.field private mStateOffLabel:I

.field private mStateOnLabel:I

.field private mSwitch:Lcom/android/cyanogenmod/settings/widget/ToggleSwitch;

.field private mSwitchChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/cyanogenmod/settings/widget/SwitchBar$OnSwitchChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->MARGIN_ATTRIBUTES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f01002b
        0x7f01002c
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const v8, 0x7f090d44

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    const v4, 0x7f090d43

    iput v4, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mStateOnLabel:I

    .line 62
    iput v8, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mStateOffLabel:I

    .line 64
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    .line 67
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mItemSelectedListeners:Ljava/util/ArrayList;

    .line 88
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0400f8

    invoke-virtual {v4, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 90
    sget-object v4, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->MARGIN_ATTRIBUTES:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v3, v4

    .line 92
    .local v3, "switchBarMarginStart":I
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v2, v4

    .line 93
    .local v2, "switchBarMarginEnd":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    const v4, 0x7f10023f

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    .line 96
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(I)V

    .line 97
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 98
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 100
    const v4, 0x7f100240

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mSpinner:Landroid/widget/Spinner;

    .line 101
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 102
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 103
    .restart local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 105
    const v4, 0x7f100241

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/cyanogenmod/settings/widget/ToggleSwitch;

    iput-object v4, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mSwitch:Lcom/android/cyanogenmod/settings/widget/ToggleSwitch;

    .line 108
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mSwitch:Lcom/android/cyanogenmod/settings/widget/ToggleSwitch;

    invoke-virtual {v4, v7}, Lcom/android/cyanogenmod/settings/widget/ToggleSwitch;->setSaveEnabled(Z)V

    .line 109
    iget-object v4, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mSwitch:Lcom/android/cyanogenmod/settings/widget/ToggleSwitch;

    invoke-virtual {v4}, Lcom/android/cyanogenmod/settings/widget/ToggleSwitch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 110
    .restart local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 112
    new-instance v4, Lcom/android/cyanogenmod/settings/widget/SwitchBar$1;

    invoke-direct {v4, p0}, Lcom/android/cyanogenmod/settings/widget/SwitchBar$1;-><init>(Lcom/android/cyanogenmod/settings/widget/SwitchBar;)V

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/cyanogenmod/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 119
    invoke-virtual {p0, p0}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->setVisibility(I)V

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/android/cyanogenmod/settings/widget/SwitchBar;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/cyanogenmod/settings/widget/SwitchBar;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method


# virtual methods
.method public addOnItemSelectedListener(Lcom/android/cyanogenmod/settings/widget/SwitchBar$OnItemSelectedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/cyanogenmod/settings/widget/SwitchBar$OnItemSelectedListener;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mItemSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add twice the same OnItemSelectedListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mItemSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    return-void
.end method

.method public addOnSwitchChangeListener(Lcom/android/cyanogenmod/settings/widget/SwitchBar$OnSwitchChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/cyanogenmod/settings/widget/SwitchBar$OnSwitchChangeListener;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add twice the same OnSwitchChangeListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    return-void
.end method

.method public final getSwitch()Lcom/android/cyanogenmod/settings/widget/ToggleSwitch;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mSwitch:Lcom/android/cyanogenmod/settings/widget/ToggleSwitch;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mSwitch:Lcom/android/cyanogenmod/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/cyanogenmod/settings/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 187
    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mSwitch:Lcom/android/cyanogenmod/settings/widget/ToggleSwitch;

    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 208
    invoke-virtual {p0, p2}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->propagateChecked(Z)V

    .line 209
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 195
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mSwitch:Lcom/android/cyanogenmod/settings/widget/ToggleSwitch;

    invoke-virtual {v1}, Lcom/android/cyanogenmod/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 196
    .local v0, "isChecked":Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->setChecked(Z)V

    .line 197
    return-void

    .line 195
    .end local v0    # "isChecked":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mItemSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cyanogenmod/settings/widget/SwitchBar$OnItemSelectedListener;

    .line 214
    .local v1, "mItemSelectedListener":Lcom/android/cyanogenmod/settings/widget/SwitchBar$OnItemSelectedListener;
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mSwitch:Lcom/android/cyanogenmod/settings/widget/ToggleSwitch;

    invoke-interface {v1, v2, p3}, Lcom/android/cyanogenmod/settings/widget/SwitchBar$OnItemSelectedListener;->onItemSelected(Landroid/widget/Switch;I)V

    goto :goto_0

    .line 216
    .end local v1    # "mItemSelectedListener":Lcom/android/cyanogenmod/settings/widget/SwitchBar$OnItemSelectedListener;
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 353
    move-object v0, p1

    check-cast v0, Lcom/android/cyanogenmod/settings/widget/SwitchBar$SavedState;

    .line 355
    .local v0, "ss":Lcom/android/cyanogenmod/settings/widget/SwitchBar$SavedState;
    invoke-virtual {v0}, Lcom/android/cyanogenmod/settings/widget/SwitchBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 357
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mSwitch:Lcom/android/cyanogenmod/settings/widget/ToggleSwitch;

    iget-boolean v2, v0, Lcom/android/cyanogenmod/settings/widget/SwitchBar$SavedState;->checked:Z

    invoke-virtual {v1, v2}, Lcom/android/cyanogenmod/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    .line 358
    iget v1, v0, Lcom/android/cyanogenmod/settings/widget/SwitchBar$SavedState;->resOnLabel:I

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->setOnStateOnLabel(I)V

    .line 359
    iget v1, v0, Lcom/android/cyanogenmod/settings/widget/SwitchBar$SavedState;->resOffLabel:I

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->setOnStateOffLabel(I)V

    .line 360
    iget-boolean v1, v0, Lcom/android/cyanogenmod/settings/widget/SwitchBar$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->setTextViewLabel(Z)V

    .line 361
    iget-boolean v1, v0, Lcom/android/cyanogenmod/settings/widget/SwitchBar$SavedState;->visible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->setVisibility(I)V

    .line 362
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mSwitch:Lcom/android/cyanogenmod/settings/widget/ToggleSwitch;

    iget-boolean v1, v0, Lcom/android/cyanogenmod/settings/widget/SwitchBar$SavedState;->visible:Z

    if-eqz v1, :cond_1

    move-object v1, p0

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/cyanogenmod/settings/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 364
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->requestLayout()V

    .line 365
    return-void

    .line 361
    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    .line 362
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 341
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 343
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/android/cyanogenmod/settings/widget/SwitchBar$SavedState;

    invoke-direct {v0, v1}, Lcom/android/cyanogenmod/settings/widget/SwitchBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 344
    .local v0, "ss":Lcom/android/cyanogenmod/settings/widget/SwitchBar$SavedState;
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mSwitch:Lcom/android/cyanogenmod/settings/widget/ToggleSwitch;

    invoke-virtual {v2}, Lcom/android/cyanogenmod/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/cyanogenmod/settings/widget/SwitchBar$SavedState;->checked:Z

    .line 345
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->isShowing()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/cyanogenmod/settings/widget/SwitchBar$SavedState;->visible:Z

    .line 346
    iget v2, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mStateOnLabel:I

    iput v2, v0, Lcom/android/cyanogenmod/settings/widget/SwitchBar$SavedState;->resOnLabel:I

    .line 347
    iget v2, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mStateOffLabel:I

    iput v2, v0, Lcom/android/cyanogenmod/settings/widget/SwitchBar$SavedState;->resOffLabel:I

    .line 348
    return-object v0
.end method

.method public propagateChecked(Z)V
    .locals 4
    .param p1, "isChecked"    # Z

    .prologue
    .line 200
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 201
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 202
    iget-object v2, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cyanogenmod/settings/widget/SwitchBar$OnSwitchChangeListener;

    iget-object v3, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mSwitch:Lcom/android/cyanogenmod/settings/widget/ToggleSwitch;

    invoke-interface {v2, v3, p1}, Lcom/android/cyanogenmod/settings/widget/SwitchBar$OnSwitchChangeListener;->onSwitchChanged(Landroid/widget/Switch;Z)V

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :cond_0
    return-void
.end method

.method public removeOnSwitchChangeListener(Lcom/android/cyanogenmod/settings/widget/SwitchBar$OnSwitchChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/cyanogenmod/settings/widget/SwitchBar$OnSwitchChangeListener;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot remove OnSwitchChangeListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 234
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->setTextViewLabel(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mSwitch:Lcom/android/cyanogenmod/settings/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/android/cyanogenmod/settings/widget/ToggleSwitch;->setChecked(Z)V

    .line 140
    return-void
.end method

.method public setCheckedInternal(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->setTextViewLabel(Z)V

    .line 144
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mSwitch:Lcom/android/cyanogenmod/settings/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/android/cyanogenmod/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    .line 145
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 155
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mSwitch:Lcom/android/cyanogenmod/settings/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/android/cyanogenmod/settings/widget/ToggleSwitch;->setEnabled(Z)V

    .line 156
    return-void
.end method

.method public setOnStateOffLabel(I)V
    .locals 0
    .param p1, "stringRes"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mStateOffLabel:I

    .line 131
    return-void
.end method

.method public setOnStateOnLabel(I)V
    .locals 0
    .param p1, "stringRes"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mStateOnLabel:I

    .line 127
    return-void
.end method

.method public setSpinnerEntries([Ljava/lang/String;)V
    .locals 3
    .param p1, "entries"    # [Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/android/cyanogenmod/settings/widget/SwitchBar$SpinnerAdapter;

    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/android/cyanogenmod/settings/widget/SwitchBar$SpinnerAdapter;-><init>(Lcom/android/cyanogenmod/settings/widget/SwitchBar;Landroid/content/Context;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 165
    return-void
.end method

.method public setTextViewLabel(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mStateOnLabel:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 135
    return-void

    .line 134
    :cond_0
    iget v0, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mStateOffLabel:I

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mSwitch:Lcom/android/cyanogenmod/settings/widget/ToggleSwitch;

    invoke-virtual {v0, p0}, Lcom/android/cyanogenmod/settings/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 180
    :cond_0
    return-void
.end method

.method public showSpinner(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 159
    iget-object v3, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/android/cyanogenmod/settings/widget/SwitchBar;->mSpinner:Landroid/widget/Spinner;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 161
    return-void

    :cond_0
    move v0, v2

    .line 159
    goto :goto_0

    :cond_1
    move v2, v1

    .line 160
    goto :goto_1
.end method
