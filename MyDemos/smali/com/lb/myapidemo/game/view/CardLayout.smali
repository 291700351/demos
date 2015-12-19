.class public Lcom/lb/myapidemo/game/view/CardLayout;
.super Landroid/widget/LinearLayout;
.source "CardLayout.java"


# instance fields
.field private cards:[[Lcom/lb/myapidemo/game/view/Card;

.field private col:I

.field private offsetX:F

.field private offsetY:F

.field private row:I

.field private startX:F

.field private startY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x4

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    iput v0, p0, Lcom/lb/myapidemo/game/view/CardLayout;->row:I

    .line 22
    iput v0, p0, Lcom/lb/myapidemo/game/view/CardLayout;->col:I

    .line 33
    invoke-direct {p0}, Lcom/lb/myapidemo/game/view/CardLayout;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x4

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput v0, p0, Lcom/lb/myapidemo/game/view/CardLayout;->row:I

    .line 22
    iput v0, p0, Lcom/lb/myapidemo/game/view/CardLayout;->col:I

    .line 28
    invoke-direct {p0}, Lcom/lb/myapidemo/game/view/CardLayout;->init()V

    .line 29
    return-void
.end method

.method private down()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 256
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v5, p0, Lcom/lb/myapidemo/game/view/CardLayout;->col:I

    if-lt v3, v5, :cond_0

    .line 287
    return-void

    .line 257
    :cond_0
    iget-object v5, p0, Lcom/lb/myapidemo/game/view/CardLayout;->cards:[[Lcom/lb/myapidemo/game/view/Card;

    aget-object v1, v5, v3

    .line 258
    .local v1, "cs":[Lcom/lb/myapidemo/game/view/Card;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v5, v1

    if-lt v4, v5, :cond_1

    .line 256
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 259
    :cond_1
    aget-object v0, v1, v4

    .line 260
    .local v0, "c":Lcom/lb/myapidemo/game/view/Card;
    invoke-virtual {v0}, Lcom/lb/myapidemo/game/view/Card;->getNum()I

    move-result v5

    if-nez v5, :cond_3

    .line 258
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 263
    :cond_3
    iget v5, p0, Lcom/lb/myapidemo/game/view/CardLayout;->col:I

    add-int/lit8 v5, v5, -0x1

    if-eq v3, v5, :cond_2

    .line 264
    iget-object v5, p0, Lcom/lb/myapidemo/game/view/CardLayout;->cards:[[Lcom/lb/myapidemo/game/view/Card;

    add-int/lit8 v6, v3, 0x1

    aget-object v5, v5, v6

    aget-object v2, v5, v4

    .line 265
    .local v2, "downCard":Lcom/lb/myapidemo/game/view/Card;
    invoke-virtual {v2}, Lcom/lb/myapidemo/game/view/Card;->getNum()I

    move-result v5

    if-nez v5, :cond_4

    .line 268
    invoke-virtual {v0}, Lcom/lb/myapidemo/game/view/Card;->getNum()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/lb/myapidemo/game/view/Card;->setNum(I)V

    .line 269
    invoke-virtual {v0, v7}, Lcom/lb/myapidemo/game/view/Card;->setNum(I)V

    .line 270
    invoke-direct {p0}, Lcom/lb/myapidemo/game/view/CardLayout;->right()V

    goto :goto_3

    .line 274
    :cond_4
    invoke-virtual {v2, v0}, Lcom/lb/myapidemo/game/view/Card;->equals(Lcom/lb/myapidemo/game/view/Card;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 276
    invoke-virtual {v2}, Lcom/lb/myapidemo/game/view/Card;->getNum()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v2, v5}, Lcom/lb/myapidemo/game/view/Card;->setNum(I)V

    .line 277
    invoke-virtual {v0, v7}, Lcom/lb/myapidemo/game/view/Card;->setNum(I)V

    goto :goto_2
.end method

.method private init()V
    .locals 2

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/game/view/CardLayout;->setOrientation(I)V

    .line 38
    iget v0, p0, Lcom/lb/myapidemo/game/view/CardLayout;->row:I

    iget v1, p0, Lcom/lb/myapidemo/game/view/CardLayout;->col:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lcom/lb/myapidemo/game/view/Card;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/lb/myapidemo/game/view/Card;

    iput-object v0, p0, Lcom/lb/myapidemo/game/view/CardLayout;->cards:[[Lcom/lb/myapidemo/game/view/Card;

    .line 40
    return-void
.end method

.method private left()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 160
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v5, p0, Lcom/lb/myapidemo/game/view/CardLayout;->row:I

    if-lt v2, v5, :cond_0

    .line 187
    return-void

    .line 161
    :cond_0
    iget-object v5, p0, Lcom/lb/myapidemo/game/view/CardLayout;->cards:[[Lcom/lb/myapidemo/game/view/Card;

    aget-object v1, v5, v2

    .line 162
    .local v1, "cs":[Lcom/lb/myapidemo/game/view/Card;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v5, v1

    if-lt v3, v5, :cond_1

    .line 160
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    :cond_1
    aget-object v0, v1, v3

    .line 164
    .local v0, "c":Lcom/lb/myapidemo/game/view/Card;
    invoke-virtual {v0}, Lcom/lb/myapidemo/game/view/Card;->getNum()I

    move-result v5

    if-nez v5, :cond_3

    .line 162
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 167
    :cond_3
    if-eqz v3, :cond_2

    .line 168
    add-int/lit8 v5, v3, -0x1

    aget-object v4, v1, v5

    .line 169
    .local v4, "preCard":Lcom/lb/myapidemo/game/view/Card;
    invoke-virtual {v4}, Lcom/lb/myapidemo/game/view/Card;->getNum()I

    move-result v5

    if-nez v5, :cond_4

    .line 170
    invoke-virtual {v0}, Lcom/lb/myapidemo/game/view/Card;->getNum()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/lb/myapidemo/game/view/Card;->setNum(I)V

    .line 171
    invoke-virtual {v0, v6}, Lcom/lb/myapidemo/game/view/Card;->setNum(I)V

    .line 172
    invoke-direct {p0}, Lcom/lb/myapidemo/game/view/CardLayout;->left()V

    goto :goto_3

    .line 175
    :cond_4
    invoke-virtual {v4, v0}, Lcom/lb/myapidemo/game/view/Card;->equals(Lcom/lb/myapidemo/game/view/Card;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 177
    invoke-virtual {v4}, Lcom/lb/myapidemo/game/view/Card;->getNum()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Lcom/lb/myapidemo/game/view/Card;->setNum(I)V

    .line 178
    invoke-virtual {v0, v6}, Lcom/lb/myapidemo/game/view/Card;->setNum(I)V

    goto :goto_2
.end method

.method private right()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 216
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v5, p0, Lcom/lb/myapidemo/game/view/CardLayout;->row:I

    if-lt v2, v5, :cond_0

    .line 253
    return-void

    .line 217
    :cond_0
    iget-object v5, p0, Lcom/lb/myapidemo/game/view/CardLayout;->cards:[[Lcom/lb/myapidemo/game/view/Card;

    aget-object v1, v5, v2

    .line 218
    .local v1, "cs":[Lcom/lb/myapidemo/game/view/Card;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v5, v1

    if-lt v3, v5, :cond_1

    .line 216
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    :cond_1
    aget-object v0, v1, v3

    .line 220
    .local v0, "c":Lcom/lb/myapidemo/game/view/Card;
    invoke-virtual {v0}, Lcom/lb/myapidemo/game/view/Card;->getNum()I

    move-result v5

    if-nez v5, :cond_3

    .line 218
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 224
    :cond_3
    iget v5, p0, Lcom/lb/myapidemo/game/view/CardLayout;->col:I

    add-int/lit8 v5, v5, -0x1

    if-eq v3, v5, :cond_2

    .line 227
    add-int/lit8 v5, v3, 0x1

    aget-object v4, v1, v5

    .line 229
    .local v4, "nextCard":Lcom/lb/myapidemo/game/view/Card;
    invoke-virtual {v4}, Lcom/lb/myapidemo/game/view/Card;->getNum()I

    move-result v5

    if-nez v5, :cond_4

    .line 232
    invoke-virtual {v0}, Lcom/lb/myapidemo/game/view/Card;->getNum()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/lb/myapidemo/game/view/Card;->setNum(I)V

    .line 233
    invoke-virtual {v0, v6}, Lcom/lb/myapidemo/game/view/Card;->setNum(I)V

    .line 234
    invoke-direct {p0}, Lcom/lb/myapidemo/game/view/CardLayout;->right()V

    goto :goto_3

    .line 238
    :cond_4
    invoke-virtual {v4, v0}, Lcom/lb/myapidemo/game/view/Card;->equals(Lcom/lb/myapidemo/game/view/Card;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 240
    invoke-virtual {v4}, Lcom/lb/myapidemo/game/view/Card;->getNum()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Lcom/lb/myapidemo/game/view/Card;->setNum(I)V

    .line 241
    invoke-virtual {v0, v6}, Lcom/lb/myapidemo/game/view/Card;->setNum(I)V

    goto :goto_2
.end method

.method private up()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 190
    const-string v4, "UP"

    invoke-static {p0, v4}, Lcom/lb/myapidemo/utils/LogUtil;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/lb/myapidemo/game/view/CardLayout;->row:I

    if-lt v1, v4, :cond_0

    .line 213
    return-void

    .line 192
    :cond_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget v4, p0, Lcom/lb/myapidemo/game/view/CardLayout;->col:I

    if-lt v2, v4, :cond_1

    .line 191
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    :cond_1
    iget-object v4, p0, Lcom/lb/myapidemo/game/view/CardLayout;->cards:[[Lcom/lb/myapidemo/game/view/Card;

    aget-object v4, v4, v1

    aget-object v0, v4, v2

    .line 194
    .local v0, "c":Lcom/lb/myapidemo/game/view/Card;
    invoke-virtual {v0}, Lcom/lb/myapidemo/game/view/Card;->getNum()I

    move-result v4

    if-nez v4, :cond_2

    .line 195
    if-eqz v1, :cond_2

    .line 196
    iget-object v4, p0, Lcom/lb/myapidemo/game/view/CardLayout;->cards:[[Lcom/lb/myapidemo/game/view/Card;

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    aget-object v3, v4, v2

    .line 197
    .local v3, "upCard":Lcom/lb/myapidemo/game/view/Card;
    invoke-virtual {v3}, Lcom/lb/myapidemo/game/view/Card;->getNum()I

    move-result v4

    if-nez v4, :cond_3

    .line 198
    invoke-virtual {v0}, Lcom/lb/myapidemo/game/view/Card;->getNum()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lb/myapidemo/game/view/Card;->setNum(I)V

    .line 199
    invoke-virtual {v0, v6}, Lcom/lb/myapidemo/game/view/Card;->setNum(I)V

    .line 200
    invoke-direct {p0}, Lcom/lb/myapidemo/game/view/CardLayout;->up()V

    .line 192
    .end local v3    # "upCard":Lcom/lb/myapidemo/game/view/Card;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 202
    .restart local v3    # "upCard":Lcom/lb/myapidemo/game/view/Card;
    :cond_3
    invoke-virtual {v3}, Lcom/lb/myapidemo/game/view/Card;->getNum()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Lcom/lb/myapidemo/game/view/Card;->setNum(I)V

    .line 203
    invoke-virtual {v0, v6}, Lcom/lb/myapidemo/game/view/Card;->setNum(I)V

    goto :goto_2
.end method


# virtual methods
.method public clean()V
    .locals 4

    .prologue
    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lb/myapidemo/game/view/CardLayout;->cards:[[Lcom/lb/myapidemo/game/view/Card;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 117
    return-void

    .line 113
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v2, p0, Lcom/lb/myapidemo/game/view/CardLayout;->cards:[[Lcom/lb/myapidemo/game/view/Card;

    aget-object v2, v2, v0

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_1
    iget-object v2, p0, Lcom/lb/myapidemo/game/view/CardLayout;->cards:[[Lcom/lb/myapidemo/game/view/Card;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lb/myapidemo/game/view/Card;->setNum(I)V

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public createNum()I
    .locals 4

    .prologue
    .line 83
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 84
    .local v1, "random":Ljava/util/Random;
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 85
    .local v0, "num":I
    rem-int/lit8 v2, v0, 0x28

    const/16 v3, 0x23

    if-le v2, v3, :cond_0

    .line 86
    const/4 v2, 0x4

    .line 88
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public createRandomCard()V
    .locals 7

    .prologue
    const v6, 0x7fffffff

    .line 96
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 98
    .local v1, "randomX":Ljava/util/Random;
    invoke-virtual {v1, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    iget v5, p0, Lcom/lb/myapidemo/game/view/CardLayout;->col:I

    rem-int v2, v4, v5

    .line 99
    .local v2, "x":I
    invoke-virtual {v1, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    iget v5, p0, Lcom/lb/myapidemo/game/view/CardLayout;->row:I

    rem-int v3, v4, v5

    .line 100
    .local v3, "y":I
    iget-object v4, p0, Lcom/lb/myapidemo/game/view/CardLayout;->cards:[[Lcom/lb/myapidemo/game/view/Card;

    aget-object v4, v4, v3

    aget-object v0, v4, v2

    .line 101
    .local v0, "c":Lcom/lb/myapidemo/game/view/Card;
    invoke-virtual {v0}, Lcom/lb/myapidemo/game/view/Card;->getNum()I

    move-result v4

    if-nez v4, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/lb/myapidemo/game/view/CardLayout;->createNum()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lb/myapidemo/game/view/Card;->setNum(I)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/lb/myapidemo/game/view/CardLayout;->createRandomCard()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v12, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/lb/myapidemo/game/view/CardLayout;->getMeasuredWidth()I

    move-result v7

    .line 46
    .local v7, "measuredWidth":I
    invoke-virtual {p0}, Lcom/lb/myapidemo/game/view/CardLayout;->getMeasuredHeight()I

    move-result v6

    .line 49
    .local v6, "measuredHeight":I
    if-lt v7, v6, :cond_0

    move v9, v6

    .line 52
    .local v9, "width":I
    :goto_0
    iget v10, p0, Lcom/lb/myapidemo/game/view/CardLayout;->row:I

    div-int v1, v9, v10

    .line 53
    .local v1, "cardWidth":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v10, p0, Lcom/lb/myapidemo/game/view/CardLayout;->row:I

    if-lt v2, v10, :cond_1

    .line 74
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 75
    return-void

    .end local v1    # "cardWidth":I
    .end local v2    # "i":I
    .end local v9    # "width":I
    :cond_0
    move v9, v7

    .line 50
    goto :goto_0

    .line 54
    .restart local v1    # "cardWidth":I
    .restart local v2    # "i":I
    .restart local v9    # "width":I
    :cond_1
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/lb/myapidemo/game/view/CardLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 55
    .local v4, "layout":Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    .line 56
    .local v5, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v10, p0, Lcom/lb/myapidemo/game/view/CardLayout;->row:I

    add-int/lit8 v10, v10, -0x1

    if-eq v2, v10, :cond_2

    .line 57
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .end local v5    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v5, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61
    .restart local v5    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_2
    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 62
    const v10, -0x445260

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 63
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    iget v10, p0, Lcom/lb/myapidemo/game/view/CardLayout;->col:I

    if-lt v3, v10, :cond_3

    .line 71
    invoke-virtual {p0, v4, v5}, Lcom/lb/myapidemo/game/view/CardLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 59
    .end local v3    # "j":I
    :cond_2
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .end local v5    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    add-int/lit8 v10, v1, 0xa

    invoke-direct {v5, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v5    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_2

    .line 64
    .restart local v3    # "j":I
    :cond_3
    new-instance v0, Lcom/lb/myapidemo/game/view/Card;

    invoke-virtual {p0}, Lcom/lb/myapidemo/game/view/CardLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/lb/myapidemo/game/view/Card;-><init>(Landroid/content/Context;)V

    .line 65
    .local v0, "card":Lcom/lb/myapidemo/game/view/Card;
    invoke-virtual {v0, v12}, Lcom/lb/myapidemo/game/view/Card;->setNum(I)V

    .line 66
    const/4 v8, 0x0

    .line 67
    .local v8, "params":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .end local v8    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v10, 0xa

    iget v11, p0, Lcom/lb/myapidemo/game/view/CardLayout;->col:I

    div-int/2addr v10, v11

    sub-int v10, v1, v10

    invoke-direct {v8, v10, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 68
    .restart local v8    # "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object v10, p0, Lcom/lb/myapidemo/game/view/CardLayout;->cards:[[Lcom/lb/myapidemo/game/view/Card;

    aget-object v10, v10, v2

    aput-object v0, v10, v3

    .line 63
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v3, 0x40a00000

    const/high16 v2, -0x3f600000

    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 156
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 128
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/lb/myapidemo/game/view/CardLayout;->startX:F

    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/lb/myapidemo/game/view/CardLayout;->startY:F

    goto :goto_0

    .line 134
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/lb/myapidemo/game/view/CardLayout;->startX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lb/myapidemo/game/view/CardLayout;->offsetX:F

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/lb/myapidemo/game/view/CardLayout;->startY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lb/myapidemo/game/view/CardLayout;->offsetY:F

    .line 136
    iget v0, p0, Lcom/lb/myapidemo/game/view/CardLayout;->offsetX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/lb/myapidemo/game/view/CardLayout;->offsetY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 137
    iget v0, p0, Lcom/lb/myapidemo/game/view/CardLayout;->offsetX:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 138
    invoke-direct {p0}, Lcom/lb/myapidemo/game/view/CardLayout;->left()V

    .line 139
    invoke-virtual {p0}, Lcom/lb/myapidemo/game/view/CardLayout;->createRandomCard()V

    goto :goto_0

    .line 140
    :cond_1
    iget v0, p0, Lcom/lb/myapidemo/game/view/CardLayout;->offsetX:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/lb/myapidemo/game/view/CardLayout;->right()V

    .line 142
    invoke-virtual {p0}, Lcom/lb/myapidemo/game/view/CardLayout;->createRandomCard()V

    goto :goto_0

    .line 146
    :cond_2
    iget v0, p0, Lcom/lb/myapidemo/game/view/CardLayout;->offsetY:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    .line 147
    invoke-direct {p0}, Lcom/lb/myapidemo/game/view/CardLayout;->up()V

    .line 148
    invoke-virtual {p0}, Lcom/lb/myapidemo/game/view/CardLayout;->createRandomCard()V

    goto :goto_0

    .line 149
    :cond_3
    iget v0, p0, Lcom/lb/myapidemo/game/view/CardLayout;->offsetY:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/lb/myapidemo/game/view/CardLayout;->down()V

    .line 151
    invoke-virtual {p0}, Lcom/lb/myapidemo/game/view/CardLayout;->createRandomCard()V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
