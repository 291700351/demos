.class Lcom/lb/myapidemo/egg/GoldenEggActivity$1;
.super Ljava/lang/Object;
.source "GoldenEggActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lb/myapidemo/egg/GoldenEggActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lb/myapidemo/egg/GoldenEggActivity;


# direct methods
.method constructor <init>(Lcom/lb/myapidemo/egg/GoldenEggActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lb/myapidemo/egg/GoldenEggActivity$1;->this$0:Lcom/lb/myapidemo/egg/GoldenEggActivity;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lb/myapidemo/egg/GoldenEggActivity$1;)Lcom/lb/myapidemo/egg/GoldenEggActivity;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lb/myapidemo/egg/GoldenEggActivity$1;->this$0:Lcom/lb/myapidemo/egg/GoldenEggActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v11, 0x12c

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 59
    iget-object v6, p0, Lcom/lb/myapidemo/egg/GoldenEggActivity$1;->this$0:Lcom/lb/myapidemo/egg/GoldenEggActivity;

    # getter for: Lcom/lb/myapidemo/egg/GoldenEggActivity;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v6}, Lcom/lb/myapidemo/egg/GoldenEggActivity;->access$0(Lcom/lb/myapidemo/egg/GoldenEggActivity;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 60
    iget-object v6, p0, Lcom/lb/myapidemo/egg/GoldenEggActivity$1;->this$0:Lcom/lb/myapidemo/egg/GoldenEggActivity;

    # getter for: Lcom/lb/myapidemo/egg/GoldenEggActivity;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v6}, Lcom/lb/myapidemo/egg/GoldenEggActivity;->access$0(Lcom/lb/myapidemo/egg/GoldenEggActivity;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 61
    iget-object v6, p0, Lcom/lb/myapidemo/egg/GoldenEggActivity$1;->this$0:Lcom/lb/myapidemo/egg/GoldenEggActivity;

    # getter for: Lcom/lb/myapidemo/egg/GoldenEggActivity;->iv_egg:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/lb/myapidemo/egg/GoldenEggActivity;->access$1(Lcom/lb/myapidemo/egg/GoldenEggActivity;)Landroid/widget/ImageView;

    move-result-object v6

    const v7, 0x7f020002

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 64
    :cond_0
    iget-object v6, p0, Lcom/lb/myapidemo/egg/GoldenEggActivity$1;->this$0:Lcom/lb/myapidemo/egg/GoldenEggActivity;

    # getter for: Lcom/lb/myapidemo/egg/GoldenEggActivity;->isBig:Z
    invoke-static {v6}, Lcom/lb/myapidemo/egg/GoldenEggActivity;->access$2(Lcom/lb/myapidemo/egg/GoldenEggActivity;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 67
    iget-object v6, p0, Lcom/lb/myapidemo/egg/GoldenEggActivity$1;->this$0:Lcom/lb/myapidemo/egg/GoldenEggActivity;

    # getter for: Lcom/lb/myapidemo/egg/GoldenEggActivity;->iv_egg:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/lb/myapidemo/egg/GoldenEggActivity;->access$1(Lcom/lb/myapidemo/egg/GoldenEggActivity;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v8, v8}, Landroid/widget/ImageView;->measure(II)V

    .line 68
    iget-object v6, p0, Lcom/lb/myapidemo/egg/GoldenEggActivity$1;->this$0:Lcom/lb/myapidemo/egg/GoldenEggActivity;

    # getter for: Lcom/lb/myapidemo/egg/GoldenEggActivity;->iv_egg:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/lb/myapidemo/egg/GoldenEggActivity;->access$1(Lcom/lb/myapidemo/egg/GoldenEggActivity;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    .line 69
    .local v5, "eggWidth":I
    iget-object v6, p0, Lcom/lb/myapidemo/egg/GoldenEggActivity$1;->this$0:Lcom/lb/myapidemo/egg/GoldenEggActivity;

    # getter for: Lcom/lb/myapidemo/egg/GoldenEggActivity;->iv_egg:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/lb/myapidemo/egg/GoldenEggActivity;->access$1(Lcom/lb/myapidemo/egg/GoldenEggActivity;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    .line 71
    .local v4, "eggHeight":I
    mul-int/lit8 v3, v5, 0x2

    .line 72
    .local v3, "bigWidth":I
    mul-int/lit8 v2, v4, 0x2

    .line 74
    .local v2, "bigHeight":I
    new-array v6, v10, [I

    aput v5, v6, v8

    .line 75
    aput v3, v6, v9

    invoke-static {v6}, Lcom/nineoldandroids/animation/ValueAnimator;->ofInt([I)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v1

    .line 76
    .local v1, "animatorWidth":Lcom/nineoldandroids/animation/ValueAnimator;
    new-array v6, v10, [I

    .line 77
    aput v4, v6, v8

    aput v2, v6, v9

    invoke-static {v6}, Lcom/nineoldandroids/animation/ValueAnimator;->ofInt([I)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    .line 81
    .local v0, "animatorHeight":Lcom/nineoldandroids/animation/ValueAnimator;
    new-instance v6, Lcom/lb/myapidemo/egg/GoldenEggActivity$1$1;

    invoke-direct {v6, p0}, Lcom/lb/myapidemo/egg/GoldenEggActivity$1$1;-><init>(Lcom/lb/myapidemo/egg/GoldenEggActivity$1;)V

    invoke-virtual {v1, v6}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 94
    new-instance v6, Lcom/lb/myapidemo/egg/GoldenEggActivity$1$2;

    invoke-direct {v6, p0}, Lcom/lb/myapidemo/egg/GoldenEggActivity$1$2;-><init>(Lcom/lb/myapidemo/egg/GoldenEggActivity$1;)V

    invoke-virtual {v0, v6}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 106
    new-instance v6, Lcom/lb/myapidemo/egg/GoldenEggActivity$1$3;

    invoke-direct {v6, p0}, Lcom/lb/myapidemo/egg/GoldenEggActivity$1$3;-><init>(Lcom/lb/myapidemo/egg/GoldenEggActivity$1;)V

    invoke-virtual {v1, v6}, Lcom/nineoldandroids/animation/ValueAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 125
    invoke-virtual {v1, v11, v12}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    .line 126
    invoke-virtual {v0, v11, v12}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    .line 127
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V

    .line 128
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V

    .line 165
    .end local v0    # "animatorHeight":Lcom/nineoldandroids/animation/ValueAnimator;
    .end local v1    # "animatorWidth":Lcom/nineoldandroids/animation/ValueAnimator;
    .end local v2    # "bigHeight":I
    .end local v3    # "bigWidth":I
    .end local v4    # "eggHeight":I
    .end local v5    # "eggWidth":I
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v6, p0, Lcom/lb/myapidemo/egg/GoldenEggActivity$1;->this$0:Lcom/lb/myapidemo/egg/GoldenEggActivity;

    # getter for: Lcom/lb/myapidemo/egg/GoldenEggActivity;->mExplosionField:Lcom/lb/libexplosion/view/ExplosionField;
    invoke-static {v6}, Lcom/lb/myapidemo/egg/GoldenEggActivity;->access$4(Lcom/lb/myapidemo/egg/GoldenEggActivity;)Lcom/lb/libexplosion/view/ExplosionField;

    move-result-object v6

    .line 133
    new-instance v7, Lcom/lb/myapidemo/egg/GoldenEggActivity$1$4;

    invoke-direct {v7, p0}, Lcom/lb/myapidemo/egg/GoldenEggActivity$1$4;-><init>(Lcom/lb/myapidemo/egg/GoldenEggActivity$1;)V

    invoke-virtual {v6, v7}, Lcom/lb/libexplosion/view/ExplosionField;->setExplosionAnimatorListener(Lcom/lb/libexplosion/view/ExplosionField$ExplosionAnimatorListener;)V

    .line 161
    iget-object v6, p0, Lcom/lb/myapidemo/egg/GoldenEggActivity$1;->this$0:Lcom/lb/myapidemo/egg/GoldenEggActivity;

    # getter for: Lcom/lb/myapidemo/egg/GoldenEggActivity;->mExplosionField:Lcom/lb/libexplosion/view/ExplosionField;
    invoke-static {v6}, Lcom/lb/myapidemo/egg/GoldenEggActivity;->access$4(Lcom/lb/myapidemo/egg/GoldenEggActivity;)Lcom/lb/libexplosion/view/ExplosionField;

    move-result-object v6

    iget-object v7, p0, Lcom/lb/myapidemo/egg/GoldenEggActivity$1;->this$0:Lcom/lb/myapidemo/egg/GoldenEggActivity;

    # getter for: Lcom/lb/myapidemo/egg/GoldenEggActivity;->iv_egg:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/lb/myapidemo/egg/GoldenEggActivity;->access$1(Lcom/lb/myapidemo/egg/GoldenEggActivity;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lb/libexplosion/view/ExplosionField;->explode(Landroid/view/View;)V

    .line 162
    iget-object v6, p0, Lcom/lb/myapidemo/egg/GoldenEggActivity$1;->this$0:Lcom/lb/myapidemo/egg/GoldenEggActivity;

    # getter for: Lcom/lb/myapidemo/egg/GoldenEggActivity;->iv_egg:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/lb/myapidemo/egg/GoldenEggActivity;->access$1(Lcom/lb/myapidemo/egg/GoldenEggActivity;)Landroid/widget/ImageView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
