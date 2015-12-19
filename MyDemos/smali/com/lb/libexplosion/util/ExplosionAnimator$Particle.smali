.class Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;
.super Ljava/lang/Object;
.source "ExplosionAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lb/libexplosion/util/ExplosionAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Particle"
.end annotation


# instance fields
.field alpha:F

.field baseCx:F

.field baseCy:F

.field baseRadius:F

.field bottom:F

.field color:I

.field cx:F

.field cy:F

.field life:F

.field mag:F

.field neg:F

.field overflow:F

.field radius:F

.field final synthetic this$0:Lcom/lb/libexplosion/util/ExplosionAnimator;

.field top:F


# direct methods
.method private constructor <init>(Lcom/lb/libexplosion/util/ExplosionAnimator;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->this$0:Lcom/lb/libexplosion/util/ExplosionAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lb/libexplosion/util/ExplosionAnimator;Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;)V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;-><init>(Lcom/lb/libexplosion/util/ExplosionAnimator;)V

    return-void
.end method


# virtual methods
.method public advance(F)V
    .locals 11
    .param p1, "factor"    # F

    .prologue
    const v8, 0x3fb33333

    const v7, 0x3f333333

    const/high16 v6, 0x3f800000

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "f":F
    div-float v2, p1, v8

    .line 166
    .local v2, "normalization":F
    iget v3, p0, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->life:F

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->overflow:F

    sub-float v3, v6, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 167
    :cond_0
    const/4 v3, 0x0

    iput v3, p0, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->alpha:F

    .line 180
    :goto_0
    return-void

    .line 170
    :cond_1
    iget v3, p0, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->life:F

    sub-float v3, v2, v3

    iget v4, p0, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->life:F

    sub-float v4, v6, v4

    iget v5, p0, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->overflow:F

    sub-float/2addr v4, v5

    div-float v2, v3, v4

    .line 171
    mul-float v1, v2, v8

    .line 172
    .local v1, "f2":F
    cmpl-float v3, v2, v7

    if-ltz v3, :cond_2

    .line 173
    sub-float v3, v2, v7

    const v4, 0x3e99999a

    div-float v0, v3, v4

    .line 175
    :cond_2
    sub-float v3, v6, v0

    iput v3, p0, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->alpha:F

    .line 176
    iget v3, p0, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->bottom:F

    mul-float v0, v3, v1

    .line 177
    iget v3, p0, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->baseCx:F

    add-float/2addr v3, v0

    iput v3, p0, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->cx:F

    .line 178
    iget v3, p0, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->baseCy:F

    float-to-double v3, v3

    iget v5, p0, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->neg:F

    float-to-double v5, v5

    float-to-double v7, v0

    const-wide/high16 v9, 0x4000000000000000L

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    double-to-float v3, v3

    iget v4, p0, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->mag:F

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->cy:F

    .line 179
    # getter for: Lcom/lb/libexplosion/util/ExplosionAnimator;->V:F
    invoke-static {}, Lcom/lb/libexplosion/util/ExplosionAnimator;->access$0()F

    move-result v3

    iget v4, p0, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->baseRadius:F

    # getter for: Lcom/lb/libexplosion/util/ExplosionAnimator;->V:F
    invoke-static {}, Lcom/lb/libexplosion/util/ExplosionAnimator;->access$0()F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, p0, Lcom/lb/libexplosion/util/ExplosionAnimator$Particle;->radius:F

    goto :goto_0
.end method
