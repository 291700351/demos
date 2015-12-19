.class Lcom/lb/myapidemo/egg/GoldenEggActivity$1$4;
.super Ljava/lang/Object;
.source "GoldenEggActivity.java"

# interfaces
.implements Lcom/lb/libexplosion/view/ExplosionField$ExplosionAnimatorListener;


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
    iput-object p1, p0, Lcom/lb/myapidemo/egg/GoldenEggActivity$1$4;->this$1:Lcom/lb/myapidemo/egg/GoldenEggActivity$1;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 158
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 149
    new-instance v0, Landroid/content/Intent;

    .line 150
    iget-object v1, p0, Lcom/lb/myapidemo/egg/GoldenEggActivity$1$4;->this$1:Lcom/lb/myapidemo/egg/GoldenEggActivity$1;

    # getter for: Lcom/lb/myapidemo/egg/GoldenEggActivity$1;->this$0:Lcom/lb/myapidemo/egg/GoldenEggActivity;
    invoke-static {v1}, Lcom/lb/myapidemo/egg/GoldenEggActivity$1;->access$0(Lcom/lb/myapidemo/egg/GoldenEggActivity$1;)Lcom/lb/myapidemo/egg/GoldenEggActivity;

    move-result-object v1

    .line 151
    const-class v2, Lcom/lb/myapidemo/egg/SuccessActivity;

    .line 149
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lb/myapidemo/egg/GoldenEggActivity$1$4;->this$1:Lcom/lb/myapidemo/egg/GoldenEggActivity$1;

    # getter for: Lcom/lb/myapidemo/egg/GoldenEggActivity$1;->this$0:Lcom/lb/myapidemo/egg/GoldenEggActivity;
    invoke-static {v1}, Lcom/lb/myapidemo/egg/GoldenEggActivity$1;->access$0(Lcom/lb/myapidemo/egg/GoldenEggActivity$1;)Lcom/lb/myapidemo/egg/GoldenEggActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lb/myapidemo/egg/GoldenEggActivity;->startActivity(Landroid/content/Intent;)V

    .line 153
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 143
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 138
    return-void
.end method
