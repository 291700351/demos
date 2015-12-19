.class Lcom/lb/myapidemo/egg/GoldenEggActivity$1$3;
.super Ljava/lang/Object;
.source "GoldenEggActivity.java"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;


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
    iput-object p1, p0, Lcom/lb/myapidemo/egg/GoldenEggActivity$1$3;->this$1:Lcom/lb/myapidemo/egg/GoldenEggActivity$1;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 123
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lb/myapidemo/egg/GoldenEggActivity$1$3;->this$1:Lcom/lb/myapidemo/egg/GoldenEggActivity$1;

    # getter for: Lcom/lb/myapidemo/egg/GoldenEggActivity$1;->this$0:Lcom/lb/myapidemo/egg/GoldenEggActivity;
    invoke-static {v0}, Lcom/lb/myapidemo/egg/GoldenEggActivity$1;->access$0(Lcom/lb/myapidemo/egg/GoldenEggActivity$1;)Lcom/lb/myapidemo/egg/GoldenEggActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lb/myapidemo/egg/GoldenEggActivity;->access$3(Lcom/lb/myapidemo/egg/GoldenEggActivity;Z)V

    .line 119
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 114
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 110
    return-void
.end method
