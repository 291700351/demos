.class public Lcom/lb/libexplosion/view/ExplosionField;
.super Landroid/view/View;
.source "ExplosionField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lb/libexplosion/view/ExplosionField$ExplosionAnimatorListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/lb/libexplosion/view/ExplosionField$ExplosionAnimatorListener;

.field private mExpandInset:[I

.field private mExplosions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lb/libexplosion/util/ExplosionAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lb/libexplosion/view/ExplosionField;->mExplosions:Ljava/util/List;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lb/libexplosion/view/ExplosionField;->mExpandInset:[I

    .line 38
    invoke-direct {p0}, Lcom/lb/libexplosion/view/ExplosionField;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lb/libexplosion/view/ExplosionField;->mExplosions:Ljava/util/List;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lb/libexplosion/view/ExplosionField;->mExpandInset:[I

    .line 43
    invoke-direct {p0}, Lcom/lb/libexplosion/view/ExplosionField;->init()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lb/libexplosion/view/ExplosionField;->mExplosions:Ljava/util/List;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lb/libexplosion/view/ExplosionField;->mExpandInset:[I

    .line 48
    invoke-direct {p0}, Lcom/lb/libexplosion/view/ExplosionField;->init()V

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/lb/libexplosion/view/ExplosionField;)Lcom/lb/libexplosion/view/ExplosionField$ExplosionAnimatorListener;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/lb/libexplosion/view/ExplosionField;->listener:Lcom/lb/libexplosion/view/ExplosionField$ExplosionAnimatorListener;

    return-object v0
.end method

.method public static attach2Window(Landroid/app/Activity;)Lcom/lb/libexplosion/view/ExplosionField;
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, -0x1

    .line 161
    .line 162
    const v2, 0x1020002

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 161
    check-cast v1, Landroid/view/ViewGroup;

    .line 163
    .local v1, "rootView":Landroid/view/ViewGroup;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rootview = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 164
    new-instance v0, Lcom/lb/libexplosion/view/ExplosionField;

    invoke-direct {v0, p0}, Lcom/lb/libexplosion/view/ExplosionField;-><init>(Landroid/content/Context;)V

    .line 166
    .local v0, "explosionField":Lcom/lb/libexplosion/view/ExplosionField;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 168
    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 166
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lb/libexplosion/view/ExplosionField;->mExpandInset:[I

    const/16 v1, 0x20

    invoke-static {v1}, Lcom/lb/libexplosion/util/Utils;->dp2Px(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 53
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/lb/libexplosion/view/ExplosionField;->mExplosions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 149
    invoke-virtual {p0}, Lcom/lb/libexplosion/view/ExplosionField;->invalidate()V

    .line 150
    return-void
.end method

.method public expandExplosionBound(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lb/libexplosion/view/ExplosionField;->mExpandInset:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 65
    iget-object v0, p0, Lcom/lb/libexplosion/view/ExplosionField;->mExpandInset:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 66
    return-void
.end method

.method public explode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;JJ)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "bound"    # Landroid/graphics/Rect;
    .param p3, "startDelay"    # J
    .param p5, "duration"    # J

    .prologue
    .line 70
    new-instance v0, Lcom/lb/libexplosion/util/ExplosionAnimator;

    invoke-direct {v0, p0, p1, p2}, Lcom/lb/libexplosion/util/ExplosionAnimator;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 79
    .local v0, "explosion":Lcom/lb/libexplosion/util/ExplosionAnimator;
    invoke-virtual {v0, p3, p4}, Lcom/lb/libexplosion/util/ExplosionAnimator;->setStartDelay(J)V

    .line 80
    invoke-virtual {v0, p5, p6}, Lcom/lb/libexplosion/util/ExplosionAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 81
    iget-object v1, p0, Lcom/lb/libexplosion/view/ExplosionField;->mExplosions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v1, p0, Lcom/lb/libexplosion/view/ExplosionField;->listener:Lcom/lb/libexplosion/view/ExplosionField$ExplosionAnimatorListener;

    if-eqz v1, :cond_0

    .line 83
    new-instance v1, Lcom/lb/libexplosion/view/ExplosionField$1;

    invoke-direct {v1, p0}, Lcom/lb/libexplosion/view/ExplosionField$1;-><init>(Lcom/lb/libexplosion/view/ExplosionField;)V

    invoke-virtual {v0, v1}, Lcom/lb/libexplosion/util/ExplosionAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 107
    :cond_0
    invoke-virtual {v0}, Lcom/lb/libexplosion/util/ExplosionAnimator;->start()V

    .line 108
    return-void
.end method

.method public explode(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-wide/16 v10, 0x96

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 116
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 117
    .local v2, "r":Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 118
    new-array v8, v6, [I

    .line 119
    .local v8, "location":[I
    invoke-virtual {p0, v8}, Lcom/lb/libexplosion/view/ExplosionField;->getLocationOnScreen([I)V

    .line 120
    aget v0, v8, v3

    neg-int v0, v0

    aget v1, v8, v4

    neg-int v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 121
    iget-object v0, p0, Lcom/lb/libexplosion/view/ExplosionField;->mExpandInset:[I

    aget v0, v0, v3

    neg-int v0, v0

    iget-object v1, p0, Lcom/lb/libexplosion/view/ExplosionField;->mExpandInset:[I

    aget v1, v1, v4

    neg-int v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 122
    const/16 v9, 0x64

    .line 124
    .local v9, "startDelay":I
    new-array v0, v6, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 125
    .local v7, "animator":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/lb/libexplosion/view/ExplosionField$2;

    invoke-direct {v0, p0, p1}, Lcom/lb/libexplosion/view/ExplosionField$2;-><init>(Lcom/lb/libexplosion/view/ExplosionField;Landroid/view/View;)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 139
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 141
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v3, v9

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 142
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 143
    invoke-static {p1}, Lcom/lb/libexplosion/util/Utils;->createBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    int-to-long v3, v9

    .line 144
    sget-wide v5, Lcom/lb/libexplosion/util/ExplosionAnimator;->DEFAULT_DURATION:J

    move-object v0, p0

    .line 143
    invoke-virtual/range {v0 .. v6}, Lcom/lb/libexplosion/view/ExplosionField;->explode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;JJ)V

    .line 145
    return-void

    .line 124
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 58
    iget-object v1, p0, Lcom/lb/libexplosion/view/ExplosionField;->mExplosions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    return-void

    .line 58
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lb/libexplosion/util/ExplosionAnimator;

    .line 59
    .local v0, "explosion":Lcom/lb/libexplosion/util/ExplosionAnimator;
    invoke-virtual {v0, p1}, Lcom/lb/libexplosion/util/ExplosionAnimator;->draw(Landroid/graphics/Canvas;)Z

    goto :goto_0
.end method

.method public setExplosionAnimatorListener(Lcom/lb/libexplosion/view/ExplosionField$ExplosionAnimatorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lb/libexplosion/view/ExplosionField$ExplosionAnimatorListener;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/lb/libexplosion/view/ExplosionField;->listener:Lcom/lb/libexplosion/view/ExplosionField$ExplosionAnimatorListener;

    .line 176
    return-void
.end method
