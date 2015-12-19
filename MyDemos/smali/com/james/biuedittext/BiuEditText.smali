.class public Lcom/james/biuedittext/BiuEditText;
.super Landroid/widget/EditText;
.source "BiuEditText.java"


# static fields
.field private static final DEFAULT_DURATION:I = 0x258

.field private static final DEFAULT_SCALE:F = 1.2f


# instance fields
.field private biuDuration:I

.field private biuTextColor:I

.field private biuTextScale:F

.field private biuTextStartSize:F

.field private cacheStr:Ljava/lang/String;

.field private contentContainer:Landroid/view/ViewGroup;

.field private height:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/james/biuedittext/BiuEditText;->cacheStr:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/james/biuedittext/BiuEditText;->cacheStr:Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/james/biuedittext/BiuEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0}, Lcom/james/biuedittext/BiuEditText;->setlistener()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/james/biuedittext/BiuEditText;->cacheStr:Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/james/biuedittext/BiuEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/james/biuedittext/BiuEditText;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/james/biuedittext/BiuEditText;->cacheStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/james/biuedittext/BiuEditText;CZ)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/james/biuedittext/BiuEditText;->update(CZ)V

    return-void
.end method

.method static synthetic access$2(Lcom/james/biuedittext/BiuEditText;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/james/biuedittext/BiuEditText;->cacheStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/james/biuedittext/BiuEditText;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/james/biuedittext/BiuEditText;->contentContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/james/biuedittext/BiuEditText;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    :goto_0
    return-void

    .line 58
    :cond_0
    if-nez p2, :cond_1

    .line 59
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Attributes should be provided to this view,"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_1
    sget-object v2, Lcom/james/biuedittext/R$styleable;->BiuEditStyle:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/james/biuedittext/BiuEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/james/biuedittext/R$color;->white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/james/biuedittext/BiuEditText;->biuTextColor:I

    .line 63
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/james/biuedittext/BiuEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/james/biuedittext/R$dimen;->biu_text_start_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/james/biuedittext/BiuEditText;->biuTextStartSize:F

    .line 64
    const/4 v2, 0x2

    const v3, 0x3f99999a

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/james/biuedittext/BiuEditText;->biuTextScale:F

    .line 65
    const/4 v2, 0x3

    const/16 v3, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/james/biuedittext/BiuEditText;->biuDuration:I

    .line 66
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    invoke-virtual {p0}, Lcom/james/biuedittext/BiuEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/james/biuedittext/BiuEditText;->contentContainer:Landroid/view/ViewGroup;

    .line 69
    invoke-virtual {p0}, Lcom/james/biuedittext/BiuEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 70
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/james/biuedittext/BiuEditText;->height:I

    goto :goto_0
.end method

.method private setlistener()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/james/biuedittext/BiuEditText$1;

    invoke-direct {v0, p0}, Lcom/james/biuedittext/BiuEditText$1;-><init>(Lcom/james/biuedittext/BiuEditText;)V

    invoke-virtual {p0, v0}, Lcom/james/biuedittext/BiuEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 97
    return-void
.end method

.method private update(CZ)V
    .locals 22
    .param p1, "last"    # C
    .param p2, "isUp"    # Z

    .prologue
    .line 100
    new-instance v17, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/james/biuedittext/BiuEditText;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 101
    .local v17, "textView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/james/biuedittext/BiuEditText;->biuTextColor:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    move-object/from16 v0, p0

    iget v0, v0, Lcom/james/biuedittext/BiuEditText;->biuTextStartSize:F

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextSize(F)V

    .line 103
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const/16 v18, 0x11

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setGravity(I)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/james/biuedittext/BiuEditText;->contentContainer:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    new-instance v19, Landroid/view/ViewGroup$LayoutParams;

    const/16 v20, -0x2

    const/16 v21, -0x2

    invoke-direct/range {v19 .. v21}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/widget/TextView;->measure(II)V

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/james/biuedittext/BiuEditText;->getSelectionStart()I

    move-result v12

    .line 110
    .local v12, "pos":I
    invoke-virtual/range {p0 .. p0}, Lcom/james/biuedittext/BiuEditText;->getLayout()Landroid/text/Layout;

    move-result-object v10

    .line 111
    .local v10, "layout":Landroid/text/Layout;
    invoke-virtual {v10, v12}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    .line 112
    .local v11, "line":I
    invoke-virtual {v10, v11}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v7

    .line 113
    .local v7, "baseline":I
    invoke-virtual {v10, v11}, Landroid/text/Layout;->getLineAscent(I)I

    move-result v6

    .line 115
    .local v6, "ascent":I
    const/4 v15, 0x0

    .line 116
    .local v15, "startX":F
    const/16 v16, 0x0

    .line 117
    .local v16, "startY":F
    const/4 v8, 0x0

    .line 118
    .local v8, "endX":F
    const/4 v9, 0x0

    .line 119
    .local v9, "endY":F
    if-eqz p2, :cond_0

    .line 120
    invoke-virtual {v10, v12}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    const/high16 v19, 0x42c80000

    add-float v15, v18, v19

    .line 121
    move-object/from16 v0, p0

    iget v0, v0, Lcom/james/biuedittext/BiuEditText;->height:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x3

    mul-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v16, v0

    .line 122
    move v8, v15

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/james/biuedittext/BiuEditText;->getY()F

    move-result v18

    int-to-float v0, v7

    move/from16 v19, v0

    add-float v18, v18, v19

    int-to-float v0, v6

    move/from16 v19, v0

    add-float v9, v18, v19

    .line 131
    :goto_0
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 132
    .local v3, "animSet":Landroid/animation/AnimatorSet;
    const-string v18, "translationX"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v15, v19, v20

    const/16 v20, 0x1

    aput v8, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 133
    .local v4, "animX":Landroid/animation/ObjectAnimator;
    const-string v18, "translationY"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v16, v19, v20

    const/16 v20, 0x1

    aput v9, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 134
    .local v5, "animY":Landroid/animation/ObjectAnimator;
    const-string v18, "scaleX"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000

    aput v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/james/biuedittext/BiuEditText;->biuTextScale:F

    move/from16 v21, v0

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 135
    .local v13, "scaleX":Landroid/animation/ObjectAnimator;
    const-string v18, "scaleY"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000

    aput v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/james/biuedittext/BiuEditText;->biuTextScale:F

    move/from16 v21, v0

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 137
    .local v14, "scaleY":Landroid/animation/ObjectAnimator;
    new-instance v18, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v18 .. v18}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 138
    move-object/from16 v0, p0

    iget v0, v0, Lcom/james/biuedittext/BiuEditText;->biuDuration:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 139
    new-instance v18, Lcom/james/biuedittext/BiuEditText$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/james/biuedittext/BiuEditText$2;-><init>(Lcom/james/biuedittext/BiuEditText;Landroid/widget/TextView;)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 149
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v4, v18, v19

    const/16 v19, 0x1

    aput-object v5, v18, v19

    const/16 v19, 0x2

    aput-object v13, v18, v19

    const/16 v19, 0x3

    aput-object v14, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 150
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 151
    return-void

    .line 125
    .end local v3    # "animSet":Landroid/animation/AnimatorSet;
    .end local v4    # "animX":Landroid/animation/ObjectAnimator;
    .end local v5    # "animY":Landroid/animation/ObjectAnimator;
    .end local v13    # "scaleX":Landroid/animation/ObjectAnimator;
    .end local v14    # "scaleY":Landroid/animation/ObjectAnimator;
    :cond_0
    new-instance v18, Ljava/util/Random;

    invoke-direct/range {v18 .. v18}, Ljava/util/Random;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/james/biuedittext/BiuEditText;->contentContainer:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->getWidth()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/Random;->nextInt(I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v8, v0

    .line 126
    move-object/from16 v0, p0

    iget v0, v0, Lcom/james/biuedittext/BiuEditText;->height:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x3

    mul-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v9, v0

    .line 127
    invoke-virtual {v10, v12}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    const/high16 v19, 0x428c0000

    add-float v15, v18, v19

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/james/biuedittext/BiuEditText;->getY()F

    move-result v18

    int-to-float v0, v7

    move/from16 v19, v0

    add-float v18, v18, v19

    int-to-float v0, v6

    move/from16 v19, v0

    add-float v16, v18, v19

    goto/16 :goto_0
.end method
