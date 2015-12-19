.class public Lcom/lb/libexplosion/util/ExplosionAnimator;
.super Landroid/animation/ValueAnimator;
.source "ExplosionAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;
    }
.end annotation


# static fields
.field public static DEFAULT_DURATION:J = 0x0L

.field private static final DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final END_VALUE:F = 1.4f

.field private static final V:F

.field private static final W:F

.field private static final X:F

.field private static final Y:F


# instance fields
.field private mBound:Landroid/graphics/Rect;

.field private mContainer:Landroid/view/View;

.field private mPaint:Landroid/graphics/Paint;

.field private mParticles:[Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const-wide/16 v0, 0x1000

    sput-wide v0, Lcom/lb/libexplosion/util/ExplosionAnimator;->DEFAULT_DURATION:J

    .line 18
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    .line 19
    const v1, 0x3f19999a

    .line 18
    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/lb/libexplosion/util/ExplosionAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 21
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/lb/libexplosion/util/Utils;->dp2Px(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/lb/libexplosion/util/ExplosionAnimator;->X:F

    .line 22
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/lb/libexplosion/util/Utils;->dp2Px(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/lb/libexplosion/util/ExplosionAnimator;->Y:F

    .line 23
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/lb/libexplosion/util/Utils;->dp2Px(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/lb/libexplosion/util/ExplosionAnimator;->V:F

    .line 24
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/lb/libexplosion/util/Utils;->dp2Px(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/lb/libexplosion/util/ExplosionAnimator;->W:F

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "container"    # Landroid/view/View;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "bound"    # Landroid/graphics/Rect;

    .prologue
    const/16 v8, 0x25

    .line 30
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 31
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/lb/libexplosion/util/ExplosionAnimator;->mPaint:Landroid/graphics/Paint;

    .line 32
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v6, p0, Lcom/lb/libexplosion/util/ExplosionAnimator;->mBound:Landroid/graphics/Rect;

    .line 33
    const/16 v3, 0x23

    .line 34
    .local v3, "partLen":I
    const/16 v6, 0x4c9

    new-array v6, v6, [Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;

    iput-object v6, p0, Lcom/lb/libexplosion/util/ExplosionAnimator;->mParticles:[Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;

    .line 35
    new-instance v4, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Random;-><init>(J)V

    .line 37
    .local v4, "random":Ljava/util/Random;
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int v5, v6, v8

    .line 39
    .local v5, "w":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int v0, v6, v8

    .line 43
    .local v0, "h":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 49
    iput-object p1, p0, Lcom/lb/libexplosion/util/ExplosionAnimator;->mContainer:Landroid/view/View;

    .line 50
    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-virtual {p0, v6}, Lcom/lb/libexplosion/util/ExplosionAnimator;->setFloatValues([F)V

    .line 51
    sget-object v6, Lcom/lb/libexplosion/util/ExplosionAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v6}, Lcom/lb/libexplosion/util/ExplosionAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 52
    sget-wide v6, Lcom/lb/libexplosion/util/ExplosionAnimator;->DEFAULT_DURATION:J

    invoke-virtual {p0, v6, v7}, Lcom/lb/libexplosion/util/ExplosionAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 53
    return-void

    .line 44
    :cond_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-lt v2, v3, :cond_1

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    :cond_1
    iget-object v6, p0, Lcom/lb/libexplosion/util/ExplosionAnimator;->mParticles:[Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;

    mul-int v7, v1, v3

    add-int/2addr v7, v2

    .line 46
    add-int/lit8 v8, v2, 0x1

    mul-int/2addr v8, v5

    add-int/lit8 v9, v1, 0x1

    mul-int/2addr v9, v0

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    .line 45
    invoke-direct {p0, v8, v4}, Lcom/lb/libexplosion/util/ExplosionAnimator;->generateParticle(ILjava/util/Random;)Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;

    move-result-object v8

    aput-object v8, v6, v7

    .line 44
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 50
    nop

    :array_0
    .array-data 4
        0x0
        0x3fb33333
    .end array-data
.end method

.method static synthetic access$0()F
    .locals 1

    .prologue
    .line 23
    sget v0, Lcom/lb/libexplosion/util/ExplosionAnimator;->V:F

    return v0
.end method

.method private generateParticle(ILjava/util/Random;)Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;
    .locals 8
    .param p1, "color"    # I
    .param p2, "random"    # Ljava/util/Random;

    .prologue
    const/high16 v7, 0x3f000000

    const v6, 0x3e4ccccd

    .line 63
    new-instance v2, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;-><init>(Lcom/lb/libexplosion/util/ExplosionAnimator;Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;)V

    .line 64
    .local v2, "particle":Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;
    iput p1, v2, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->color:I

    .line 65
    sget v3, Lcom/lb/libexplosion/util/ExplosionAnimator;->V:F

    iput v3, v2, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->radius:F

    .line 66
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v3

    cmpg-float v3, v3, v6

    if-gez v3, :cond_0

    .line 67
    sget v3, Lcom/lb/libexplosion/util/ExplosionAnimator;->V:F

    sget v4, Lcom/lb/libexplosion/util/ExplosionAnimator;->X:F

    sget v5, Lcom/lb/libexplosion/util/ExplosionAnimator;->V:F

    sub-float/2addr v4, v5

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->baseRadius:F

    .line 71
    :goto_0
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v1

    .line 72
    .local v1, "nextFloat":F
    iget-object v3, p0, Lcom/lb/libexplosion/util/ExplosionAnimator;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3e3851ec

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v4, v6

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->top:F

    .line 73
    cmpg-float v3, v1, v6

    if-gez v3, :cond_1

    iget v3, v2, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->top:F

    :goto_1
    iput v3, v2, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->top:F

    .line 75
    iget-object v3, p0, Lcom/lb/libexplosion/util/ExplosionAnimator;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v4

    sub-float/2addr v4, v7

    mul-float/2addr v3, v4

    const v4, 0x3fe66666

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->bottom:F

    .line 76
    cmpg-float v3, v1, v6

    if-gez v3, :cond_2

    iget v0, v2, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->bottom:F

    .line 79
    .local v0, "f":F
    :goto_2
    iput v0, v2, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->bottom:F

    .line 80
    const/high16 v3, 0x40800000

    iget v4, v2, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->top:F

    mul-float/2addr v3, v4

    iget v4, v2, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->bottom:F

    div-float/2addr v3, v4

    iput v3, v2, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->mag:F

    .line 81
    iget v3, v2, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->mag:F

    neg-float v3, v3

    iget v4, v2, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->bottom:F

    div-float/2addr v3, v4

    iput v3, v2, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->neg:F

    .line 82
    iget-object v3, p0, Lcom/lb/libexplosion/util/ExplosionAnimator;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/lb/libexplosion/util/ExplosionAnimator;->Y:F

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v5

    sub-float/2addr v5, v7

    mul-float/2addr v4, v5

    add-float v0, v3, v4

    .line 83
    iput v0, v2, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->baseCx:F

    .line 84
    iput v0, v2, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->cx:F

    .line 85
    iget-object v3, p0, Lcom/lb/libexplosion/util/ExplosionAnimator;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/lb/libexplosion/util/ExplosionAnimator;->Y:F

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v5

    sub-float/2addr v5, v7

    mul-float/2addr v4, v5

    add-float v0, v3, v4

    .line 86
    iput v0, v2, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->baseCy:F

    .line 87
    iput v0, v2, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->cy:F

    .line 88
    const v3, 0x3e0f5c29

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->life:F

    .line 89
    const v3, 0x3ecccccd

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->overflow:F

    .line 90
    const/high16 v3, 0x3f800000

    iput v3, v2, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->alpha:F

    .line 91
    return-object v2

    .line 69
    .end local v0    # "f":F
    .end local v1    # "nextFloat":F
    :cond_0
    sget v3, Lcom/lb/libexplosion/util/ExplosionAnimator;->W:F

    sget v4, Lcom/lb/libexplosion/util/ExplosionAnimator;->V:F

    sget v5, Lcom/lb/libexplosion/util/ExplosionAnimator;->W:F

    sub-float/2addr v4, v5

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->baseRadius:F

    goto/16 :goto_0

    .line 73
    .restart local v1    # "nextFloat":F
    :cond_1
    iget v3, v2, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->top:F

    .line 74
    iget v4, v2, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->top:F

    mul-float/2addr v4, v6

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    goto/16 :goto_1

    .line 77
    :cond_2
    const v3, 0x3f4ccccd

    cmpg-float v3, v1, v3

    if-gez v3, :cond_3

    iget v3, v2, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->bottom:F

    const v4, 0x3f19999a

    mul-float v0, v3, v4

    goto/16 :goto_2

    .line 78
    :cond_3
    iget v3, v2, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->bottom:F

    const v4, 0x3e99999a

    mul-float v0, v3, v4

    goto/16 :goto_2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-virtual {p0}, Lcom/lb/libexplosion/util/ExplosionAnimator;->isStarted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 122
    :goto_0
    return v1

    .line 111
    :cond_0
    iget-object v3, p0, Lcom/lb/libexplosion/util/ExplosionAnimator;->mParticles:[Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-lt v2, v4, :cond_1

    .line 121
    iget-object v1, p0, Lcom/lb/libexplosion/util/ExplosionAnimator;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 122
    const/4 v1, 0x1

    goto :goto_0

    .line 111
    :cond_1
    aget-object v0, v3, v2

    .line 113
    .local v0, "particle":Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;
    invoke-virtual {p0}, Lcom/lb/libexplosion/util/ExplosionAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->advance(F)V

    .line 114
    iget v1, v0, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->alpha:F

    const/4 v5, 0x0

    cmpl-float v1, v1, v5

    if-lez v1, :cond_2

    .line 115
    iget-object v1, p0, Lcom/lb/libexplosion/util/ExplosionAnimator;->mPaint:Landroid/graphics/Paint;

    iget v5, v0, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->color:I

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget-object v1, p0, Lcom/lb/libexplosion/util/ExplosionAnimator;->mPaint:Landroid/graphics/Paint;

    iget v5, v0, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->color:I

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->alpha:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 117
    iget v1, v0, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->cx:F

    iget v5, v0, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->cy:F

    iget v6, v0, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->radius:F

    .line 118
    iget-object v7, p0, Lcom/lb/libexplosion/util/ExplosionAnimator;->mPaint:Landroid/graphics/Paint;

    .line 117
    invoke-virtual {p1, v1, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 111
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public start()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 134
    iget-object v0, p0, Lcom/lb/libexplosion/util/ExplosionAnimator;->mContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/lb/libexplosion/util/ExplosionAnimator;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 135
    return-void
.end method
