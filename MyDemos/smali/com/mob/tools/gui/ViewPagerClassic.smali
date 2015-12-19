.class public Lcom/mob/tools/gui/ViewPagerClassic;
.super Landroid/view/ViewGroup;


# static fields
.field private static final SNAP_VELOCITY:I = 0x1f4

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

.field private currentScreen:I

.field private lastMotionX:F

.field private lastMotionY:F

.field private mMaximumVelocity:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private scroller:Landroid/widget/Scroller;

.field private touchSlop:I

.field private touchState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mob/tools/gui/ViewPagerClassic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mob/tools/gui/ViewPagerClassic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mob/tools/gui/ViewPagerClassic;->touchState:I

    invoke-direct {p0, p1}, Lcom/mob/tools/gui/ViewPagerClassic;->init(Landroid/content/Context;)V

    return-void
.end method

.method private handleInterceptMove(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .local v3, "y":F
    iget v8, p0, Lcom/mob/tools/gui/ViewPagerClassic;->lastMotionX:F

    sub-float v8, v0, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v1, v8

    .local v1, "xDiff":I
    iget v8, p0, Lcom/mob/tools/gui/ViewPagerClassic;->lastMotionY:F

    sub-float v8, v3, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v4, v8

    .local v4, "yDiff":I
    iget v8, p0, Lcom/mob/tools/gui/ViewPagerClassic;->touchSlop:I

    if-le v1, v8, :cond_2

    move v2, v6

    .local v2, "xMoved":Z
    :goto_0
    iget v8, p0, Lcom/mob/tools/gui/ViewPagerClassic;->touchSlop:I

    if-le v4, v8, :cond_3

    move v5, v6

    .local v5, "yMoved":Z
    :goto_1
    if-nez v2, :cond_0

    if-eqz v5, :cond_1

    :cond_0
    if-eqz v2, :cond_1

    iput v6, p0, Lcom/mob/tools/gui/ViewPagerClassic;->touchState:I

    iput v0, p0, Lcom/mob/tools/gui/ViewPagerClassic;->lastMotionX:F

    :cond_1
    return-void

    .end local v2    # "xMoved":Z
    .end local v5    # "yMoved":Z
    :cond_2
    move v2, v7

    goto :goto_0

    .restart local v2    # "xMoved":Z
    :cond_3
    move v5, v7

    goto :goto_1
.end method

.method private handleScrollMove(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    iget-object v4, p0, Lcom/mob/tools/gui/ViewPagerClassic;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .local v3, "x1":F
    iget v4, p0, Lcom/mob/tools/gui/ViewPagerClassic;->lastMotionX:F

    sub-float/2addr v4, v3

    float-to-int v1, v4

    .local v1, "deltaX":I
    iput v3, p0, Lcom/mob/tools/gui/ViewPagerClassic;->lastMotionX:F

    if-gez v1, :cond_2

    invoke-virtual {p0}, Lcom/mob/tools/gui/ViewPagerClassic;->getScrollX()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lcom/mob/tools/gui/ViewPagerClassic;->getScrollX()I

    move-result v4

    neg-int v4, v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v4, v6}, Lcom/mob/tools/gui/ViewPagerClassic;->scrollBy(II)V

    goto :goto_0

    :cond_2
    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/mob/tools/gui/ViewPagerClassic;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/mob/tools/gui/ViewPagerClassic;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/mob/tools/gui/ViewPagerClassic;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, "lastScr":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/mob/tools/gui/ViewPagerClassic;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/mob/tools/gui/ViewPagerClassic;->getWidth()I

    move-result v5

    sub-int v0, v4, v5

    .local v0, "availableToScroll":I
    if-lez v0, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p0, v4, v6}, Lcom/mob/tools/gui/ViewPagerClassic;->scrollBy(II)V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/mob/tools/gui/ViewPagerClassic;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/mob/tools/gui/ViewPagerClassic$1;

    invoke-direct {v3, p0}, Lcom/mob/tools/gui/ViewPagerClassic$1;-><init>(Lcom/mob/tools/gui/ViewPagerClassic;)V

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/mob/tools/gui/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/mob/tools/gui/ViewPagerClassic;->touchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/mob/tools/gui/ViewPagerClassic;->mMaximumVelocity:I

    return-void
