.class Lcom/lb/libexplosion/view/ExplosionField$1;
.super Ljava/lang/Object;
.source "ExplosionField.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lb/libexplosion/view/ExplosionField;->explode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lb/libexplosion/view/ExplosionField;


# direct methods
.method constructor <init>(Lcom/lb/libexplosion/view/ExplosionField;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lb/libexplosion/view/ExplosionField$1;->this$0:Lcom/lb/libexplosion/view/ExplosionField;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lb/libexplosion/view/ExplosionField$1;->this$0:Lcom/lb/libexplosion/view/ExplosionField;

    # getter for: Lcom/lb/libexplosion/view/ExplosionField;->listener:Lcom/lb/libexplosion/view/ExplosionField$ExplosionAnimatorListener;
    invoke-static {v0}, Lcom/lb/libexplosion/view/ExplosionField;->access$0(Lcom/lb/libexplosion/view/ExplosionField;)Lcom/lb/libexplosion/view/ExplosionField$ExplosionAnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lb/libexplosion/view/ExplosionField$ExplosionAnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 103
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lb/libexplosion/view/ExplosionField$1;->this$0:Lcom/lb/libexplosion/view/ExplosionField;

    # getter for: Lcom/lb/libexplosion/view/ExplosionField;->listener:Lcom/lb/libexplosion/view/ExplosionField$ExplosionAnimatorListener;
    invoke-static {v0}, Lcom/lb/libexplosion/view/ExplosionField;->access$0(Lcom/lb/libexplosion/view/ExplosionField;)Lcom/lb/libexplosion/view/ExplosionField$ExplosionAnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lb/libexplosion/view/ExplosionField$ExplosionAnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 98
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lb/libexplosion/view/ExplosionField$1;->this$0:Lcom/lb/libexplosion/view/ExplosionField;

    # getter for: Lcom/lb/libexplosion/view/ExplosionField;->listener:Lcom/lb/libexplosion/view/ExplosionField$ExplosionAnimatorListener;
    invoke-static {v0}, Lcom/lb/libexplosion/view/ExplosionField;->access$0(Lcom/lb/libexplosion/view/ExplosionField;)Lcom/lb/libexplosion/view/ExplosionField$ExplosionAnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lb/libexplosion/view/ExplosionField$ExplosionAnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 93
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lb/libexplosion/view/ExplosionField$1;->this$0:Lcom/lb/libexplosion/view/ExplosionField;

    # getter for: Lcom/lb/libexplosion/view/ExplosionField;->listener:Lcom/lb/libexplosion/view/ExplosionField$ExplosionAnimatorListener;
    invoke-static {v0}, Lcom/lb/libexplosion/view/ExplosionField;->access$0(Lcom/lb/libexplosion/view/ExplosionField;)Lcom/lb/libexplosion/view/ExplosionField$ExplosionAnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lb/libexplosion/view/ExplosionField$ExplosionAnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 88
    return-void
.end method
