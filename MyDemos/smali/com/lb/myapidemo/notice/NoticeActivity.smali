.class public Lcom/lb/myapidemo/notice/NoticeActivity;
.super Landroid/app/Activity;
.source "NoticeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btn1:Landroid/widget/Button;

.field private btn2:Landroid/widget/Button;

.field private btn3:Landroid/widget/Button;

.field private id:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/lb/myapidemo/notice/NoticeActivity;->id:I

    .line 22
    return-void
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 44
    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/notice/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lb/myapidemo/notice/NoticeActivity;->btn1:Landroid/widget/Button;

    .line 45
    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/notice/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lb/myapidemo/notice/NoticeActivity;->btn2:Landroid/widget/Button;

    .line 46
    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/notice/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lb/myapidemo/notice/NoticeActivity;->btn3:Landroid/widget/Button;

    .line 47
    return-void
.end method

.method private sendNotice(ILandroid/app/PendingIntent;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v4, 0x1

    .line 87
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/lb/myapidemo/notice/NoticeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 88
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 89
    .local v0, "notification":Landroid/app/Notification;
    const/high16 v2, 0x7f020000

    iput v2, v0, Landroid/app/Notification;->icon:I

    .line 90
    const-string v2, "\u95ea\u5c4f\u5c55\u793a\u4fe1\u606f"

    iput-object v2, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    .line 92
    const-string v2, "\u901a\u77e5\u6807\u9898"

    const-string v3, "\u901a\u77e5\u7684\u8be6\u7ec6\u5185\u5bb9"

    invoke-virtual {v0, p0, v2, v3, p2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 93
    iput v4, v0, Landroid/app/Notification;->number:I

    .line 94
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 96
    iput v4, v0, Landroid/app/Notification;->defaults:I

    .line 97
    invoke-virtual {v1, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 99
    return-void
.end method

.method private setData()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method private setListener()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lb/myapidemo/notice/NoticeActivity;->btn1:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/lb/myapidemo/notice/NoticeActivity;->btn2:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/lb/myapidemo/notice/NoticeActivity;->btn3:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 80
    :goto_0
    return-void

    .line 69
    :pswitch_0
    const/4 v1, 0x1

    invoke-direct {p0, v1, v2}, Lcom/lb/myapidemo/notice/NoticeActivity;->sendNotice(ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 72
    :pswitch_1
    iget v1, p0, Lcom/lb/myapidemo/notice/NoticeActivity;->id:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lb/myapidemo/notice/NoticeActivity;->id:I

    invoke-direct {p0, v1, v2}, Lcom/lb/myapidemo/notice/NoticeActivity;->sendNotice(ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 76
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lb/myapidemo/notice/OtherActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 77
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    iget v1, p0, Lcom/lb/myapidemo/notice/NoticeActivity;->id:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lb/myapidemo/notice/NoticeActivity;->id:I

    invoke-direct {p0, v1, v0}, Lcom/lb/myapidemo/notice/NoticeActivity;->sendNotice(ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x7f080012
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/notice/NoticeActivity;->setContentView(I)V

    .line 32
    invoke-direct {p0}, Lcom/lb/myapidemo/notice/NoticeActivity;->findView()V

    .line 34
    invoke-direct {p0}, Lcom/lb/myapidemo/notice/NoticeActivity;->setListener()V

    .line 36
    invoke-direct {p0}, Lcom/lb/myapidemo/notice/NoticeActivity;->setData()V

    .line 38
    return-void
.end method
