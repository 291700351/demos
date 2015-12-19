.class public Lcom/lb/myapidemo/selector/SelectorActivity;
.super Landroid/app/Activity;
.source "SelectorActivity.java"


# instance fields
.field private btn:Landroid/widget/Button;

.field private canSign:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lb/myapidemo/selector/SelectorActivity;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/lb/myapidemo/selector/SelectorActivity;->canSign:Z

    return v0
.end method

.method static synthetic access$1(Lcom/lb/myapidemo/selector/SelectorActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lb/myapidemo/selector/SelectorActivity;->btn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lb/myapidemo/selector/SelectorActivity;Z)V
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/lb/myapidemo/selector/SelectorActivity;->canSign:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/selector/SelectorActivity;->setContentView(I)V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lb/myapidemo/selector/SelectorActivity;->canSign:Z

    .line 31
    const v0, 0x7f080010

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/selector/SelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lb/myapidemo/selector/SelectorActivity;->btn:Landroid/widget/Button;

    .line 33
    iget-object v0, p0, Lcom/lb/myapidemo/selector/SelectorActivity;->btn:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/lb/myapidemo/selector/SelectorActivity;->canSign:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 34
    iget-boolean v0, p0, Lcom/lb/myapidemo/selector/SelectorActivity;->canSign:Z

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/lb/myapidemo/selector/SelectorActivity;->btn:Landroid/widget/Button;

    const-string v1, "\u7b7e\u5230"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 40
    :goto_0
    iget-object v0, p0, Lcom/lb/myapidemo/selector/SelectorActivity;->btn:Landroid/widget/Button;

    new-instance v1, Lcom/lb/myapidemo/selector/SelectorActivity$1;

    invoke-direct {v1, p0}, Lcom/lb/myapidemo/selector/SelectorActivity$1;-><init>(Lcom/lb/myapidemo/selector/SelectorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/lb/myapidemo/selector/SelectorActivity;->btn:Landroid/widget/Button;

    const-string v1, "\u5df2\u7b7e\u5230"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
