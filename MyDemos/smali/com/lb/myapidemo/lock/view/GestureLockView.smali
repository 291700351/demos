.class public Lcom/lb/myapidemo/lock/view/GestureLockView;
.super Landroid/view/View;
.source "GestureLockView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lb/myapidemo/lock/view/GestureLockView$State;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$lb$myapidemo$lock$view$GestureLockView$State:[I


# instance fields
.field private downColor:I

.field private height:I

.field private mState:Lcom/lb/myapidemo/lock/view/GestureLockView$State;

.field private neiyuanColor:I

.field private noColor:I

.field private paint:Landroid/graphics/Paint;

.field private radius:I

.field protected titleHeight:I

.field private upColor:I

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method static synthetic $SWITCH_TABLE$com$lb$myapidemo$lock$view$GestureLockView$State()[I
    .locals 3

    .prologue
    .line 18
    sget-object v0, Lcom/lb/myapidemo/lock/view/GestureLockView;->$SWITCH_TABLE$com$lb$myapidemo$lock$view$GestureLockView$State:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/lb/myapidemo/lock/view/GestureLockView$State;->values()[Lcom/lb/myapidemo/lock/view/GestureLockView$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/lb/myapidemo/lock/view/GestureLockView$State;->DOWN:Lcom/lb/myapidemo/lock/view/GestureLockView$State;

    invoke-virtual {v1}, Lcom/lb/myapidemo/lock/view/GestureLockView$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/lb/myapidemo/lock/view/GestureLockView$State;->NO:Lcom/lb/myapidemo/lock/view/GestureLockView$State;

    invoke-virtual {v1}, Lcom/lb/myapidemo/lock/view/GestureLockView$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/lb/myapidemo/lock/view/GestureLockView$State;->UP:Lcom/lb/myapidemo/lock/view/GestureLockView$State;

    invoke-virtual {v1}, Lcom/lb/myapidemo/lock/view/GestureLockView$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/lb/myapidemo/lock/view/GestureLockView;->$SWITCH_TABLE$com$lb$myapidemo$lock$view$GestureLockView$State:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    sget-object v0, Lcom/lb/myapidemo/lock/view/GestureLockView$State;->NO:Lcom/lb/myapidemo/lock/view/GestureLockView$State;

    iput-object v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->mState:Lcom/lb/myapidemo/lock/view/GestureLockView$State;

    .line 38
    const v0, -0x1f2425

    iput v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->noColor:I

    .line 39
    const v0, -0xc87037

    iput v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->downColor:I

    .line 40
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->upColor:I

    .line 41
    const v0, -0x6c6f70

    iput v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->neiyuanColor:I

    .line 63
    invoke-direct {p0}, Lcom/lb/myapidemo/lock/view/GestureLockView;->init()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    sget-object v0, Lcom/lb/myapidemo/lock/view/GestureLockView$State;->NO:Lcom/lb/myapidemo/lock/view/GestureLockView$State;

    iput-object v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->mState:Lcom/lb/myapidemo/lock/view/GestureLockView$State;

    .line 38
    const v0, -0x1f2425

    iput v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->noColor:I

    .line 39
    const v0, -0xc87037

    iput v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->downColor:I

    .line 40
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->upColor:I

    .line 41
    const v0, -0x6c6f70

    iput v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->neiyuanColor:I

    .line 58
    invoke-direct {p0}, Lcom/lb/myapidemo/lock/view/GestureLockView;->init()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    sget-object v0, Lcom/lb/myapidemo/lock/view/GestureLockView$State;->NO:Lcom/lb/myapidemo/lock/view/GestureLockView$State;

    iput-object v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->mState:Lcom/lb/myapidemo/lock/view/GestureLockView$State;

    .line 38
    const v0, -0x1f2425

    iput v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->noColor:I

    .line 39
    const v0, -0xc87037

    iput v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->downColor:I

    .line 40
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->upColor:I

    .line 41
    const v0, -0x6c6f70

    iput v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->neiyuanColor:I

    .line 53
    invoke-direct {p0}, Lcom/lb/myapidemo/lock/view/GestureLockView;->init()V

    .line 54
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->paint:Landroid/graphics/Paint;

    .line 72
    iget-object v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    return-void
.end method


# virtual methods
.method public getCenterPoint()Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/lb/myapidemo/lock/view/GestureLockView;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 162
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 163
    .local v0, "centerX":I
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 164
    .local v1, "centerY":I
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 165
    .local v2, "p":Landroid/graphics/Point;
    return-object v2
.end method

.method public getColor()I
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->mState:Lcom/lb/myapidemo/lock/view/GestureLockView$State;

    sget-object v1, Lcom/lb/myapidemo/lock/view/GestureLockView$State;->NO:Lcom/lb/myapidemo/lock/view/GestureLockView$State;

    if-ne v0, v1, :cond_0

    .line 174
    iget v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->noColor:I

    .line 178
    :goto_0
    return v0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->mState:Lcom/lb/myapidemo/lock/view/GestureLockView$State;

    sget-object v1, Lcom/lb/myapidemo/lock/view/GestureLockView$State;->DOWN:Lcom/lb/myapidemo/lock/view/GestureLockView$State;

    if-ne v0, v1, :cond_1

    .line 176
    iget v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->downColor:I

    goto :goto_0

    .line 178
    :cond_1
    iget v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->upColor:I

    goto :goto_0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/lb/myapidemo/lock/view/GestureLockView;->getLeft()I

    move-result v1

    .line 149
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/lb/myapidemo/lock/view/GestureLockView;->getTop()I

    move-result v3

    .line 150
    .local v3, "top":I
    iget v4, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->radius:I

    mul-int/lit8 v4, v4, 0x2

    add-int v2, v1, v4

    .line 151
    .local v2, "right":I
    iget v4, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->radius:I

    mul-int/lit8 v4, v4, 0x2

    add-int v0, v3, v4

    .line 152
    .local v0, "bottom":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v3, 0x3f800000

    .line 93
    iget-object v1, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 94
    .local v0, "color":I
    invoke-static {}, Lcom/lb/myapidemo/lock/view/GestureLockView;->$SWITCH_TABLE$com$lb$myapidemo$lock$view$GestureLockView$State()[I

    move-result-object v1

    iget-object v2, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->mState:Lcom/lb/myapidemo/lock/view/GestureLockView$State;

    invoke-virtual {v2}, Lcom/lb/myapidemo/lock/view/GestureLockView$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 127
    :goto_0
    iget-object v1, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    return-void

    .line 97
    :pswitch_0
    iget-object v1, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->noColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget v1, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->y:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->radius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 100
    iget-object v1, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->neiyuanColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget v1, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->y:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->radius:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 106
    :pswitch_1
    iget-object v1, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->downColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object v1, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    iget-object v1, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 109
    iget v1, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->y:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->radius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 111
    iget-object v1, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    iget-object v1, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->downColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    iget v1, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->y:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->radius:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 117
    :pswitch_2
    iget-object v1, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->upColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    iget-object v1, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    iget-object v1, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 120
    iget v1, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->y:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->radius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 122
    iget-object v1, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    iget-object v1, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->upColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    iget v1, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->y:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->radius:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 80
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->width:I

    .line 81
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->height:I

    .line 84
    iget v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->width:I

    iget v1, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->height:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->width:I

    div-int/lit8 v0, v0, 0x2

    :goto_0
    iput v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->radius:I

    .line 85
    iget v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->radius:I

    iput v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->x:I

    .line 86
    iget v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->radius:I

    iput v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->y:I

    .line 87
    return-void

    .line 84
    :cond_0
    iget v0, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->height:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public setState(Lcom/lb/myapidemo/lock/view/GestureLockView$State;)V
    .locals 0
    .param p1, "state"    # Lcom/lb/myapidemo/lock/view/GestureLockView$State;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/lb/myapidemo/lock/view/GestureLockView;->mState:Lcom/lb/myapidemo/lock/view/GestureLockView$State;

    .line 139
    invoke-virtual {p0}, Lcom/lb/myapidemo/lock/view/GestureLockView;->invalidate()V

    .line 140
    return-void
.end method
