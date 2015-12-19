.class Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity$3;
.super Ljava/lang/Object;
.source "BottomLayoutActivity.java"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;


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
    iput-object p1, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity$3;->this$0:Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .locals 1
    .param p1, "arg0"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 219
    const-string v0, "animator cancel"

    invoke-static {p0, v0}, Lcom/lb/myapidemo/utils/LogUtil;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 207
    const-string v0, "animator end"

    invoke-static {p0, v0}, Lcom/lb/myapidemo/utils/LogUtil;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity$3;->this$0:Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;

    iget-object v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity$3;->this$0:Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;

    # getter for: Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->isShowBootom:Z
    invoke-static {v0}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->access$5(Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->access$9(Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;Z)V

    .line 212
    iget-object v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity$3;->this$0:Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;

    # getter for: Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->btn1:Landroid/widget/Button;
    invoke-static {v0}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->access$2(Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity$3;->this$0:Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity$3;->this$0:Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;

    # getter for: Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->btn2:Landroid/widget/Button;
    invoke-static {v0}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->access$3(Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity$3;->this$0:Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity$3;->this$0:Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;

    # getter for: Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->btn3:Landroid/widget/Button;
    invoke-static {v0}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->access$4(Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity$3;->this$0:Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    return-void

    .line 209
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
    .locals 1
    .param p1, "arg0"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 202
    const-string v0, "animator repeat"

    invoke-static {p0, v0}, Lcom/lb/myapidemo/utils/LogUtil;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 186
    const-string v0, "animator start run"

    invoke-static {p0, v0}, Lcom/lb/myapidemo/utils/LogUtil;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity$3;->this$0:Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;

    # getter for: Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->btn1:Landroid/widget/Button;
    invoke-static {v0}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->access$2(Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity$3;->this$0:Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;

    # getter for: Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->btn2:Landroid/widget/Button;
    invoke-static {v0}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->access$3(Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity$3;->this$0:Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;

    # getter for: Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->btn3:Landroid/widget/Button;
    invoke-static {v0}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->access$4(Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity$3;->this$0:Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;

    # getter for: Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->isShowBootom:Z
    invoke-static {v0}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->access$5(Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity$3;->this$0:Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;

    # getter for: Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->et1:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->access$6(Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity$3;->this$0:Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;

    # getter for: Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->et2:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->access$7(Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity$3;->this$0:Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;

    # getter for: Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->et3:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->access$8(Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :cond_0
    return-void
.end method
