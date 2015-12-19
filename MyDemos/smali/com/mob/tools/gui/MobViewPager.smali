.class public Lcom/mob/tools/gui/MobViewPager;
.super Landroid/view/ViewGroup;


# static fields
.field private static final SNAP_VELOCITY:I = 0x1f4

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

.field private currentPage:Landroid/view/View;

.field private currentScreen:I

.field private lastMotionX:F

.field private lastMotionY:F

.field private mMaximumVelocity:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private nextPage:Landroid/view/View;

.field private previousPage:Landroid/view/View;

.field private screenCount:I

.field private scroller:Landroid/widget/Scroller;

.field private touchSlop:I

.field private touchState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mob/tools/gui/MobViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mob/tools/gui/MobViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    iput v0, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    invoke-direct {p0, p1}, Lcom/mob/tools/gui/MobViewPager;->init(Landroid/content/Context;)V

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
    iget v8, p0, Lcom/mob/tools/gui/MobViewPager;->lastMotionX:F

    sub-float v8, v0, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v1, v8

    .local v1, "xDiff":I
    iget v8, p0, Lcom/mob/tools/gui/MobViewPager;->lastMotionY:F

    sub-float v8, v3, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v4, v8

    .local v4, "yDiff":I
    iget v8, p0, Lcom/mob/tools/gui/MobViewPager;->touchSlop:I

    if-le v1, v8, :cond_2

    move v2, v6

    .local v2, "xMoved":Z
    :goto_0
    iget v8, p0, Lcom/mob/tools/gui/MobViewPager;->touchSlop:I

    if-le v4, v8, :cond_3

    move v5, v6

    .local v5, "yMoved":Z
    :goto_1
    if-nez v2, :cond_0

    if-eqz v5, :cond_1

    :cond_0
    if-eqz v2, :cond_1

    iput v6, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    iput v0, p0, Lcom/mob/tools/gui/MobViewPager;->lastMotionX:F

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

    iget-object v4, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .local v3, "x1":F
    iget v4, p0, Lcom/mob/tools/gui/MobViewPager;->lastMotionX:F

    sub-float/2addr v4, v3

    float-to-int v1, v4

    .local v1, "deltaX":I
    iput v3, p0, Lcom/mob/tools/gui/MobViewPager;->lastMotionX:F

    if-gez v1, :cond_2

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getScrollX()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getScrollX()I

    move-result v4

    neg-int v4, v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v4, v6}, Lcom/mob/tools/gui/MobViewPager;->scrollBy(II)V

    goto :goto_0

    :cond_2
    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/mob/tools/gui/MobViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, "lastScr":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getWidth()I

    move-result v5

    sub-int v0, v4, v5

    .local v0, "availableToScroll":I
    if-lez v0, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p0, v4, v6}, Lcom/mob/tools/gui/MobViewPager;->scrollBy(II)V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/mob/tools/gui/MobViewPager$1;

    invoke-direct {v3, p0}, Lcom/mob/tools/gui/MobViewPager$1;-><init>(Lcom/mob/tools/gui/MobViewPager;)V

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Landroid/widget/Scroller;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/mob/tools/gui/MobViewPager;->touchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/mob/tools/gui/MobViewPager;->mMaximumVelocity:I

    return-void
.end method

