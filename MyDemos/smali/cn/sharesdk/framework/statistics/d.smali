.class public Lcn/sharesdk/framework/statistics/d;
.super Lcom/mob/tools/SSDKHandlerThread;


# static fields
.field private static a:Lcn/sharesdk/framework/statistics/d;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/mob/tools/utils/DeviceHelper;

.field private d:Lcn/sharesdk/framework/statistics/a;

.field private e:Ljava/lang/String;

.field private f:Landroid/os/Handler;

.field private g:Z

.field private h:I

.field private i:Z

.field private j:J

.field private k:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x4c68

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/SSDKHandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcn/sharesdk/framework/statistics/d;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/statistics/d;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-static {p1}, Lcn/sharesdk/framework/statistics/a;->a(Landroid/content/Context;)Lcn/sharesdk/framework/statistics/a;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/statistics/d;->d:Lcn/sharesdk/framework/statistics/a;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcn/sharesdk/framework/statistics/d;
    .locals 3

    const-class v1, Lcn/sharesdk/framework/statistics/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/sharesdk/framework/statistics/d;->a:Lcn/sharesdk/framework/statistics/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcn/sharesdk/framework/statistics/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcn/sharesdk/framework/statistics/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/sharesdk/framework/statistics/d;->a:Lcn/sharesdk/framework/statistics/d;

    :cond_1
    sget-object v0, Lcn/sharesdk/framework/statistics/d;->a:Lcn/sharesdk/framework/statistics/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcn/sharesdk/framework/statistics/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcn/sharesdk/framework/statistics/d;->k:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/d;->c:Lcom/mob/tools/utils/DeviceHelper;

    iget-object v2, p0, Lcn/sharesdk/framework/statistics/d;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/utils/DeviceHelper;->isMainProcess(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcn/sharesdk/framework/statistics/d;->k:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/sharesdk/framework/statistics/d;->j:J

    new-instance v0, Lcn/sharesdk/framework/statistics/b/g;

    invoke-direct {v0}, Lcn/sharesdk/framework/statistics/b/g;-><init>()V

    invoke-virtual {p0, v0}, Lcn/sharesdk/framework/statistics/d;->a(Lcn/sharesdk/framework/statistics/b/c;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcn/sharesdk/framework/statistics/d;->k:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/d;->c:Lcom/mob/tools/utils/DeviceHelper;

    iget-object v2, p0, Lcn/sharesdk/framework/statistics/d;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/utils/DeviceHelper;->isMainProcess(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcn/sharesdk/framework/statistics/d;->k:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/sharesdk/framework/statistics/d;->j:J

    sub-long/2addr v0, v2

    new-instance v2, Lcn/sharesdk/framework/statistics/b/e;

    invoke-direct {v2}, Lcn/sharesdk/framework/statistics/b/e;-><init>()V

    iput-wide v0, v2, Lcn/sharesdk/framework/statistics/b/e;->a:J

    invoke-virtual {p0, v2}, Lcn/sharesdk/framework/statistics/d;->a(Lcn/sharesdk/framework/statistics/b/c;)V

    goto :goto_0
.end method

.method private b(Lcn/sharesdk/framework/statistics/b/c;)V
    .locals 2

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/d;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getDeviceKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/sharesdk/framework/statistics/b/c;->f:Ljava/lang/String;

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/d;->e:Ljava/lang/String;

    iput-object v0, p1, Lcn/sharesdk/framework/statistics/b/c;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/d;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/sharesdk/framework/statistics/b/c;->h:Ljava/lang/String;

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/d;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getAppVersion()I

    move-result v0

    iput v0, p1, Lcn/sharesdk/framework/statistics/b/c;->i:I

    const v0, 0xea60

    iget v1, p0, Lcn/sharesdk/framework/statistics/d;->h:I

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/sharesdk/framework/statistics/b/c;->j:Ljava/lang/String;

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/d;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getPlatformCode()I

    move-result v0

    iput v0, p1, Lcn/sharesdk/framework/statistics/b/c;->k:I

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/d;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/sharesdk/framework/statistics/b/c;->l:Ljava/lang/String;

    const-string v0, "cn.sharesdk.demo"

    iget-object v1, p1, Lcn/sharesdk/framework/statistics/b/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "api20"

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "androidv1101"

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Your application is using the appkey of ShareSDK Demo, this will cause its data won\'t be count!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcn/sharesdk/framework/statistics/d;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getDeviceData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/sharesdk/framework/statistics/b/c;->m:Ljava/lang/String;

    return-void
.end method

.method private b()Z
    .locals 2

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getTopTaskPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/statistics/d;->c:Lcom/mob/tools/utils/DeviceHelper;

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/d;->b:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->isMainProcess(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcn/sharesdk/framework/statistics/a;->a(Landroid/content/Context;)Lcn/sharesdk/framework/statistics/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/statistics/a;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private c(Lcn/sharesdk/framework/statistics/b/c;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/statistics/d;->d:Lcn/sharesdk/framework/statistics/a;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/statistics/a;->a(Lcn/sharesdk/framework/statistics/b/c;)V

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/d;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/statistics/b/c;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {p1}, Lcn/sharesdk/framework/statistics/b/c;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcn/sharesdk/framework/statistics/d;->h:I

    return-void
.end method

.method public a(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/framework/statistics/d;->f:Landroid/os/Handler;

    return-void
.end method

.method public a(Lcn/sharesdk/framework/statistics/b/c;)V
    .locals 3

    iget-boolean v0, p0, Lcn/sharesdk/framework/statistics/d;->i:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcn/sharesdk/framework/statistics/d;->b(Lcn/sharesdk/framework/statistics/b/c;)V

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/d;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/statistics/b/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/statistics/d;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drop event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/sharesdk/framework/statistics/b/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/framework/statistics/d;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/sharesdk/framework/statistics/d;->g:Z

    return-void
.end method

.method protected onMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/sharesdk/framework/statistics/b/c;

    invoke-direct {p0, v0}, Lcn/sharesdk/framework/statistics/d;->c(Lcn/sharesdk/framework/statistics/b/c;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcn/sharesdk/framework/statistics/d;->a()V

    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/statistics/d;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcn/sharesdk/framework/statistics/d;->c()V

    :try_start_1
    iget-object v0, p0, Lcn/sharesdk/framework/statistics/d;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcn/sharesdk/framework/statistics/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcn/sharesdk/framework/statistics/a/c;->a(Landroid/content/Context;)Lcn/sharesdk/framework/statistics/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/statistics/a/c;->h()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v4, :cond_1

    if-ne v1, v5, :cond_1

    if-eq v3, v2, :cond_2

    :cond_1
    iget-object v0, p0, Lcn/sharesdk/framework/statistics/d;->d:Lcn/sharesdk/framework/statistics/a;

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/statistics/a;->b(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcn/sharesdk/framework/statistics/d;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcn/sharesdk/framework/statistics/d;->d:Lcn/sharesdk/framework/statistics/a;

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/statistics/a;->c(Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onStart(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    iget-boolean v0, p0, Lcn/sharesdk/framework/statistics/d;->i:Z

    if-nez v0, :cond_0

    iput-boolean v4, p0, Lcn/sharesdk/framework/statistics/d;->i:Z

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/d;->d:Lcn/sharesdk/framework/statistics/a;

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/statistics/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/d;->d:Lcn/sharesdk/framework/statistics/a;

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/statistics/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/d;->d:Lcn/sharesdk/framework/statistics/a;

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/statistics/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/d;->d:Lcn/sharesdk/framework/statistics/a;

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/statistics/a;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/d;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/d;->d:Lcn/sharesdk/framework/statistics/a;

    iget-boolean v1, p0, Lcn/sharesdk/framework/statistics/d;->g:Z

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/statistics/a;->a(Z)V

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/d;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/d;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcn/sharesdk/framework/statistics/NewAppReceiver;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected onStop(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-boolean v0, p0, Lcn/sharesdk/framework/statistics/d;->i:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/sharesdk/framework/statistics/d;->j:J

    sub-long/2addr v0, v2

    new-instance v2, Lcn/sharesdk/framework/statistics/b/e;

    invoke-direct {v2}, Lcn/sharesdk/framework/statistics/b/e;-><init>()V

    iput-wide v0, v2, Lcn/sharesdk/framework/statistics/b/e;->a:J

    invoke-virtual {p0, v2}, Lcn/sharesdk/framework/statistics/d;->a(Lcn/sharesdk/framework/statistics/b/c;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sharesdk/framework/statistics/d;->i:Z

    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/statistics/d;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcn/sharesdk/framework/statistics/d;->a:Lcn/sharesdk/framework/statistics/d;

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/d;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
