.class Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity$2;
.super Ljava/lang/Object;
.source "BottomLayoutActivity.java"

# interfaces
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->animation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;


# direct methods
.method constructor <init>(Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity$2;->this$0:Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 3
    .param p1, "valueAnimator"    # Lcom/nineoldandroids/animation/ValueAnimator;

    .prologue
    .line 173
    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 174
    .local v1, "value":I
    iget-object v2, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity$2;->this$0:Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;

    # getter for: Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->ll_bottom:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->access$1(Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 175
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 174
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 176
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 177
    iget-object v2, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity$2;->this$0:Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;

    # getter for: Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->ll_bottom:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->access$1(Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 179
    return-void
.end method
