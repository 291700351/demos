.class public Lcom/lb/myapidemo/wechatshare/WeChatShareActivity;
.super Landroid/app/Activity;
.source "WeChatShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btn_share:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 39
    const v0, 0x7f080029

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/wechatshare/WeChatShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lb/myapidemo/wechatshare/WeChatShareActivity;->btn_share:Landroid/widget/Button;

    .line 41
    return-void
.end method

.method private setData()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method private setListener()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lb/myapidemo/wechatshare/WeChatShareActivity;->btn_share:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 65
    :pswitch_0
    const-string v1, "\u827a\u70b9\u7406\u8d22"

    const-string v2, "\u827a\u70b9\u7406\u8d22\u5206\u4eab\u9001\u73b0\u91d1"

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/lb/myapidemo/wechatshare/CommonUtil;->showShare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x7f080029
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/wechatshare/WeChatShareActivity;->setContentView(I)V

    .line 25
    const-string v0, "\u5fae\u4fe1\u5206\u4eabSDK\u63a5\u5165"

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/wechatshare/WeChatShareActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 27
    invoke-direct {p0}, Lcom/lb/myapidemo/wechatshare/WeChatShareActivity;->findView()V

    .line 29
    invoke-direct {p0}, Lcom/lb/myapidemo/wechatshare/WeChatShareActivity;->setListener()V

    .line 31
    invoke-direct {p0}, Lcom/lb/myapidemo/wechatshare/WeChatShareActivity;->setData()V

    .line 33
    return-void
.end method
