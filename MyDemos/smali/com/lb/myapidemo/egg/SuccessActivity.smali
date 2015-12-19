.class public Lcom/lb/myapidemo/egg/SuccessActivity;
.super Landroid/app/Activity;
.source "SuccessActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btn_share:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 32
    const v0, 0x7f080029

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/egg/SuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lb/myapidemo/egg/SuccessActivity;->btn_share:Landroid/widget/Button;

    .line 33
    return-void
.end method

.method private setData()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method private setListener()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lb/myapidemo/egg/SuccessActivity;->btn_share:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 59
    :goto_0
    return-void

    .line 55
    :pswitch_0
    const-string v1, "\u7838\u91d1\u86cb\u4e2d\u5927\u5956"

    const-string v2, "\u6211\u7838\u91d1\u86cb\u62bd\u4e2d100\u5143\u73b0\u91d1\u7ea2\u5305"

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/lb/myapidemo/wechatshare/CommonUtil;->showShare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x7f080029
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/egg/SuccessActivity;->setContentView(I)V

    .line 20
    invoke-direct {p0}, Lcom/lb/myapidemo/egg/SuccessActivity;->findView()V

    .line 22
    invoke-direct {p0}, Lcom/lb/myapidemo/egg/SuccessActivity;->setListener()V

    .line 24
    invoke-direct {p0}, Lcom/lb/myapidemo/egg/SuccessActivity;->setData()V

    .line 26
    return-void
.end method
