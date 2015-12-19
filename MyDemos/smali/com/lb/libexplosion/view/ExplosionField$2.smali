.class Lcom/lb/libexplosion/view/ExplosionField$2;
.super Ljava/lang/Object;
.source "ExplosionField.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lb/libexplosion/view/ExplosionField;->explode(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field random:Ljava/util/Random;

.field final synthetic this$0:Lcom/lb/libexplosion/view/ExplosionField;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/lb/libexplosion/view/ExplosionField;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lb/libexplosion/view/ExplosionField$2;->this$0:Lcom/lb/libexplosion/view/ExplosionField;

    iput-object p2, p0, Lcom/lb/libexplosion/view/ExplosionField$2;->val$view:Landroid/view/View;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/lb/libexplosion/view/ExplosionField$2;->random:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v4, 0x3f000000

    const v3, 0x3d4ccccd

    .line 131
    iget-object v0, p0, Lcom/lb/libexplosion/view/ExplosionField$2;->val$view:Landroid/view/View;

    iget-object v1, p0, Lcom/lb/libexplosion/view/ExplosionField$2;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sub-float/2addr v1, v4

    .line 132
    iget-object v2, p0, Lcom/lb/libexplosion/view/ExplosionField$2;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    mul-float/2addr v1, v3

    .line 131
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 133
    iget-object v0, p0, Lcom/lb/libexplosion/view/ExplosionField$2;->val$view:Landroid/view/View;

    iget-object v1, p0, Lcom/lb/libexplosion/view/ExplosionField$2;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sub-float/2addr v1, v4

    .line 134
    iget-object v2, p0, Lcom/lb/libexplosion/view/ExplosionField$2;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    mul-float/2addr v1, v3

    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 136
    return-void
.end method
