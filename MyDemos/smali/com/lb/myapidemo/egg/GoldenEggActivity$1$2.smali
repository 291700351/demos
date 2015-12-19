.class Lcom/lb/myapidemo/egg/GoldenEggActivity$1$2;
.super Ljava/lang/Object;
.source "GoldenEggActivity.java"

# interfaces
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lb/myapidemo/egg/GoldenEggActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lb/myapidemo/egg/GoldenEggActivity$1;


# direct methods
.method constructor <init>(Lcom/lb/myapidemo/egg/GoldenEggActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lb/myapidemo/egg/GoldenEggActivity$1$2;->this$1:Lcom/lb/myapidemo/egg/GoldenEggActivity$1;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Lcom/nineoldandroids/animation/ValueAnimator;

    .prologue
    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    .line 99
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 101
    .local v0, "value":I
    iget-object v1, p0, Lcom/lb/myapidemo/egg/GoldenEggActivity$1$2;->this$1:Lcom/lb/myapidemo/egg/GoldenEggActivity$1;

    # getter for: Lcom/lb/myapidemo/egg/GoldenEggActivity$1;->this$0:Lcom/lb/myapidemo/egg/GoldenEggActivity;
    invoke-static {v1}, Lcom/lb/myapidemo/egg/GoldenEggActivity$1;->access$0(Lcom/lb/myapidemo/egg/GoldenEggActivity$1;)Lcom/lb/myapidemo/egg/GoldenEggActivity;

    move-result-object v1

    # getter for: Lcom/lb/myapidemo/egg/GoldenEggActivity;->iv_egg:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lb/myapidemo/egg/GoldenEggActivity;->access$1(Lcom/lb/myapidemo/egg/GoldenEggActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 102
    iget-object v1, p0, Lcom/lb/myapidemo/egg/GoldenEggActivity$1$2;->this$1:Lcom/lb/myapidemo/egg/GoldenEggActivity$1;

    # getter for: Lcom/lb/myapidemo/egg/GoldenEggActivity$1;->this$0:Lcom/lb/myapidemo/egg/GoldenEggActivity;
    invoke-static {v1}, Lcom/lb/myapidemo/egg/GoldenEggActivity$1;->access$0(Lcom/lb/myapidemo/egg/GoldenEggActivity$1;)Lcom/lb/myapidemo/egg/GoldenEggActivity;

    move-result-object v1

    # getter for: Lcom/lb/myapidemo/egg/GoldenEggActivity;->iv_egg:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lb/myapidemo/egg/GoldenEggActivity;->access$1(Lcom/lb/myapidemo/egg/GoldenEggActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestLayout()V

    .line 103
    return-void
.end method
