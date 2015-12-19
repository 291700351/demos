.class public Lcom/lb/myapidemo/notice/OtherActivity;
.super Landroid/app/Activity;
.source "OtherActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 23
    .local v0, "textView":Landroid/widget/TextView;
    const-string v1, "\u70b9\u51fb\u901a\u77e5\u8df3\u8f6c\u8fdb\u6765\u7684"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 26
    const/4 v1, 0x2

    const/high16 v2, 0x41f00000

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 27
    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/notice/OtherActivity;->setContentView(Landroid/view/View;)V

    .line 28
    return-void
.end method
