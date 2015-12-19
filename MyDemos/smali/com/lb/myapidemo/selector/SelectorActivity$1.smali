.class Lcom/lb/myapidemo/selector/SelectorActivity$1;
.super Ljava/lang/Object;
.source "SelectorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lb/myapidemo/selector/SelectorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lb/myapidemo/selector/SelectorActivity;


# direct methods
.method constructor <init>(Lcom/lb/myapidemo/selector/SelectorActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lb/myapidemo/selector/SelectorActivity$1;->this$0:Lcom/lb/myapidemo/selector/SelectorActivity;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 43
    iget-object v0, p0, Lcom/lb/myapidemo/selector/SelectorActivity$1;->this$0:Lcom/lb/myapidemo/selector/SelectorActivity;

    # getter for: Lcom/lb/myapidemo/selector/SelectorActivity;->canSign:Z
    invoke-static {v0}, Lcom/lb/myapidemo/selector/SelectorActivity;->access$0(Lcom/lb/myapidemo/selector/SelectorActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/lb/myapidemo/selector/SelectorActivity$1;->this$0:Lcom/lb/myapidemo/selector/SelectorActivity;

    # getter for: Lcom/lb/myapidemo/selector/SelectorActivity;->btn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/lb/myapidemo/selector/SelectorActivity;->access$1(Lcom/lb/myapidemo/selector/SelectorActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "\u5df2\u7b7e\u5230"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/lb/myapidemo/selector/SelectorActivity$1;->this$0:Lcom/lb/myapidemo/selector/SelectorActivity;

    invoke-static {v0, v2}, Lcom/lb/myapidemo/selector/SelectorActivity;->access$2(Lcom/lb/myapidemo/selector/SelectorActivity;Z)V

    .line 46
    iget-object v0, p0, Lcom/lb/myapidemo/selector/SelectorActivity$1;->this$0:Lcom/lb/myapidemo/selector/SelectorActivity;

    # getter for: Lcom/lb/myapidemo/selector/SelectorActivity;->btn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/lb/myapidemo/selector/SelectorActivity;->access$1(Lcom/lb/myapidemo/selector/SelectorActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/lb/myapidemo/selector/SelectorActivity$1;->this$0:Lcom/lb/myapidemo/selector/SelectorActivity;

    # getter for: Lcom/lb/myapidemo/selector/SelectorActivity;->canSign:Z
    invoke-static {v1}, Lcom/lb/myapidemo/selector/SelectorActivity;->access$0(Lcom/lb/myapidemo/selector/SelectorActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 47
    iget-object v0, p0, Lcom/lb/myapidemo/selector/SelectorActivity$1;->this$0:Lcom/lb/myapidemo/selector/SelectorActivity;

    const-string v1, "\u7b7e\u5230\u6210\u529f"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 50
    :cond_0
    return-void
.end method