.end method

.method private scrollToScreen(IZ)V
    .locals 9
    .param p1, "whichScreen"    # I
    .param p2, "immediate"    # Z

    .prologue
    const/4 v2, 0x0

    iget v0, p0, Lcom/mob/tools/gui/ViewPagerClassic;->currentScreen:I

    if-eq p1, v0, :cond_1

    const/4 v6, 0x1

    .local v6, "changingScreens":Z
    :goto_0
    invoke-virtual {p0}, Lcom/mob/tools/gui/ViewPagerClassic;->getFocusedChild()Landroid/view/View;

    move-result-object v7

    .local v7, "focusedChild":Landroid/view/View;
    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    iget v0, p0, Lcom/mob/tools/gui/ViewPagerClassic;->currentScreen:I

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/ViewPagerClassic;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v7, v0, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->clearFocus()V

    :cond_0
    invoke-virtual {p0}, Lcom/mob/tools/gui/ViewPagerClassic;->getWidth()I

    move-result v0

    mul-int v8, p1, v0

    .local v8, "newX":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/ViewPagerClassic;->getScrollX()I

    move-result v0

    sub-int v3, v8, v0

    .local v3, "delta":I
    iget-object v0, p0, Lcom/mob/tools/gui/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/mob/tools/gui/ViewPagerClassic;->getScrollX()I

    move-result v1

    if-eqz p2, :cond_2

    move v5, v2

    :goto_1
    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/mob/tools/gui/ViewPagerClassic;->invalidate()V

    return-void

    .end local v3    # "delta":I
    .end local v6    # "changingScreens":Z
    .end local v7    # "focusedChild":Landroid/view/View;
    .end local v8    # "newX":I
    :cond_1
    move v6, v2

    goto :goto_0

    .restart local v3    # "delta":I
    .restart local v6    # "changingScreens":Z
    .restart local v7    # "focusedChild":Landroid/view/View;
    .restart local v8    # "newX":I
    :cond_2
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int/lit8 v5, v4, 0x2

    goto :goto_1
.end method


