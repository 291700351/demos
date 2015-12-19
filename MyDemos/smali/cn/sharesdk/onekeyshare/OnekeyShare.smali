.class public Lcn/sharesdk/onekeyshare/OnekeyShare;
.super Ljava/lang/Object;
.source "OnekeyShare.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcn/sharesdk/framework/PlatformActionListener;


# static fields
.field private static final MSG_ACTION_CCALLBACK:I = 0x2

.field private static final MSG_CANCEL_NOTIFY:I = 0x3

.field private static final MSG_TOAST:I = 0x1


# instance fields
.field private bgView:Landroid/view/View;

.field private callback:Lcn/sharesdk/framework/PlatformActionListener;

.field private context:Landroid/content/Context;

.field private customers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/onekeyshare/CustomerLogo;",
            ">;"
        }
    .end annotation
.end field

.field private customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

.field private dialogMode:Z

.field private disableSSO:Z

.field private hiddenPlatforms:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onShareButtonClickListener:Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;

.field private shareParamsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private shareVideo:Z

.field private silent:Z

.field private theme:Lcn/sharesdk/onekeyshare/OnekeyShareTheme;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->dialogMode:Z

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->customers:Ljava/util/ArrayList;

    .line 62
    iput-object p0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->callback:Lcn/sharesdk/framework/PlatformActionListener;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->hiddenPlatforms:Ljava/util/HashMap;

    .line 64
    return-void
.end method

