.class public Lcom/mob/tools/gui/ScaledImageView;
.super Landroid/widget/ImageView;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;
    }
.end annotation


# static fields
.field private static final DRAG_1:I = 0x1

.field private static final DRAG_2:I = 0x2

.field private static final NONE:I = 0x0

.field private static final ZOOM:I = 0x3


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private distSquare:F

.field private downPoint:[F

.field private dragScrollMinDistSquare:I

.field private listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

.field private matrix:Landroid/graphics/Matrix;

.field private mode:I

.field private savedMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/mob/tools/gui/ScaledImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/mob/tools/gui/ScaledImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/mob/tools/gui/ScaledImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/mob/tools/gui/ScaledImageView;->dragScrollMinDistSquare:I

    iget v0, p0, Lcom/mob/tools/gui/ScaledImageView;->dragScrollMinDistSquare:I

    iget v1, p0, Lcom/mob/tools/gui/ScaledImageView;->dragScrollMinDistSquare:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/mob/tools/gui/ScaledImageView;->dragScrollMinDistSquare:I

    invoke-virtual {p0, p0}, Lcom/mob/tools/gui/ScaledImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public getCropedBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "cropRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getHeight()I

    move-result v5

    invoke-static {p0, v4, v5}, Lcom/mob/tools/utils/BitmapHelper;->captureView(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bmTmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    const-string v5, "ivPhoto.getDrawingCache() returns null"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-object v2, v3

    .end local v0    # "bmTmp":Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .restart local v0    # "bmTmp":Landroid/graphics/Bitmap;
    :cond_0
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v0, v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "scaledBm":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    .end local v0    # "bmTmp":Landroid/graphics/Bitmap;
    .end local v2    # "scaledBm":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move-object v2, v3

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    const/4 v8, 0x0

    :goto_0
    return v8

    :sswitch_0
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    aput v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    aput v10, v8, v9

    iput-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->downPoint:[F

    const/4 v8, 0x1

    iput v8, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I

    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v8}, Lcom/mob/tools/gui/ScaledImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :goto_2
    const/4 v8, 0x1

    goto :goto_0

    :sswitch_1
    iget-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    iget-object v9, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-interface {v8, v9}, Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;->onMactrixChage(Landroid/graphics/Matrix;)V

    :cond_1
    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    iget-object v9, p0, Lcom/mob/tools/gui/ScaledImageView;->downPoint:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-float v0, v8, v9

    .local v0, "dx":F
    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iget-object v9, p0, Lcom/mob/tools/gui/ScaledImageView;->downPoint:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-float v1, v8, v9

    .local v1, "dy":F
    iget v8, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    mul-float v8, v0, v0

    mul-float v9, v1, v1

    add-float/2addr v8, v9

    iget v9, p0, Lcom/mob/tools/gui/ScaledImageView;->dragScrollMinDistSquare:I

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_2

    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->performClick()Z

    :cond_2
    const/4 v8, 0x0

    iput v8, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v0    # "dx":F
    .end local v1    # "dy":F
    :catch_0
    move-exception v7

    .local v7, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v7    # "t":Ljava/lang/Throwable;
    :sswitch_2
    const/4 v8, 0x2

    :try_start_1
    new-array v6, v8, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    aput v9, v6, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    aput v9, v6, v8

    .local v6, "start":[F
    const/4 v8, 0x2

    new-array v2, v8, [F

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    aput v9, v2, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    aput v9, v2, v8

    .local v2, "end":[F
    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v9, 0x0

    aget v9, v2, v9

    sub-float v0, v8, v9

    .restart local v0    # "dx":F
    const/4 v8, 0x1

    aget v8, v6, v8

    const/4 v9, 0x1

    aget v9, v2, v9

    sub-float v1, v8, v9

    .restart local v1    # "dy":F
    mul-float v8, v0, v0

    mul-float v9, v1, v1

    add-float/2addr v8, v9

    iput v8, p0, Lcom/mob/tools/gui/ScaledImageView;->distSquare:F

    const/4 v8, 0x3

    iput v8, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I

    goto/16 :goto_1

    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v2    # "end":[F
    .end local v6    # "start":[F
    :sswitch_3
    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    aput v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    aput v10, v8, v9

    iput-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->downPoint:[F

    iget-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    const/4 v8, 0x2

    iput v8, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I

    goto/16 :goto_1

    :sswitch_4
    const/4 v8, 0x2

    new-array v6, v8, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    aput v9, v6, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    aput v9, v6, v8

    .restart local v6    # "start":[F
    const/4 v8, 0x2

    new-array v2, v8, [F

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    aput v9, v2, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    aput v9, v2, v8

    .restart local v2    # "end":[F
    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v9, 0x0

    aget v9, v2, v9

    sub-float v0, v8, v9

    .restart local v0    # "dx":F
    const/4 v8, 0x1

    aget v8, v6, v8

    const/4 v9, 0x1

    aget v9, v2, v9

    sub-float v1, v8, v9

    .restart local v1    # "dy":F
    mul-float v8, v0, v0

    mul-float v9, v1, v1

    add-float/2addr v8, v9

    iput v8, p0, Lcom/mob/tools/gui/ScaledImageView;->distSquare:F

    const/4 v8, 0x3

    iput v8, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I

    goto/16 :goto_1

    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v2    # "end":[F
    .end local v6    # "start":[F
    :sswitch_5
    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    aput v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    aput v10, v8, v9

    iput-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->downPoint:[F

    iget-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    const/4 v8, 0x1

    iput v8, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I

    goto/16 :goto_1

    :sswitch_6
    iget v8, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    const/4 v8, 0x2

    new-array v2, v8, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    aput v9, v2, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    aput v9, v2, v8

    .restart local v2    # "end":[F
    iget-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Lcom/mob/tools/gui/ScaledImageView;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    const/4 v9, 0x0

    aget v9, v2, v9

    iget-object v10, p0, Lcom/mob/tools/gui/ScaledImageView;->downPoint:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-float/2addr v9, v10

    const/4 v10, 0x1

    aget v10, v2, v10

    iget-object v11, p0, Lcom/mob/tools/gui/ScaledImageView;->downPoint:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_1

    .end local v2    # "end":[F
    :cond_3
    iget v8, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    const/4 v8, 0x2

    new-array v2, v8, [F

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    aput v9, v2, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    aput v9, v2, v8

    .restart local v2    # "end":[F
    iget-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Lcom/mob/tools/gui/ScaledImageView;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    const/4 v9, 0x0

    aget v9, v2, v9

    iget-object v10, p0, Lcom/mob/tools/gui/ScaledImageView;->downPoint:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-float/2addr v9, v10

    const/4 v10, 0x1

    aget v10, v2, v10

    iget-object v11, p0, Lcom/mob/tools/gui/ScaledImageView;->downPoint:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_1

    .end local v2    # "end":[F
    :cond_4
    iget v8, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    const/4 v8, 0x2

    new-array v6, v8, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    aput v9, v6, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    aput v9, v6, v8

    .restart local v6    # "start":[F
    const/4 v8, 0x2

    new-array v2, v8, [F

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    aput v9, v2, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    aput v9, v2, v8

    .restart local v2    # "end":[F
    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v9, 0x0

    aget v9, v2, v9

    sub-float v0, v8, v9

    .restart local v0    # "dx":F
    const/4 v8, 0x1

    aget v8, v6, v8

    const/4 v9, 0x1

    aget v9, v2, v9

    sub-float v1, v8, v9

    .restart local v1    # "dy":F
    mul-float v8, v0, v0

    mul-float v9, v1, v1

    add-float v4, v8, v9

    .local v4, "newDistSquare":F
    iget-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Lcom/mob/tools/gui/ScaledImageView;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget v8, p0, Lcom/mob/tools/gui/ScaledImageView;->distSquare:F

    div-float v8, v4, v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v5, v8

    .local v5, "scale":F
    const/4 v8, 0x2

    new-array v3, v8, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget v9, v6, v9

    const/4 v10, 0x0

    aget v10, v2, v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    aput v9, v3, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    aget v9, v6, v9

    const/4 v10, 0x1

    aget v10, v2, v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    aput v9, v3, v8

    .local v3, "middle":[F
    iget-object v8, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x1

    aget v10, v3, v10

    invoke-virtual {v8, v5, v5, v9, v10}, Landroid/graphics/Matrix;->postScale(FFFF)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_6
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x105 -> :sswitch_4
        0x106 -> :sswitch_5
    .end sparse-switch
.end method

.method public rotateLeft()V
    .locals 14

    .prologue
    const/high16 v13, 0x40000000

    :try_start_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v8, v0, [F

    fill-array-data v8, :array_0

    .local v8, "matrixValue":[F
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->setValues([F)V

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .local v9, "resizedBitmap":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v9, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/ScaledImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v0, 0x2

    new-array v12, v0, [I

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getWidth()I

    move-result v1

    aput v1, v12, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getHeight()I

    move-result v1

    aput v1, v12, v0

    .local v12, "target":[I
    const/4 v0, 0x2

    new-array v10, v0, [F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aget v1, v8, v1

    iget-object v2, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    aput v1, v10, v0

    const/4 v0, 0x1

    const/4 v1, 0x4

    aget v1, v8, v1

    iget-object v2, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    aput v1, v10, v0

    .local v10, "src":[F
    const/4 v0, 0x2

    new-array v7, v0, [F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aget v1, v12, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aget v2, v10, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v13

    aput v1, v7, v0

    const/4 v0, 0x1

    const/4 v1, 0x1

    aget v1, v12, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v2, v10, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v13

    aput v1, v7, v0

    .local v7, "centerDel":[F
    const/4 v0, 0x2

    const/4 v1, 0x0

    aget v1, v7, v1

    aput v1, v8, v0

    const/4 v0, 0x5

    const/4 v1, 0x1

    aget v1, v7, v1

    aput v1, v8, v0

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->setValues([F)V

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    iget-object v1, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-interface {v0, v1}, Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;->onMactrixChage(Landroid/graphics/Matrix;)V

    :cond_1
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/ScaledImageView;->setImageMatrix(Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7    # "centerDel":[F
    .end local v8    # "matrixValue":[F
    .end local v9    # "resizedBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "src":[F
    .end local v12    # "target":[I
    :goto_0
    return-void

    :catch_0
    move-exception v11

    .local v11, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000
        0x0
        -0x40800000
        0x0
        0x0
        0x0
        0x0
        0x3f800000
    .end array-data
.end method

.method public rotateRight()V
    .locals 14

    .prologue
    const/high16 v13, 0x40000000

    :try_start_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v8, v0, [F

    fill-array-data v8, :array_0

    .local v8, "matrixValue":[F
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->setValues([F)V

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .local v9, "resizedBitmap":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v9, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/ScaledImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v0, 0x2

    new-array v12, v0, [I

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getWidth()I

    move-result v1

    aput v1, v12, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getHeight()I

    move-result v1

    aput v1, v12, v0

    .local v12, "target":[I
    const/4 v0, 0x2

    new-array v10, v0, [F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aget v1, v8, v1

    iget-object v2, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    aput v1, v10, v0

    const/4 v0, 0x1

    const/4 v1, 0x4

    aget v1, v8, v1

    iget-object v2, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    aput v1, v10, v0

    .local v10, "src":[F
    const/4 v0, 0x2

    new-array v7, v0, [F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aget v1, v12, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aget v2, v10, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v13

    aput v1, v7, v0

    const/4 v0, 0x1

    const/4 v1, 0x1

    aget v1, v12, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v2, v10, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v13

    aput v1, v7, v0

    .local v7, "centerDel":[F
    const/4 v0, 0x2

    const/4 v1, 0x0

    aget v1, v7, v1

    aput v1, v8, v0

    const/4 v0, 0x5

    const/4 v1, 0x1

    aget v1, v7, v1

    aput v1, v8, v0

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->setValues([F)V

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    iget-object v1, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-interface {v0, v1}, Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;->onMactrixChage(Landroid/graphics/Matrix;)V

    :cond_1
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/ScaledImageView;->setImageMatrix(Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7    # "centerDel":[F
    .end local v8    # "matrixValue":[F
    .end local v9    # "resizedBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "src":[F
    .end local v12    # "target":[I
    :goto_0
    return-void

    :catch_0
    move-exception v11

    .local v11, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        -0x40800000
        0x0
        0x3f800000
        0x0
        0x0
        0x0
        0x0
        0x3f800000
    .end array-data
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iput-object p1, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/mob/tools/gui/ScaledImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-array v4, v7, [I

    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getWidth()I

    move-result v5

    aput v5, v4, v8

    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getHeight()I

    move-result v5

    aput v5, v4, v9

    .local v4, "target":[I
    new-array v3, v7, [I

    iget-object v5, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    aput v5, v3, v8

    iget-object v5, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    aput v5, v3, v9

    .local v3, "src":[I
    invoke-static {v3, v4}, Lcom/mob/tools/utils/BitmapHelper;->fixRect([I[I)[I

    move-result-object v1

    .local v1, "dst":[I
    new-array v0, v7, [I

    aget v5, v4, v8

    aget v6, v1, v8

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    aput v5, v0, v8

    aget v5, v4, v9

    aget v6, v1, v9

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    aput v5, v0, v9

    .local v0, "centerDel":[I
    new-array v2, v7, [F

    aget v5, v1, v8

    int-to-float v5, v5

    aget v6, v3, v8

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v2, v8

    aget v5, v1, v9

    int-to-float v5, v5

    aget v6, v3, v9

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v2, v9

    .local v2, "factor":[F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v5, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    aget v6, v2, v8

    aget v7, v2, v9

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v5, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    aget v6, v0, v8

    int-to-float v6, v6

    aget v7, v0, v9

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v5, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    iget-object v6, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-interface {v5, v6}, Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;->onMactrixChage(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object v5, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v5}, Lcom/mob/tools/gui/ScaledImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setOnMatrixChangedListener(Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;)V
    .locals 2
    .param p1, "l"    # Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    .prologue
    iput-object p1, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    iget-object v1, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-interface {v0, v1}, Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;->onMactrixChage(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/ScaledImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    return-void
.end method

.method public zoomIn()V
    .locals 3

    .prologue
    const v2, 0x3f89374c

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    iget-object v1, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-interface {v0, v1}, Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;->onMactrixChage(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/ScaledImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public zoomOut()V
    .locals 3

    .prologue
    const v2, 0x3f6ed917

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    iget-object v1, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-interface {v0, v1}, Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;->onMactrixChage(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/ScaledImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method