# virtual methods
.method public computeScroll()V
    .locals 6

    .prologue
    iget-object v4, p0, Lcom/mob/tools/gui/ViewPagerClassic;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/mob/tools/gui/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/mob/tools/gui/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    iget-object v5, p0, Lcom/mob/tools/gui/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/mob/tools/gui/ViewPagerClassic;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/mob/tools/gui/ViewPagerClassic;->postInvalidate()V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/mob/tools/gui/ViewPagerClassic;->currentScreen:I

    .local v1, "lastScreen":I
    iget-object v4, p0, Lcom/mob/tools/gui/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .local v2, "scrX":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/ViewPagerClassic;->getWidth()I

    move-result v3

    .local v3, "w":I
    div-int v0, v2, v3

    .local v0, "index":I
    rem-int v4, v2, v3

    div-int/lit8 v5, v3, 0x2

    if-le v4, v5, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/mob/tools/gui/ViewPagerClassic;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/mob/tools/gui/ViewPagerClassic;->currentScreen:I

    iget v4, p0, Lcom/mob/tools/gui/ViewPagerClassic;->currentScreen:I

    if-eq v1, v4, :cond_0

    iget-object v4, p0, Lcom/mob/tools/gui/ViewPagerClassic;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/mob/tools/gui/ViewPagerClassic;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    iget v5, p0, Lcom/mob/tools/gui/ViewPagerClassic;->currentScreen:I

    invoke-virtual {v4, v5, v1}, Lcom/mob/tools/gui/ViewPagerAdapter;->onScreenChange(II)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-object v2, p0, Lcom/mob/tools/gui/ViewPagerClassic;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/mob/tools/gui/ViewPagerClassic;->getChildCount()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/mob/tools/gui/ViewPagerClassic;->getDrawingTime()J

    move-result-wide v0

    .local v0, "drawingTime":J
    iget v2, p0, Lcom/mob/tools/gui/ViewPagerClassic;->currentScreen:I

    if-lez v2, :cond_2

    iget v2, p0, Lcom/mob/tools/gui/ViewPagerClassic;->currentScreen:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/mob/tools/gui/ViewPagerClassic;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/mob/tools/gui/ViewPagerClassic;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :cond_2
    iget v2, p0, Lcom/mob/tools/gui/ViewPagerClassic;->currentScreen:I

    invoke-virtual {p0, v2}, Lcom/mob/tools/gui/ViewPagerClassic;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/mob/tools/gui/ViewPagerClassic;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    iget v2, p0, Lcom/mob/tools/gui/ViewPagerClassic;->currentScreen:I

    invoke-virtual {p0}, Lcom/mob/tools/gui/ViewPagerClassic;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    iget v2, p0, Lcom/mob/tools/gui/ViewPagerClassic;->currentScreen:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/mob/tools/gui/ViewPagerClassic;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/mob/tools/gui/ViewPagerClassic;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/mob/tools/gui/ViewPagerClassic;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x11

    if-ne p2, v1, :cond_1

    iget v1, p0, Lcom/mob/tools/gui/ViewPagerClassic;->currentScreen:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/mob/tools/gui/ViewPagerClassic;->currentScreen:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/mob/tools/gui/ViewPagerClassic;->scrollToScreen(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x42

    if-ne p2, v1, :cond_2

    iget v1, p0, Lcom/mob/tools/gui/ViewPagerClassic;->currentScreen:I

    invoke-virtual {p0}, Lcom/mob/tools/gui/ViewPagerClassic;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    iget v1, p0, Lcom/mob/tools/gui/ViewPagerClassic;->currentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mob/tools/gui/ViewPagerClassic;->scrollToScreen(I)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public getCurrentScreen()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/mob/tools/gui/ViewPagerClassic;->currentScreen:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget v3, p0, Lcom/mob/tools/gui/ViewPagerClassic;->touchState:I

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v3, p0, Lcom/mob/tools/gui/ViewPagerClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/mob/tools/gui/ViewPagerClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v3, p0, Lcom/mob/tools/gui/ViewPagerClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget v3, p0, Lcom/mob/tools/gui/ViewPagerClassic;->touchState:I

    if-nez v3, :cond_0

    move v5, v4

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/ViewPagerClassic;->handleInterceptMove(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .local v1, "x1":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .local v2, "y1":F
    iput v1, p0, Lcom/mob/tools/gui/ViewPagerClassic;->lastMotionX:F

    iput v2, p0, Lcom/mob/tools/gui/ViewPagerClassic;->lastMotionY:F

    iget-object v3, p0, Lcom/mob/tools/gui/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_2
    iput v3, p0, Lcom/mob/tools/gui/ViewPagerClassic;->touchState:I

    goto :goto_1

    :cond_3
    move v3, v5

    goto :goto_2

    .end local v1    # "x1":F
    .end local v2    # "y1":F
    :pswitch_2
    iget-object v3, p0, Lcom/mob/tools/gui/ViewPagerClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/mob/tools/gui/ViewPagerClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mob/tools/gui/ViewPagerClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_4
    iput v4, p0, Lcom/mob/tools/gui/ViewPagerClassic;->touchState:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    iget-object v7, p0, Lcom/mob/tools/gui/ViewPagerClassic;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-nez v7, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    .local v1, "cLeft":I
    sub-int v3, p4, p2

    .local v3, "cWidth":I
    const/4 v2, 0x0

    .local v2, "cTop":I
    sub-int v0, p5, p3

    .local v0, "cHeight":I
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/ViewPagerClassic;->getChildCount()I

    move-result v5

    .local v5, "count":I
    :goto_0
    if-ge v6, v5, :cond_0

    invoke-virtual {p0, v6}, Lcom/mob/tools/gui/ViewPagerClassic;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_2

    add-int v7, v1, v3

    invoke-virtual {v4, v1, v2, v7, v0}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v1, v3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, 0x40000000

    iget-object v7, p0, Lcom/mob/tools/gui/ViewPagerClassic;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-nez v7, :cond_1

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/mob/tools/gui/ViewPagerClassic;->getChildCount()I

    move-result v3

    .local v3, "count":I
    const/4 v6, 0x0

    .local v6, "maxHeight":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/ViewPagerClassic;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/mob/tools/utils/R;->getScreenWidth(Landroid/content/Context;)I

    move-result v7

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .local v1, "adjustedWidthMeasureSpec":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_3

    invoke-virtual {p0, v5}, Lcom/mob/tools/gui/ViewPagerClassic;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, "child":Landroid/view/View;
    const/4 v7, 0x0

    invoke-virtual {v2, v1, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .local v4, "height":I
    if-le v4, v6, :cond_2

    move v6, v4

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "height":I
    :cond_3
    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .local v0, "adjustedHeightMeasureSpec":I
    invoke-super {p0, v1, v0}, Landroid/view/ViewGroup;->onMeasure(II)V

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_0

    invoke-virtual {p0, v5}, Lcom/mob/tools/gui/ViewPagerClassic;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "child":Landroid/view/View;
    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/mob/tools/gui/ViewPagerClassic;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-nez v8, :cond_0

    :goto_0
    return v6

    :cond_0
    iget-object v8, p0, Lcom/mob/tools/gui/ViewPagerClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v8, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/mob/tools/gui/ViewPagerClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v8, p0, Lcom/mob/tools/gui/ViewPagerClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .local v5, "x":F
    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    move v6, v7

    goto :goto_0

    :pswitch_0
    iget v6, p0, Lcom/mob/tools/gui/ViewPagerClassic;->touchState:I

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/mob/tools/gui/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/mob/tools/gui/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_3
    iput v5, p0, Lcom/mob/tools/gui/ViewPagerClassic;->lastMotionX:F

    goto :goto_1

    :pswitch_1
    iget v6, p0, Lcom/mob/tools/gui/ViewPagerClassic;->touchState:I

    if-ne v6, v7, :cond_4

    invoke-direct {p0, p1}, Lcom/mob/tools/gui/ViewPagerClassic;->handleScrollMove(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/mob/tools/gui/ViewPagerClassic;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/mob/tools/gui/ViewPagerClassic;->touchState:I

    if-ne v6, v7, :cond_2

    invoke-direct {p0, p1}, Lcom/mob/tools/gui/ViewPagerClassic;->handleScrollMove(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_2
    iget v8, p0, Lcom/mob/tools/gui/ViewPagerClassic;->touchState:I

    if-ne v8, v7, :cond_5

    iget-object v2, p0, Lcom/mob/tools/gui/ViewPagerClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    .local v2, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v8, 0x3e8

    iget v9, p0, Lcom/mob/tools/gui/ViewPagerClassic;->mMaximumVelocity:I

    int-to-float v9, v9

    invoke-virtual {v2, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v8

    float-to-int v3, v8

    .local v3, "velocityX":I
    const/16 v8, 0x1f4

    if-le v3, v8, :cond_6

    iget v8, p0, Lcom/mob/tools/gui/ViewPagerClassic;->currentScreen:I

    if-lez v8, :cond_6

    iget v8, p0, Lcom/mob/tools/gui/ViewPagerClassic;->currentScreen:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v8}, Lcom/mob/tools/gui/ViewPagerClassic;->scrollToScreen(I)V

    :goto_2
    iget-object v8, p0, Lcom/mob/tools/gui/ViewPagerClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/mob/tools/gui/ViewPagerClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/mob/tools/gui/ViewPagerClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    .end local v2    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v3    # "velocityX":I
    :cond_5
    iput v6, p0, Lcom/mob/tools/gui/ViewPagerClassic;->touchState:I

    goto :goto_1

    .restart local v2    # "velocityTracker":Landroid/view/VelocityTracker;
    .restart local v3    # "velocityX":I
    :cond_6
    const/16 v8, -0x1f4

    if-ge v3, v8, :cond_7

    iget v8, p0, Lcom/mob/tools/gui/ViewPagerClassic;->currentScreen:I

    invoke-virtual {p0}, Lcom/mob/tools/gui/ViewPagerClassic;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_7

    iget v8, p0, Lcom/mob/tools/gui/ViewPagerClassic;->currentScreen:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v8}, Lcom/mob/tools/gui/ViewPagerClassic;->scrollToScreen(I)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/mob/tools/gui/ViewPagerClassic;->getWidth()I

    move-result v1

    .local v1, "screenWidth":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/ViewPagerClassic;->getScrollX()I

    move-result v8

    div-int/lit8 v9, v1, 0x2

    add-int/2addr v8, v9

    div-int v4, v8, v1

    .local v4, "whichScreen":I
    invoke-virtual {p0, v4}, Lcom/mob/tools/gui/ViewPagerClassic;->scrollToScreen(I)V

    goto :goto_2

    .end local v1    # "screenWidth":I
    .end local v2    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v3    # "velocityX":I
    .end local v4    # "whichScreen":I
    :pswitch_3
    iput v6, p0, Lcom/mob/tools/gui/ViewPagerClassic;->touchState:I

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public scrollLeft()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/mob/tools/gui/ViewPagerClassic;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/mob/tools/gui/ViewPagerClassic;->currentScreen:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/gui/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mob/tools/gui/ViewPagerClassic;->currentScreen:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/ViewPagerClassic;->scrollToScreen(I)V

    goto :goto_0
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/mob/tools/gui/ViewPagerClassic;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/mob/tools/gui/ViewPagerClassic;->currentScreen:I

    invoke-virtual {p0}, Lcom/mob/tools/gui/ViewPagerClassic;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/mob/tools/gui/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mob/tools/gui/ViewPagerClassic;->currentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/ViewPagerClassic;->scrollToScreen(I)V

    goto :goto_0
.end method

.method public scrollToScreen(I)V
    .locals 1
    .param p1, "whichScreen"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mob/tools/gui/ViewPagerClassic;->scrollToScreen(IZ)V

    return-void
.end method

.method public setAdapter(Lcom/mob/tools/gui/ViewPagerAdapter;)V
    .locals 3
    .param p1, "adapter"    # Lcom/mob/tools/gui/ViewPagerAdapter;

    .prologue
    iput-object p1, p0, Lcom/mob/tools/gui/ViewPagerClassic;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    invoke-virtual {p0}, Lcom/mob/tools/gui/ViewPagerClassic;->removeAllViews()V

    const/4 v2, 0x0

    iput v2, p0, Lcom/mob/tools/gui/ViewPagerClassic;->currentScreen:I

    iget-object v2, p0, Lcom/mob/tools/gui/ViewPagerClassic;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Lcom/mob/tools/gui/ViewPagerAdapter;->getCount()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p0}, Lcom/mob/tools/gui/ViewPagerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mob/tools/gui/ViewPagerClassic;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setCurrentScreen(I)V
    .locals 6
    .param p1, "theCurrentScreen"    # I

    .prologue
    const/4 v5, 0x0

    iget-object v3, p0, Lcom/mob/tools/gui/ViewPagerClassic;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/mob/tools/gui/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/mob/tools/gui/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_1
    iget v0, p0, Lcom/mob/tools/gui/ViewPagerClassic;->currentScreen:I

    .local v0, "lastScreen":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/ViewPagerClassic;->getChildCount()I

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/mob/tools/gui/ViewPagerClassic;->currentScreen:I

    iget-object v3, p0, Lcom/mob/tools/gui/ViewPagerClassic;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    iget v4, p0, Lcom/mob/tools/gui/ViewPagerClassic;->currentScreen:I

    invoke-virtual {v3, v4, v0}, Lcom/mob/tools/gui/ViewPagerAdapter;->onScreenChange(II)V

    invoke-virtual {p0}, Lcom/mob/tools/gui/ViewPagerClassic;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/R;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    .local v2, "scrW":I
    iget v3, p0, Lcom/mob/tools/gui/ViewPagerClassic;->currentScreen:I

    mul-int v1, v3, v2

    .local v1, "newX":I
    iget-object v3, p0, Lcom/mob/tools/gui/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-virtual {p0, v1, v5}, Lcom/mob/tools/gui/ViewPagerClassic;->scrollTo(II)V

    goto :goto_0
.end method