.method private showNotification(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 615
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 616
    return-void
.end method


# virtual methods
.method public addHiddenPlatform(Ljava/lang/String;)V
    .locals 1
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 291
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->hiddenPlatforms:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    return-void
.end method

.method public disableSSOWhenAuthorize()V
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->disableSSO:Z

    .line 276
    return-void
.end method

.method public getCallback()Lcn/sharesdk/framework/PlatformActionListener;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->callback:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method public getShareContentCustomizeCallback()Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 526
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 610
    :cond_0
    :goto_0
    return v6

    .line 528
    :pswitch_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 529
    .local v3, "text":Ljava/lang/String;
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-static {v4, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 533
    .end local v3    # "text":Ljava/lang/String;
    :pswitch_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 536
    :pswitch_2
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "ssdk_oks_share_completed"

    invoke-static {v4, v5}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 537
    .local v2, "resId":I
    if-lez v2, :cond_0

    .line 538
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 544
    .end local v2    # "resId":I
    :pswitch_3
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "expName":Ljava/lang/String;
    const-string v4, "WechatClientNotExistException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 546
    const-string v4, "WechatTimelineNotSupportedException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 547
    const-string v4, "WechatFavoriteNotSupportedException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 548
    :cond_1
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "ssdk_wechat_client_inavailable"

    invoke-static {v4, v5}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 549
    .restart local v2    # "resId":I
    if-lez v2, :cond_0

    .line 550
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 552
    .end local v2    # "resId":I
    :cond_2
    const-string v4, "GooglePlusClientNotExistException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 553
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "ssdk_google_plus_client_inavailable"

    invoke-static {v4, v5}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 554
    .restart local v2    # "resId":I
    if-lez v2, :cond_0

    .line 555
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 557
    .end local v2    # "resId":I
    :cond_3
    const-string v4, "QQClientNotExistException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 558
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "ssdk_qq_client_inavailable"

    invoke-static {v4, v5}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 559
    .restart local v2    # "resId":I
    if-lez v2, :cond_0

    .line 560
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 562
    .end local v2    # "resId":I
    :cond_4
    const-string v4, "YixinClientNotExistException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 563
    const-string v4, "YixinTimelineNotSupportedException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 564
    :cond_5
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "ssdk_yixin_client_inavailable"

    invoke-static {v4, v5}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 565
    .restart local v2    # "resId":I
    if-lez v2, :cond_0

    .line 566
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 568
    .end local v2    # "resId":I
    :cond_6
    const-string v4, "KakaoTalkClientNotExistException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 569
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "ssdk_kakaotalk_client_inavailable"

    invoke-static {v4, v5}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 570
    .restart local v2    # "resId":I
    if-lez v2, :cond_0

    .line 571
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 573
    .end local v2    # "resId":I
    :cond_7
    const-string v4, "KakaoStoryClientNotExistException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 574
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "ssdk_kakaostory_client_inavailable"

    invoke-static {v4, v5}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 575
    .restart local v2    # "resId":I
    if-lez v2, :cond_0

    .line 576
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 578
    .end local v2    # "resId":I
    :cond_8
    const-string v4, "WhatsAppClientNotExistException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 579
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "ssdk_whatsapp_client_inavailable"

    invoke-static {v4, v5}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 580
    .restart local v2    # "resId":I
    if-lez v2, :cond_0

    .line 581
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 584
    .end local v2    # "resId":I
    :cond_9
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "ssdk_oks_share_failed"

    invoke-static {v4, v5}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 585
    .restart local v2    # "resId":I
    if-lez v2, :cond_0

    .line 586
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 593
    .end local v0    # "expName":Ljava/lang/String;
    .end local v2    # "resId":I
    :pswitch_4
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "ssdk_oks_share_canceled"

    invoke-static {v4, v5}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 594
    .restart local v2    # "resId":I
    if-lez v2, :cond_0

    .line 595
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 603
    .end local v2    # "resId":I
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/NotificationManager;

    .line 604
    .local v1, "nm":Landroid/app/NotificationManager;
    if-eqz v1, :cond_0

    .line 605
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 526
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch

    .line 533
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 2
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I

    .prologue
    .line 514
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 515
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 516
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 517
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 518
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 519
    invoke-static {v0, p0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 522
    const/4 v1, 0x5

    invoke-static {v1, p1}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    .line 523
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 2
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 491
    .local p3, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 492
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 493
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 494
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 495
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 496
    invoke-static {v0, p0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 497
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 2
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x2

    .line 500
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 502
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 503
    .local v0, "msg":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 504
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 505
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 506
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 507
    invoke-static {v0, p0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 510
    const/4 v1, 0x4

    invoke-static {v1, p1}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    .line 511
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "address"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void
.end method

.method public setCallback(Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 0
    .param p1, "callback"    # Lcn/sharesdk/framework/PlatformActionListener;

    .prologue
    .line 245
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->callback:Lcn/sharesdk/framework/PlatformActionListener;

    .line 246
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 2
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 185
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "comment"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    return-void
.end method

.method public setCustomerLogo(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "enableLogo"    # Landroid/graphics/Bitmap;
    .param p2, "disableLogo"    # Landroid/graphics/Bitmap;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "ocListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 265
    new-instance v0, Lcn/sharesdk/onekeyshare/CustomerLogo;

    invoke-direct {v0}, Lcn/sharesdk/onekeyshare/CustomerLogo;-><init>()V

    .line 266
    .local v0, "cl":Lcn/sharesdk/onekeyshare/CustomerLogo;
    iput-object p3, v0, Lcn/sharesdk/onekeyshare/CustomerLogo;->label:Ljava/lang/String;

    .line 267
    iput-object p1, v0, Lcn/sharesdk/onekeyshare/CustomerLogo;->enableLogo:Landroid/graphics/Bitmap;

    .line 268
    iput-object p2, v0, Lcn/sharesdk/onekeyshare/CustomerLogo;->disableLogo:Landroid/graphics/Bitmap;

    .line 269
    iput-object p4, v0, Lcn/sharesdk/onekeyshare/CustomerLogo;->listener:Landroid/view/View$OnClickListener;

    .line 270
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->customers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    return-void
.end method

.method public setDialogMode()V
    .locals 3

    .prologue
    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->dialogMode:Z

    .line 286
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "dialogMode"

    iget-boolean v2, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->dialogMode:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    return-void
.end method

.method public setEditPageBackground(Landroid/view/View;)V
    .locals 0
    .param p1, "bgView"    # Landroid/view/View;

    .prologue
    .line 310
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->bgView:Landroid/view/View;

    .line 311
    return-void
.end method

.method public setExecuteUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "executeurl"    # Ljava/lang/String;

    .prologue
    .line 235
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "executeurl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 180
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "filePath"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-void
.end method

.method public setImageArray([Ljava/lang/String;)V
    .locals 2
    .param p1, "imageArray"    # [Ljava/lang/String;

    .prologue
    .line 306
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "imageArray"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 2
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "imagePath"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_0
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "imageUrl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_0
    return-void
.end method

.method public setInstallUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "installurl"    # Ljava/lang/String;

    .prologue
    .line 230
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "installurl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    return-void
.end method

.method public setLatitude(F)V
    .locals 3
    .param p1, "latitude"    # F

    .prologue
    .line 210
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "latitude"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    return-void
.end method

.method public setLongitude(F)V
    .locals 3
    .param p1, "longitude"    # F

    .prologue
    .line 215
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "longitude"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    return-void
.end method

.method public setMusicUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "musicUrl"    # Ljava/lang/String;

    .prologue
    .line 240
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "musicUrl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    return-void
.end method

.method public setOnShareButtonClickListener(Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;)V
    .locals 0
    .param p1, "onShareButtonClickListener"    # Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;

    .prologue
    .line 314
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->onShareButtonClickListener:Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;

    .line 315
    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 2
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 225
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "platform"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    return-void
.end method

.method public setShareContentCustomizeCallback(Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;)V
    .locals 0
    .param p1, "callback"    # Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    .prologue
    .line 255
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    .line 256
    return-void
.end method

.method public setShareFromQQAuthSupport(Z)V
    .locals 3
    .param p1, "shareFromQQLogin"    # Z

    .prologue
    .line 621
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "isShareTencentWeibo"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    return-void
.end method

.method public setSilent(Z)V
    .locals 0
    .param p1, "silent"    # Z

    .prologue
    .line 220
    iput-boolean p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->silent:Z

    .line 221
    return-void
.end method

.method public setSite(Ljava/lang/String;)V
    .locals 2
    .param p1, "site"    # Ljava/lang/String;

    .prologue
    .line 190
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "site"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    return-void
.end method

.method public setSiteUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "siteUrl"    # Ljava/lang/String;

    .prologue
    .line 195
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "siteUrl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-void
.end method

.method public setTheme(Lcn/sharesdk/onekeyshare/OnekeyShareTheme;)V
    .locals 0
    .param p1, "theme"    # Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    .prologue
    .line 130
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->theme:Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    .line 131
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 143
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-void
.end method

.method public setTitleUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "titleUrl"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "titleUrl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method

.method public setVenueDescription(Ljava/lang/String;)V
    .locals 2
    .param p1, "venueDescription"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "venueDescription"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    return-void
.end method

.method public setVenueName(Ljava/lang/String;)V
    .locals 2
    .param p1, "venueName"    # Ljava/lang/String;

    .prologue
    .line 200
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "venueName"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void
.end method

.method public setViewToShare(Landroid/view/View;)V
    .locals 4
    .param p1, "viewToShare"    # Landroid/view/View;

    .prologue
    .line 297
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/mob/tools/utils/BitmapHelper;->captureView(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 298
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v3, "viewToShare"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v1

    .line 300
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public share(Ljava/util/HashMap;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcn/sharesdk/framework/Platform;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p1, "shareData":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcn/sharesdk/framework/Platform;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/16 v22, 0x0

    .line 320
    .local v22, "started":Z
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_0
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-nez v25, :cond_0

    .line 487
    return-void

    .line 320
    :cond_0
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 321
    .local v3, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcn/sharesdk/framework/Platform;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcn/sharesdk/framework/Platform;

    .line 322
    .local v18, "plat":Lcn/sharesdk/framework/Platform;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->disableSSO:Z

    move/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->SSOSetting(Z)V

    .line 323
    invoke-virtual/range {v18 .. v18}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v17

    .line 325
    .local v17, "name":Ljava/lang/String;
    const-string v25, "GooglePlus"

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 326
    .local v7, "isGooglePlus":Z
    if-eqz v7, :cond_1

    invoke-virtual/range {v18 .. v18}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v25

    if-nez v25, :cond_1

    .line 327
    new-instance v16, Landroid/os/Message;

    invoke-direct/range {v16 .. v16}, Landroid/os/Message;-><init>()V

    .line 328
    .local v16, "msg":Landroid/os/Message;
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "ssdk_google_plus_client_inavailable"

    invoke-static/range {v25 .. v26}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v19

    .line 330
    .local v19, "resId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 331
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto :goto_0

    .line 335
    .end local v16    # "msg":Landroid/os/Message;
    .end local v19    # "resId":I
    :cond_1
    const-string v25, "Alipay"

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 336
    .local v6, "isAlipay":Z
    if-eqz v6, :cond_2

    invoke-virtual/range {v18 .. v18}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v25

    if-nez v25, :cond_2

    .line 337
    new-instance v16, Landroid/os/Message;

    invoke-direct/range {v16 .. v16}, Landroid/os/Message;-><init>()V

    .line 338
    .restart local v16    # "msg":Landroid/os/Message;
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "ssdk_alipay_client_inavailable"

    invoke-static/range {v25 .. v26}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v19

    .line 340
    .restart local v19    # "resId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 341
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 345
    .end local v16    # "msg":Landroid/os/Message;
    .end local v19    # "resId":I
    :cond_2
    const-string v25, "KakaoTalk"

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 346
    .local v9, "isKakaoTalk":Z
    if-eqz v9, :cond_3

    invoke-virtual/range {v18 .. v18}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v25

    if-nez v25, :cond_3

    .line 347
    new-instance v16, Landroid/os/Message;

    invoke-direct/range {v16 .. v16}, Landroid/os/Message;-><init>()V

    .line 348
    .restart local v16    # "msg":Landroid/os/Message;
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "ssdk_kakaotalk_client_inavailable"

    invoke-static/range {v25 .. v26}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v19

    .line 350
    .restart local v19    # "resId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 351
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 355
    .end local v16    # "msg":Landroid/os/Message;
    .end local v19    # "resId":I
    :cond_3
    const-string v25, "KakaoStory"

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 356
    .local v8, "isKakaoStory":Z
    if-eqz v8, :cond_4

    invoke-virtual/range {v18 .. v18}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v25

    if-nez v25, :cond_4

    .line 357
    new-instance v16, Landroid/os/Message;

    invoke-direct/range {v16 .. v16}, Landroid/os/Message;-><init>()V

    .line 358
    .restart local v16    # "msg":Landroid/os/Message;
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "ssdk_kakaostory_client_inavailable"

    invoke-static/range {v25 .. v26}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v19

    .line 360
    .restart local v19    # "resId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 361
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 365
    .end local v16    # "msg":Landroid/os/Message;
    .end local v19    # "resId":I
    :cond_4
    const-string v25, "Line"

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 366
    .local v12, "isLine":Z
    if-eqz v12, :cond_5

    invoke-virtual/range {v18 .. v18}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v25

    if-nez v25, :cond_5

    .line 367
    new-instance v16, Landroid/os/Message;

    invoke-direct/range {v16 .. v16}, Landroid/os/Message;-><init>()V

    .line 368
    .restart local v16    # "msg":Landroid/os/Message;
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "ssdk_line_client_inavailable"

    invoke-static/range {v25 .. v26}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v19

    .line 370
    .restart local v19    # "resId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 371
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 375
    .end local v16    # "msg":Landroid/os/Message;
    .end local v19    # "resId":I
    :cond_5
    const-string v25, "WhatsApp"

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 376
    .local v14, "isWhatsApp":Z
    if-eqz v14, :cond_6

    invoke-virtual/range {v18 .. v18}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v25

    if-nez v25, :cond_6

    .line 377
    new-instance v16, Landroid/os/Message;

    invoke-direct/range {v16 .. v16}, Landroid/os/Message;-><init>()V

    .line 378
    .restart local v16    # "msg":Landroid/os/Message;
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "ssdk_whatsapp_client_inavailable"

    invoke-static/range {v25 .. v26}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v19

    .line 380
    .restart local v19    # "resId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 381
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 385
    .end local v16    # "msg":Landroid/os/Message;
    .end local v19    # "resId":I
    :cond_6
    const-string v25, "Pinterest"

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 386
    .local v13, "isPinterest":Z
    if-eqz v13, :cond_7

    invoke-virtual/range {v18 .. v18}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v25

    if-nez v25, :cond_7

    .line 387
    new-instance v16, Landroid/os/Message;

    invoke-direct/range {v16 .. v16}, Landroid/os/Message;-><init>()V

    .line 388
    .restart local v16    # "msg":Landroid/os/Message;
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "ssdk_pinterest_client_inavailable"

    invoke-static/range {v25 .. v26}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v19

    .line 390
    .restart local v19    # "resId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 391
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 395
    .end local v16    # "msg":Landroid/os/Message;
    .end local v19    # "resId":I
    :cond_7
    const-string v25, "Instagram"

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_8

    invoke-virtual/range {v18 .. v18}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v25

    if-nez v25, :cond_8

    .line 396
    new-instance v16, Landroid/os/Message;

    invoke-direct/range {v16 .. v16}, Landroid/os/Message;-><init>()V

    .line 397
    .restart local v16    # "msg":Landroid/os/Message;
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "ssdk_instagram_client_inavailable"

    invoke-static/range {v25 .. v26}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v19

    .line 399
    .restart local v19    # "resId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 400
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 404
    .end local v16    # "msg":Landroid/os/Message;
    .end local v19    # "resId":I
    :cond_8
    const-string v25, "Laiwang"

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 405
    .local v10, "isLaiwang":Z
    const-string v25, "LaiwangMoments"

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 406
    .local v11, "isLaiwangMoments":Z
    if-nez v10, :cond_9

    if-eqz v11, :cond_a

    .line 407
    :cond_9
    invoke-virtual/range {v18 .. v18}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v25

    if-nez v25, :cond_a

    .line 408
    new-instance v16, Landroid/os/Message;

    invoke-direct/range {v16 .. v16}, Landroid/os/Message;-><init>()V

    .line 409
    .restart local v16    # "msg":Landroid/os/Message;
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "ssdk_laiwang_client_inavailable"

    invoke-static/range {v25 .. v26}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v19

    .line 411
    .restart local v19    # "resId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 412
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 417
    .end local v16    # "msg":Landroid/os/Message;
    .end local v19    # "resId":I
    :cond_a
    const-string v25, "YixinMoments"

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_b

    const-string v25, "Yixin"

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_b

    const/4 v15, 0x0

    .line 418
    .local v15, "isYixin":Z
    :goto_1
    if-eqz v15, :cond_c

    invoke-virtual/range {v18 .. v18}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v25

    if-nez v25, :cond_c

    .line 419
    new-instance v16, Landroid/os/Message;

    invoke-direct/range {v16 .. v16}, Landroid/os/Message;-><init>()V

    .line 420
    .restart local v16    # "msg":Landroid/os/Message;
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "ssdk_yixin_client_inavailable"

    invoke-static/range {v25 .. v26}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v19

    .line 422
    .restart local v19    # "resId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 423
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 417
    .end local v15    # "isYixin":Z
    .end local v16    # "msg":Landroid/os/Message;
    .end local v19    # "resId":I
    :cond_b
    const/4 v15, 0x1

    goto :goto_1

    .line 427
    .restart local v15    # "isYixin":Z
    :cond_c
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 428
    .local v2, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v21, 0x1

    .line 429
    .local v21, "shareType":I
    const-string v25, "imagePath"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 430
    .local v4, "imagePath":Ljava/lang/String;
    if-eqz v4, :cond_11

    new-instance v25, Ljava/io/File;

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_11

    .line 431
    const/16 v21, 0x2

    .line 432
    const-string v25, ".gif"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 433
    const/16 v21, 0x9

    .line 471
    :cond_d
    :goto_2
    const-string v25, "shareType"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    if-nez v22, :cond_e

    .line 474
    const/16 v22, 0x1

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "ssdk_oks_sharing"

    invoke-static/range {v25 .. v26}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v19

    .line 477
    .restart local v19    # "resId":I
    if-lez v19, :cond_e

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    .line 482
    .end local v19    # "resId":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->callback:Lcn/sharesdk/framework/PlatformActionListener;

    move-object/from16 v25, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 483
    new-instance v20, Lcn/sharesdk/onekeyshare/ShareCore;

    invoke-direct/range {v20 .. v20}, Lcn/sharesdk/onekeyshare/ShareCore;-><init>()V

    .line 484
    .local v20, "shareCore":Lcn/sharesdk/onekeyshare/ShareCore;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/ShareCore;->setShareContentCustomizeCallback(Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;)V

    .line 485
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/onekeyshare/ShareCore;->share(Lcn/sharesdk/framework/Platform;Ljava/util/HashMap;)Z

    goto/16 :goto_0

    .line 434
    .end local v20    # "shareCore":Lcn/sharesdk/onekeyshare/ShareCore;
    :cond_f
    const-string v25, "url"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d

    const-string v25, "url"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_d

    .line 435
    const/16 v21, 0x4

    .line 436
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareVideo:Z

    move/from16 v25, v0

    if-eqz v25, :cond_10

    .line 437
    const/16 v21, 0x6

    goto/16 :goto_2

    .line 438
    :cond_10
    const-string v25, "musicUrl"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d

    const-string v25, "musicUrl"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_d

    .line 439
    const/16 v21, 0x5

    goto/16 :goto_2

    .line 443
    :cond_11
    const-string v25, "viewToShare"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/graphics/Bitmap;

    .line 444
    .local v23, "viewToShare":Landroid/graphics/Bitmap;
    if-eqz v23, :cond_13

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v25

    if-nez v25, :cond_13

    .line 445
    const/16 v21, 0x2

    .line 446
    const-string v25, "url"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d

    const-string v25, "url"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_d

    .line 447
    const/16 v21, 0x4

    .line 448
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareVideo:Z

    move/from16 v25, v0

    if-eqz v25, :cond_12

    .line 449
    const/16 v21, 0x6

    goto/16 :goto_2

    .line 450
    :cond_12
    const-string v25, "musicUrl"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d

    const-string v25, "musicUrl"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_d

    .line 451
    const/16 v21, 0x5

    goto/16 :goto_2

    .line 455
    :cond_13
    const-string v25, "imageUrl"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 456
    .local v5, "imageUrl":Ljava/lang/Object;
    if-eqz v5, :cond_d

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_d

    .line 457
    const/16 v21, 0x2

    .line 458
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    const-string v26, ".gif"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_14

    .line 459
    const/16 v21, 0x9

    goto/16 :goto_2

    .line 460
    :cond_14
    const-string v25, "url"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d

    const-string v25, "url"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_d

    .line 461
    const/16 v21, 0x4

    .line 462
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareVideo:Z

    move/from16 v25, v0

    if-eqz v25, :cond_15

    .line 463
    const/16 v21, 0x6

    goto/16 :goto_2

    .line 464
    :cond_15
    const-string v25, "musicUrl"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d

    const-string v25, "musicUrl"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_d

    .line 465
    const/16 v21, 0x5

    goto/16 :goto_2
.end method

.method public shareVideoToWechat()V
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareVideo:Z

    .line 281
    return-void
.end method

.method public show(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 67
    invoke-static {p1}, Lcn/sharesdk/framework/ShareSDK;->initSDK(Landroid/content/Context;)V

    .line 68
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    .line 71
    const/4 v5, 0x1

    invoke-static {v5, v7}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    .line 80
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v6, "platform"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 81
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v6, "platform"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v2

    .line 84
    .local v2, "platform":Lcn/sharesdk/framework/Platform;
    iget-boolean v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->silent:Z

    if-nez v5, :cond_0

    .line 85
    invoke-static {v1}, Lcn/sharesdk/onekeyshare/ShareCore;->isUseClientToShare(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 86
    instance-of v5, v2, Lcn/sharesdk/framework/CustomPlatform;

    if-eqz v5, :cond_1

    .line 89
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v4, "shareData":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcn/sharesdk/framework/Platform;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v5

    iget-object v6, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-virtual {p0, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->share(Ljava/util/HashMap;)V

    .line 127
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "platform":Lcn/sharesdk/framework/Platform;
    .end local v4    # "shareData":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcn/sharesdk/framework/Platform;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_0
    return-void

    .line 98
    :cond_1
    :try_start_0
    sget-object v5, Lcn/sharesdk/onekeyshare/OnekeyShareTheme;->SKYBLUE:Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    iget-object v6, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->theme:Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    if-ne v5, v6, :cond_2

    .line 99
    const-string v5, "cn.sharesdk.onekeyshare.theme.skyblue.PlatformListPage"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .local v3, "platformListFakeActivity":Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;
    :goto_1
    iget-boolean v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->dialogMode:Z

    invoke-virtual {v3, v5}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setDialogMode(Z)V

    .line 109
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setShareParamsMap(Ljava/util/HashMap;)V

    .line 110
    iget-boolean v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->silent:Z

    invoke-virtual {v3, v5}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setSilent(Z)V

    .line 111
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->customers:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setCustomerLogos(Ljava/util/ArrayList;)V

    .line 112
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->bgView:Landroid/view/View;

    invoke-virtual {v3, v5}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setBackgroundView(Landroid/view/View;)V

    .line 113
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->hiddenPlatforms:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setHiddenPlatforms(Ljava/util/HashMap;)V

    .line 114
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->onShareButtonClickListener:Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;

    invoke-virtual {v3, v5}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setOnShareButtonClickListener(Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;)V

    .line 115
    new-instance v5, Lcn/sharesdk/onekeyshare/OnekeyShare$1;

    invoke-direct {v5, p0}, Lcn/sharesdk/onekeyshare/OnekeyShare$1;-><init>(Lcn/sharesdk/onekeyshare/OnekeyShare;)V

    invoke-virtual {v3, v5}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setThemeShareCallback(Lcn/sharesdk/onekeyshare/ThemeShareCallback;)V

    .line 120
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v6, "platform"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 121
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v6, "platform"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .restart local v1    # "name":Ljava/lang/String;
    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v2

    .line 123
    .restart local v2    # "platform":Lcn/sharesdk/framework/Platform;
    invoke-virtual {v3, p1, v2}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->showEditPage(Landroid/content/Context;Lcn/sharesdk/framework/Platform;)V

    goto :goto_0

    .line 101
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "platform":Lcn/sharesdk/framework/Platform;
    .end local v3    # "platformListFakeActivity":Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;
    :cond_2
    :try_start_1
    const-string v5, "cn.sharesdk.onekeyshare.theme.classic.PlatformListPage"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v3    # "platformListFakeActivity":Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;
    goto :goto_1

    .line 103
    .end local v3    # "platformListFakeActivity":Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "platformListFakeActivity":Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;
    :cond_3
    invoke-virtual {v3, p1, v7}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->show(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
