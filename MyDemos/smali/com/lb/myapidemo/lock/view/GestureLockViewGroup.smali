.class public Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;
.super Landroid/widget/RelativeLayout;
.source "GestureLockViewGroup.java"


# instance fields
.field private count:I

.field private height:I

.field private mGestureLockViewWidth:I

.field private mMarginBetweenLockView:I

.field private paint:Landroid/graphics/Paint;

.field path:Landroid/graphics/Path;

.field private selecteds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lb/myapidemo/lock/view/GestureLockView;",
            ">;"
        }
    .end annotation
.end field

.field private views:[Lcom/lb/myapidemo/lock/view/GestureLockView;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x3

    iput v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->count:I

    .line 47
    invoke-direct {p0}, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->init()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x3

    iput v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->count:I

    .line 42
    invoke-direct {p0}, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->init()V

    .line 43
    return-void
.end method

.method private colorUtil(II)I
    .locals 4
    .param p1, "color"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 251
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 252
    .local v2, "red":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 253
    .local v1, "green":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 254
    .local v0, "blue":I
    invoke-static {p2, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    return v3
.end method

.method private init()V
    .locals 2

    .prologue
    .line 53
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->setGravity(I)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->selecteds:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->paint:Landroid/graphics/Paint;

    .line 57
    iget-object v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    iget-object v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->path:Landroid/graphics/Path;

    .line 61
    return-void
.end method

.method private reset()V
    .locals 5

    .prologue
    .line 237
    iget-object v2, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->views:[Lcom/lb/myapidemo/lock/view/GestureLockView;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 239
    iget-object v1, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->selecteds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 240
    iget-object v1, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 241
    return-void

    .line 237
    :cond_0
    aget-object v0, v2, v1

    .line 238
    .local v0, "view":Lcom/lb/myapidemo/lock/view/GestureLockView;
    sget-object v4, Lcom/lb/myapidemo/lock/view/GestureLockView$State;->NO:Lcom/lb/myapidemo/lock/view/GestureLockView$State;

    invoke-virtual {v0, v4}, Lcom/lb/myapidemo/lock/view/GestureLockView;->setState(Lcom/lb/myapidemo/lock/view/GestureLockView$State;)V

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 229
    iget-object v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 231
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 66
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    iput v7, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->width:I

    .line 67
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    iput v7, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->height:I

    .line 69
    iget v7, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->width:I

    iget v8, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->height:I

    if-ge v7, v8, :cond_1

    iget v7, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->width:I

    :goto_0
    iput v7, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->width:I

    iput v7, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->height:I

    .line 72
    iget-object v7, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->views:[Lcom/lb/myapidemo/lock/view/GestureLockView;

    if-nez v7, :cond_0

    .line 73
    iget v7, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->count:I

    iget v8, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->count:I

    mul-int/2addr v7, v8

    new-array v7, v7, [Lcom/lb/myapidemo/lock/view/GestureLockView;

    iput-object v7, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->views:[Lcom/lb/myapidemo/lock/view/GestureLockView;

    .line 75
    iget v7, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->width:I

    mul-int/lit8 v7, v7, 0x4

    int-to-float v7, v7

    const/high16 v8, 0x3f800000

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->count:I

    mul-int/lit8 v8, v8, 0x5

    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->mGestureLockViewWidth:I

    .line 77
    iget v7, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->mGestureLockViewWidth:I

    int-to-double v7, v7

    const-wide/high16 v9, 0x3fd0000000000000L

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->mMarginBetweenLockView:I

    .line 79
    iget-object v7, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->paint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->mGestureLockViewWidth:I

    int-to-float v8, v8

    const v9, 0x3e947ae1

    mul-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v7, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->views:[Lcom/lb/myapidemo/lock/view/GestureLockView;

    array-length v7, v7

    if-lt v1, v7, :cond_2

    .line 123
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 69
    :cond_1
    iget v7, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->height:I

    goto :goto_0

    .line 83
    .restart local v1    # "i":I
    :cond_2
    new-instance v6, Lcom/lb/myapidemo/lock/view/GestureLockView;

    invoke-virtual {p0}, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/lb/myapidemo/lock/view/GestureLockView;-><init>(Landroid/content/Context;)V

    .line 85
    .local v6, "view":Lcom/lb/myapidemo/lock/view/GestureLockView;
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 86
    iget v7, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->mGestureLockViewWidth:I

    iget v8, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->mGestureLockViewWidth:I

    .line 85
    invoke-direct {v3, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 89
    .local v3, "lockerParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v7, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->count:I

    rem-int v7, v1, v7

    if-eqz v7, :cond_3

    .line 90
    const/4 v7, 0x1

    .line 91
    iget-object v8, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->views:[Lcom/lb/myapidemo/lock/view/GestureLockView;

    add-int/lit8 v9, v1, -0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/lb/myapidemo/lock/view/GestureLockView;->getId()I

    move-result v8

    .line 90
    invoke-virtual {v3, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 94
    :cond_3
    iget v7, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->count:I

    add-int/lit8 v7, v7, -0x1

    if-le v1, v7, :cond_4

    .line 95
    const/4 v7, 0x3

    .line 96
    iget-object v8, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->views:[Lcom/lb/myapidemo/lock/view/GestureLockView;

    iget v9, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->count:I

    sub-int v9, v1, v9

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/lb/myapidemo/lock/view/GestureLockView;->getId()I

    move-result v8

    .line 95
    invoke-virtual {v3, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 99
    :cond_4
    iget v4, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->mMarginBetweenLockView:I

    .line 100
    .local v4, "rightMargin":I
    iget v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->mMarginBetweenLockView:I

    .line 101
    .local v0, "bottomMargin":I
    const/4 v2, 0x0

    .line 102
    .local v2, "leftMagin":I
    const/4 v5, 0x0

    .line 106
    .local v5, "topMargin":I
    if-ltz v1, :cond_5

    iget v7, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->count:I

    if-ge v1, v7, :cond_5

    .line 107
    iget v5, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->mMarginBetweenLockView:I

    .line 109
    :cond_5
    iget v7, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->count:I

    rem-int v7, v1, v7

    if-nez v7, :cond_6

    .line 110
    iget v2, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->mMarginBetweenLockView:I

    .line 113
    :cond_6
    invoke-virtual {v3, v2, v5, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 115
    iget-object v7, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->views:[Lcom/lb/myapidemo/lock/view/GestureLockView;

    aput-object v6, v7, v1

    .line 116
    iget-object v7, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->views:[Lcom/lb/myapidemo/lock/view/GestureLockView;

    aget-object v7, v7, v1

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v7, v8}, Lcom/lb/myapidemo/lock/view/GestureLockView;->setId(I)V

    .line 117
    iget-object v7, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->views:[Lcom/lb/myapidemo/lock/view/GestureLockView;

    aget-object v7, v7, v1

    sget-object v8, Lcom/lb/myapidemo/lock/view/GestureLockView$State;->NO:Lcom/lb/myapidemo/lock/view/GestureLockView$State;

    invoke-virtual {v7, v8}, Lcom/lb/myapidemo/lock/view/GestureLockView;->setState(Lcom/lb/myapidemo/lock/view/GestureLockView$State;)V

    .line 118
    invoke-virtual {p0, v6, v3}, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v13, 0x7f

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->invalidate()V

    .line 221
    const/4 v10, 0x1

    return v10

    .line 137
    :pswitch_0
    invoke-direct {p0}, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->reset()V

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v2, v10

    .line 139
    .local v2, "downX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v3, v10

    .line 140
    .local v3, "downY":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v10, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->views:[Lcom/lb/myapidemo/lock/view/GestureLockView;

    array-length v10, v10

    if-ge v4, v10, :cond_0

    .line 141
    iget-object v10, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->views:[Lcom/lb/myapidemo/lock/view/GestureLockView;

    aget-object v7, v10, v4

    .line 143
    .local v7, "view":Lcom/lb/myapidemo/lock/view/GestureLockView;
    invoke-virtual {v7}, Lcom/lb/myapidemo/lock/view/GestureLockView;->getRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 144
    .local v6, "rect":Landroid/graphics/Rect;
    invoke-virtual {v6, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 145
    sget-object v10, Lcom/lb/myapidemo/lock/view/GestureLockView$State;->DOWN:Lcom/lb/myapidemo/lock/view/GestureLockView$State;

    invoke-virtual {v7, v10}, Lcom/lb/myapidemo/lock/view/GestureLockView;->setState(Lcom/lb/myapidemo/lock/view/GestureLockView$State;)V

    .line 146
    iget-object v10, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->selecteds:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-virtual {v7}, Lcom/lb/myapidemo/lock/view/GestureLockView;->getCenterPoint()Landroid/graphics/Point;

    move-result-object v5

    .line 150
    .local v5, "point":Landroid/graphics/Point;
    iget-object v10, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->path:Landroid/graphics/Path;

    iget v11, v5, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    iget v12, v5, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 153
    invoke-virtual {v7}, Lcom/lb/myapidemo/lock/view/GestureLockView;->getColor()I

    move-result v1

    .line 154
    .local v1, "color":I
    invoke-direct {p0, v1, v13}, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->colorUtil(II)I

    move-result v0

    .line 155
    .local v0, "c":I
    iget-object v10, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->paint:Landroid/graphics/Paint;

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    .end local v0    # "c":I
    .end local v1    # "color":I
    .end local v5    # "point":Landroid/graphics/Point;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 164
    .end local v2    # "downX":I
    .end local v3    # "downY":I
    .end local v4    # "i":I
    .end local v6    # "rect":Landroid/graphics/Rect;
    .end local v7    # "view":Lcom/lb/myapidemo/lock/view/GestureLockView;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v8, v10

    .line 165
    .local v8, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v9, v10

    .line 166
    .local v9, "y":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    iget-object v10, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->views:[Lcom/lb/myapidemo/lock/view/GestureLockView;

    array-length v10, v10

    if-ge v4, v10, :cond_0

    .line 167
    iget-object v10, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->views:[Lcom/lb/myapidemo/lock/view/GestureLockView;

    aget-object v7, v10, v4

    .line 169
    .restart local v7    # "view":Lcom/lb/myapidemo/lock/view/GestureLockView;
    invoke-virtual {v7}, Lcom/lb/myapidemo/lock/view/GestureLockView;->getRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 170
    .restart local v6    # "rect":Landroid/graphics/Rect;
    invoke-virtual {v6, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 171
    sget-object v10, Lcom/lb/myapidemo/lock/view/GestureLockView$State;->DOWN:Lcom/lb/myapidemo/lock/view/GestureLockView$State;

    invoke-virtual {v7, v10}, Lcom/lb/myapidemo/lock/view/GestureLockView;->setState(Lcom/lb/myapidemo/lock/view/GestureLockView$State;)V

    .line 172
    iget-object v10, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->selecteds:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-virtual {v7}, Lcom/lb/myapidemo/lock/view/GestureLockView;->getCenterPoint()Landroid/graphics/Point;

    move-result-object v5

    .line 176
    .restart local v5    # "point":Landroid/graphics/Point;
    iget-object v10, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->path:Landroid/graphics/Path;

    iget v11, v5, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    iget v12, v5, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 179
    invoke-virtual {v7}, Lcom/lb/myapidemo/lock/view/GestureLockView;->getColor()I

    move-result v1

    .line 180
    .restart local v1    # "color":I
    invoke-direct {p0, v1, v13}, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->colorUtil(II)I

    move-result v0

    .line 181
    .restart local v0    # "c":I
    iget-object v10, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->paint:Landroid/graphics/Paint;

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    .end local v0    # "c":I
    .end local v1    # "color":I
    .end local v5    # "point":Landroid/graphics/Point;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 191
    .end local v4    # "i":I
    .end local v6    # "rect":Landroid/graphics/Rect;
    .end local v7    # "view":Lcom/lb/myapidemo/lock/view/GestureLockView;
    .end local v8    # "x":I
    .end local v9    # "y":I
    :pswitch_2
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    iget-object v10, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->selecteds:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_0

    .line 192
    iget-object v10, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->selecteds:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lb/myapidemo/lock/view/GestureLockView;

    .line 202
    .restart local v7    # "view":Lcom/lb/myapidemo/lock/view/GestureLockView;
    iget-object v10, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->selecteds:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v4, v10, :cond_3

    .line 203
    invoke-virtual {v7}, Lcom/lb/myapidemo/lock/view/GestureLockView;->getCenterPoint()Landroid/graphics/Point;

    move-result-object v5

    .line 205
    .restart local v5    # "point":Landroid/graphics/Point;
    iget-object v10, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->path:Landroid/graphics/Path;

    iget v11, v5, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    iget v12, v5, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 209
    .end local v5    # "point":Landroid/graphics/Point;
    :cond_3
    sget-object v10, Lcom/lb/myapidemo/lock/view/GestureLockView$State;->UP:Lcom/lb/myapidemo/lock/view/GestureLockView$State;

    invoke-virtual {v7, v10}, Lcom/lb/myapidemo/lock/view/GestureLockView;->setState(Lcom/lb/myapidemo/lock/view/GestureLockView$State;)V

    .line 211
    invoke-virtual {v7}, Lcom/lb/myapidemo/lock/view/GestureLockView;->getColor()I

    move-result v1

    .line 212
    .restart local v1    # "color":I
    invoke-direct {p0, v1, v13}, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->colorUtil(II)I

    move-result v0

    .line 213
    .restart local v0    # "c":I
    iget-object v10, p0, Lcom/lb/myapidemo/lock/view/GestureLockViewGroup;->paint:Landroid/graphics/Paint;

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