.method private onScreenChange(I)V
    .locals 7
    .param p1, "lastScreen"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    if-le v3, p1, :cond_2

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    sub-int/2addr v3, p1

    if-ge v0, v3, :cond_5

    add-int v3, p1, v0

    add-int/lit8 v1, v3, 0x1

    .local v1, "screen":I
    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    .local v2, "tmp":Landroid/view/View;
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    iput-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    iput-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getChildCount()I

    move-result v3

    if-lt v3, v6, :cond_0

    invoke-virtual {p0, v5}, Lcom/mob/tools/gui/MobViewPager;->removeViewAt(I)V

    :cond_0
    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4, v2, p0}, Lcom/mob/tools/gui/ViewPagerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/mob/tools/gui/MobViewPager;->addView(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "screen":I
    .end local v2    # "tmp":Landroid/view/View;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    sub-int v3, p1, v3

    if-ge v0, v3, :cond_5

    sub-int v3, p1, v0

    add-int/lit8 v1, v3, -0x1

    .restart local v1    # "screen":I
    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    .restart local v2    # "tmp":Landroid/view/View;
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    iput-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    iput-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getChildCount()I

    move-result v3

    if-lt v3, v6, :cond_3

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/mob/tools/gui/MobViewPager;->removeViewAt(I)V

    :cond_3
    if-lez v1, :cond_4

    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4, v2, p0}, Lcom/mob/tools/gui/ViewPagerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    invoke-virtual {p0, v3, v5}, Lcom/mob/tools/gui/MobViewPager;->addView(Landroid/view/View;I)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iput-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    goto :goto_3

    .end local v1    # "screen":I
    .end local v2    # "tmp":Landroid/view/View;
    :cond_5
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    iget v4, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    invoke-virtual {v3, v4, p1}, Lcom/mob/tools/gui/ViewPagerAdapter;->onScreenChange(II)V

    .end local v0    # "i":I
    :cond_6
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 6

    .prologue
    iget-object v4, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    if-gtz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    iget-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/mob/tools/gui/MobViewPager;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->postInvalidate()V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    .local v1, "lastScreen":I
    iget-object v4, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .local v2, "scrX":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getWidth()I

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

    iget v5, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    iget v4, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    if-eq v1, v4, :cond_0

    invoke-direct {p0, v1}, Lcom/mob/tools/gui/MobViewPager;->onScreenChange(I)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getDrawingTime()J

    move-result-wide v0

    .local v0, "drawingTime":J
    iget v2, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/mob/tools/gui/MobViewPager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :cond_2
    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/mob/tools/gui/MobViewPager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    iget v2, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/mob/tools/gui/MobViewPager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 4
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x11

    if-ne p2, v1, :cond_1

    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v3}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreen(IZ)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x42

    if-ne p2, v1, :cond_2

    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    iget v2, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreen(IZ)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public getCurrentScreen()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

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

    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    if-nez v3, :cond_0

    move v5, v4

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/MobViewPager;->handleInterceptMove(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .local v1, "x1":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .local v2, "y1":F
    iput v1, p0, Lcom/mob/tools/gui/MobViewPager;->lastMotionX:F

    iput v2, p0, Lcom/mob/tools/gui/MobViewPager;->lastMotionY:F

    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_2
    iput v3, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    goto :goto_1

    :cond_3
    move v3, v5

    goto :goto_2

    .end local v1    # "x1":F
    .end local v2    # "y1":F
    :pswitch_2
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_4
    iput v4, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

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
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v6, 0x0

    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    if-gtz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sub-int v2, p4, p2

    .local v2, "width":I
    sub-int v1, p5, p3

    .local v1, "height":I
    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    mul-int v0, v3, v2

    .local v0, "cLeft":I
    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    sub-int v4, v0, v2

    invoke-virtual {v3, v4, v6, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_2
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    add-int v4, v0, v2

    invoke-virtual {v3, v0, v6, v4, v1}, Landroid/view/View;->layout(IIII)V

    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    iget v4, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    add-int v4, v0, v2

    add-int v5, v0, v2

    add-int/2addr v5, v2

    invoke-virtual {v3, v4, v6, v5, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    iget-object v6, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    if-gtz v6, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getMeasuredWidth()I

    move-result v5

    .local v5, "width":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getMeasuredHeight()I

    move-result v3

    .local v3, "height":I
    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .local v1, "adjustedWidthMeasureSpec":I
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .local v0, "adjustedHeightMeasureSpec":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_0

    invoke-virtual {p0, v4}, Lcom/mob/tools/gui/MobViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-nez v8, :cond_0

    :goto_0
    return v6

    :cond_0
    iget-object v8, p0, Lcom/mob/tools/gui/MobViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v8, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/mob/tools/gui/MobViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v8, p0, Lcom/mob/tools/gui/MobViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

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
    iget v6, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_3
    iput v5, p0, Lcom/mob/tools/gui/MobViewPager;->lastMotionX:F

    goto :goto_1

    :pswitch_1
    iget v6, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    if-ne v6, v7, :cond_4

    invoke-direct {p0, p1}, Lcom/mob/tools/gui/MobViewPager;->handleScrollMove(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/mob/tools/gui/MobViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    if-ne v6, v7, :cond_2

    invoke-direct {p0, p1}, Lcom/mob/tools/gui/MobViewPager;->handleScrollMove(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_2
    iget v8, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    if-ne v8, v7, :cond_5

    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .local v2, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v8, 0x3e8

    iget v9, p0, Lcom/mob/tools/gui/MobViewPager;->mMaximumVelocity:I

    int-to-float v9, v9

    invoke-virtual {v2, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v8

    float-to-int v3, v8

    .local v3, "velocityX":I
    const/16 v8, 0x1f4

    if-le v3, v8, :cond_6

    iget v8, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    if-lez v8, :cond_6

    iget v8, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v8, v6}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreen(IZ)V

    :goto_2
    iget-object v8, p0, Lcom/mob/tools/gui/MobViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/mob/tools/gui/MobViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/mob/tools/gui/MobViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .end local v2    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v3    # "velocityX":I
    :cond_5
    iput v6, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

    goto :goto_1

    .restart local v2    # "velocityTracker":Landroid/view/VelocityTracker;
    .restart local v3    # "velocityX":I
    :cond_6
    const/16 v8, -0x1f4

    if-ge v3, v8, :cond_7

    iget v8, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    iget v9, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_7

    iget v8, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v8, v6}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreen(IZ)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getWidth()I

    move-result v1

    .local v1, "screenWidth":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getScrollX()I

    move-result v8

    div-int/lit8 v9, v1, 0x2

    add-int/2addr v8, v9

    div-int v4, v8, v1

    .local v4, "whichScreen":I
    invoke-virtual {p0, v4, v6}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreen(IZ)V

    goto :goto_2

    .end local v1    # "screenWidth":I
    .end local v2    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v3    # "velocityX":I
    .end local v4    # "whichScreen":I
    :pswitch_3
    iput v6, p0, Lcom/mob/tools/gui/MobViewPager;->touchState:I

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

.method public scrollLeft(Z)V
    .locals 1
    .param p1, "immediate"    # Z

    .prologue
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreen(IZ)V

    :cond_0
    return-void
.end method

.method public scrollRight(Z)V
    .locals 2
    .param p1, "immediate"    # Z

    .prologue
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreen(IZ)V

    :cond_0
    return-void
.end method

.method public scrollToScreen(IZ)V
    .locals 7
    .param p1, "whichScreen"    # I
    .param p2, "immediate"    # Z

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_0
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getWidth()I

    move-result v0

    mul-int v6, p1, v0

    .local v6, "newX":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getScrollX()I

    move-result v0

    sub-int v3, v6, v0

    .local v3, "delta":I
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getScrollX()I

    move-result v1

    if-eqz p2, :cond_1

    move v5, v2

    :goto_0
    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->invalidate()V

    return-void

    :cond_1
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int/lit8 v5, v4, 0x2

    goto :goto_0
.end method

.method public setAdapter(Lcom/mob/tools/gui/ViewPagerAdapter;)V
    .locals 3
    .param p1, "adapter"    # Lcom/mob/tools/gui/ViewPagerAdapter;

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/ViewPagerAdapter;->setMobViewPager(Lcom/mob/tools/gui/MobViewPager;)V

    :cond_0
    iput-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->adapter:Lcom/mob/tools/gui/ViewPagerAdapter;

    invoke-virtual {v0, p0}, Lcom/mob/tools/gui/ViewPagerAdapter;->setMobViewPager(Lcom/mob/tools/gui/MobViewPager;)V

    :cond_1
    if-nez p1, :cond_3

    iput v2, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->removeAllViews()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/mob/tools/gui/ViewPagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    if-gtz v0, :cond_4

    iput v2, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->removeAllViews()V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    if-gt v0, v1, :cond_5

    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mob/tools/gui/MobViewPager;->scrollToScreen(IZ)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->removeAllViews()V

    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    if-lez v0, :cond_6

    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    invoke-virtual {p1, v0, v1, p0}, Lcom/mob/tools/gui/ViewPagerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->previousPage:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/MobViewPager;->addView(Landroid/view/View;)V

    :cond_6
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    invoke-virtual {p1, v0, v1, p0}, Lcom/mob/tools/gui/ViewPagerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentPage:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/MobViewPager;->addView(Landroid/view/View;)V

    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->screenCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->currentScreen:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    invoke-virtual {p1, v0, v1, p0}, Lcom/mob/tools/gui/ViewPagerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->nextPage:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/MobViewPager;->addView(Landroid/view/View;)V

    goto :goto_0
.end method
