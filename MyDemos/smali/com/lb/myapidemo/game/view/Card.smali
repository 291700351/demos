.class public Lcom/lb/myapidemo/game/view/Card;
.super Landroid/widget/FrameLayout;
.source "Card.java"


# instance fields
.field private num:I

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x2

    iput v0, p0, Lcom/lb/myapidemo/game/view/Card;->num:I

    .line 39
    invoke-direct {p0}, Lcom/lb/myapidemo/game/view/Card;->init()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x2

    iput v0, p0, Lcom/lb/myapidemo/game/view/Card;->num:I

    .line 34
    invoke-direct {p0}, Lcom/lb/myapidemo/game/view/Card;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x2

    iput v0, p0, Lcom/lb/myapidemo/game/view/Card;->num:I

    .line 29
    invoke-direct {p0}, Lcom/lb/myapidemo/game/view/Card;->init()V

    .line 30
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 46
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lb/myapidemo/game/view/Card;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lb/myapidemo/game/view/Card;->textView:Landroid/widget/TextView;

    .line 47
    iget v1, p0, Lcom/lb/myapidemo/game/view/Card;->num:I

    invoke-virtual {p0, v1}, Lcom/lb/myapidemo/game/view/Card;->setNum(I)V

    .line 48
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 49
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v5, v5, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 50
    iget-object v1, p0, Lcom/lb/myapidemo/game/view/Card;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/lb/myapidemo/game/view/Card;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    return-void
.end method


# virtual methods
.method public equals(Lcom/lb/myapidemo/game/view/Card;)Z
    .locals 2
    .param p1, "c"    # Lcom/lb/myapidemo/game/view/Card;

    .prologue
    .line 128
    iget v0, p0, Lcom/lb/myapidemo/game/view/Card;->num:I

    invoke-virtual {p1}, Lcom/lb/myapidemo/game/view/Card;->getNum()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNum()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/lb/myapidemo/game/view/Card;->num:I

    return v0
.end method

.method public setNum(I)V
    .locals 5
    .param p1, "num"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/lb/myapidemo/game/view/Card;->num:I

    .line 71
    const-string v1, ""

    .line 72
    .local v1, "mBgColor":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 110
    const-string v1, "#EA7821"

    .line 114
    :goto_0
    if-nez p1, :cond_0

    .line 115
    iget-object v2, p0, Lcom/lb/myapidemo/game/view/Card;->textView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :goto_1
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 119
    invoke-static {v2}, Lcom/lb/myapidemo/game/DrawableUtil;->generateDrawable(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 121
    .local v0, "drawable":Landroid/graphics/drawable/GradientDrawable;
    iget-object v2, p0, Lcom/lb/myapidemo/game/view/Card;->textView:Landroid/widget/TextView;

    const/4 v3, 0x2

    const/high16 v4, 0x41e00000

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 122
    iget-object v2, p0, Lcom/lb/myapidemo/game/view/Card;->textView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 123
    iget-object v2, p0, Lcom/lb/myapidemo/game/view/Card;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    return-void

    .line 74
    .end local v0    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    :sswitch_0
    const-string v1, "#CCC0B3"

    .line 75
    goto :goto_0

    .line 77
    :sswitch_1
    const-string v1, "#EEE4DA"

    .line 78
    goto :goto_0

    .line 80
    :sswitch_2
    const-string v1, "#EDE0C8"

    .line 81
    goto :goto_0

    .line 83
    :sswitch_3
    const-string v1, "#F2B179"

    .line 84
    goto :goto_0

    .line 86
    :sswitch_4
    const-string v1, "#F49563"

    .line 87
    goto :goto_0

    .line 89
    :sswitch_5
    const-string v1, "#F5794D"

    .line 90
    goto :goto_0

    .line 92
    :sswitch_6
    const-string v1, "#F55D37"

    .line 93
    goto :goto_0

    .line 95
    :sswitch_7
    const-string v1, "#EEE863"

    .line 96
    goto :goto_0

    .line 98
    :sswitch_8
    const-string v1, "#EDB04D"

    .line 99
    goto :goto_0

    .line 101
    :sswitch_9
    const-string v1, "#ECB04D"

    .line 102
    goto :goto_0

    .line 104
    :sswitch_a
    const-string v1, "#EB9437"

    .line 105
    goto :goto_0

    .line 107
    :sswitch_b
    const-string v1, "#EA7821"

    .line 108
    goto :goto_0

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/lb/myapidemo/game/view/Card;->textView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 72
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
    .end sparse-switch
.end method
