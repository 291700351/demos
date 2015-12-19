.class Lcom/james/biuedittext/BiuEditText$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BiuEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/james/biuedittext/BiuEditText;->update(CZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/james/biuedittext/BiuEditText;

.field private final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/james/biuedittext/BiuEditText;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/james/biuedittext/BiuEditText$2;->this$0:Lcom/james/biuedittext/BiuEditText;

    iput-object p2, p0, Lcom/james/biuedittext/BiuEditText$2;->val$textView:Landroid/widget/TextView;

    .line 139
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/james/biuedittext/BiuEditText$2;->this$0:Lcom/james/biuedittext/BiuEditText;

    # getter for: Lcom/james/biuedittext/BiuEditText;->contentContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/james/biuedittext/BiuEditText;->access$3(Lcom/james/biuedittext/BiuEditText;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/james/biuedittext/BiuEditText$2;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 147
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 142
    return-void
.end method
