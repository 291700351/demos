.class Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/gui/BitmapProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkerThread"
.end annotation


# instance fields
.field private curReq:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

.field private lastReport:J

.field private localType:Z

.field private processor:Lcom/mob/tools/gui/BitmapProcessor;


# direct methods
.method public constructor <init>(Lcom/mob/tools/gui/BitmapProcessor;)V
    .locals 2
    .param p1, "bp"    # Lcom/mob/tools/gui/BitmapProcessor;

    .prologue
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->lastReport:J

    return-void
.end method

.method static synthetic access$1000(Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;)J
    .locals 2
    .param p0, "x0"    # Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    .prologue
    iget-wide v0, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->lastReport:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$ImageReq;
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;
    .param p1, "x1"    # Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    .prologue
    iput-object p1, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->curReq:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;Landroid/graphics/Bitmap;Ljava/io/File;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # Ljava/io/File;
    .param p3, "x3"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->saveFile(Landroid/graphics/Bitmap;Ljava/io/File;Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;)Lcom/mob/tools/gui/BitmapProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    .prologue
    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    .prologue
    iget-boolean v0, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->localType:Z

    return v0
.end method

.method static synthetic access$902(Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->localType:Z

    return p1
.end method

.method private doLocalTask()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .local v2, "req":Lcom/mob/tools/gui/BitmapProcessor$ImageReq;
    iget-object v4, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->reqList:Ljava/util/Vector;
    invoke-static {v4}, Lcom/mob/tools/gui/BitmapProcessor;->access$700(Lcom/mob/tools/gui/BitmapProcessor;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v3

    .local v3, "size":I
    if-lez v3, :cond_0

    iget-object v4, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->reqList:Ljava/util/Vector;
    invoke-static {v4}, Lcom/mob/tools/gui/BitmapProcessor;->access$700(Lcom/mob/tools/gui/BitmapProcessor;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "req":Lcom/mob/tools/gui/BitmapProcessor$ImageReq;
    check-cast v2, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    .restart local v2    # "req":Lcom/mob/tools/gui/BitmapProcessor$ImageReq;
    :cond_0
    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->cachePool:Lcom/mob/tools/gui/CachePool;
    invoke-static {v4}, Lcom/mob/tools/gui/BitmapProcessor;->access$600(Lcom/mob/tools/gui/BitmapProcessor;)Lcom/mob/tools/gui/CachePool;

    move-result-object v4

    # getter for: Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->url:Ljava/lang/String;
    invoke-static {v2}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$000(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mob/tools/gui/CachePool;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    iput-object v2, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->curReq:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    iget-object v4, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->curReq:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    # setter for: Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->worker:Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;
    invoke-static {v4, p0}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$1102(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;)Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    # invokes: Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->throwComplete(Landroid/graphics/Bitmap;)V
    invoke-static {v2, v0}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$1200(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->lastReport:J

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :goto_1
    return-void

    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->cacheDir:Ljava/io/File;
    invoke-static {v4}, Lcom/mob/tools/gui/BitmapProcessor;->access$1300(Lcom/mob/tools/gui/BitmapProcessor;)Ljava/io/File;

    move-result-object v4

    # getter for: Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->url:Ljava/lang/String;
    invoke-static {v2}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$000(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v2}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->doTask(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->lastReport:J

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->netReqTPS:Ljava/util/Vector;
    invoke-static {v4}, Lcom/mob/tools/gui/BitmapProcessor;->access$1400(Lcom/mob/tools/gui/BitmapProcessor;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    iget-object v5, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->maxReqCount:I
    invoke-static {v5}, Lcom/mob/tools/gui/BitmapProcessor;->access$1500(Lcom/mob/tools/gui/BitmapProcessor;)I

    move-result v5

    if-le v4, v5, :cond_4

    :goto_2
    iget-object v4, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->reqList:Ljava/util/Vector;
    invoke-static {v4}, Lcom/mob/tools/gui/BitmapProcessor;->access$700(Lcom/mob/tools/gui/BitmapProcessor;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->reqList:Ljava/util/Vector;
    invoke-static {v4}, Lcom/mob/tools/gui/BitmapProcessor;->access$700(Lcom/mob/tools/gui/BitmapProcessor;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->netReqTPS:Ljava/util/Vector;
    invoke-static {v4}, Lcom/mob/tools/gui/BitmapProcessor;->access$1400(Lcom/mob/tools/gui/BitmapProcessor;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    :cond_4
    iget-object v4, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->netReqTPS:Ljava/util/Vector;
    invoke-static {v4}, Lcom/mob/tools/gui/BitmapProcessor;->access$1400(Lcom/mob/tools/gui/BitmapProcessor;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "file":Ljava/io/File;
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->lastReport:J

    const-wide/16 v4, 0x1e

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private doNetworkTask()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .local v1, "req":Lcom/mob/tools/gui/BitmapProcessor$ImageReq;
    iget-object v3, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->netReqTPS:Ljava/util/Vector;
    invoke-static {v3}, Lcom/mob/tools/gui/BitmapProcessor;->access$1400(Lcom/mob/tools/gui/BitmapProcessor;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .local v2, "size":I
    if-lez v2, :cond_0

    iget-object v3, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->netReqTPS:Ljava/util/Vector;
    invoke-static {v3}, Lcom/mob/tools/gui/BitmapProcessor;->access$1400(Lcom/mob/tools/gui/BitmapProcessor;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "req":Lcom/mob/tools/gui/BitmapProcessor$ImageReq;
    check-cast v1, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    .restart local v1    # "req":Lcom/mob/tools/gui/BitmapProcessor$ImageReq;
    :cond_0
    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->reqList:Ljava/util/Vector;
    invoke-static {v3}, Lcom/mob/tools/gui/BitmapProcessor;->access$700(Lcom/mob/tools/gui/BitmapProcessor;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v3, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->reqList:Ljava/util/Vector;
    invoke-static {v3}, Lcom/mob/tools/gui/BitmapProcessor;->access$700(Lcom/mob/tools/gui/BitmapProcessor;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "req":Lcom/mob/tools/gui/BitmapProcessor$ImageReq;
    check-cast v1, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    .restart local v1    # "req":Lcom/mob/tools/gui/BitmapProcessor$ImageReq;
    :cond_1
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->cachePool:Lcom/mob/tools/gui/CachePool;
    invoke-static {v3}, Lcom/mob/tools/gui/BitmapProcessor;->access$600(Lcom/mob/tools/gui/BitmapProcessor;)Lcom/mob/tools/gui/CachePool;

    move-result-object v3

    # getter for: Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->url:Ljava/lang/String;
    invoke-static {v1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$000(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mob/tools/gui/CachePool;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->curReq:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    iget-object v3, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->curReq:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    # setter for: Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->worker:Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;
    invoke-static {v3, p0}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$1102(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;)Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    # invokes: Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->throwComplete(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$1200(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->lastReport:J

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :goto_1
    return-void

    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_2
    invoke-direct {p0, v1}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->doTask(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)V

    goto :goto_0

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->lastReport:J

    const-wide/16 v3, 0x1e

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private doTask(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)V
    .locals 7
    .param p1, "req"    # Lcom/mob/tools/gui/BitmapProcessor$ImageReq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    iput-object p1, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->curReq:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    iget-object v4, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->curReq:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    # setter for: Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->worker:Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;
    invoke-static {v4, p0}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$1102(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;)Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    const/4 v0, 0x0

    .local v0, "bm":Landroid/graphics/Bitmap;
    # getter for: Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->url:Ljava/lang/String;
    invoke-static {p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$000(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    # getter for: Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->url:Ljava/lang/String;
    invoke-static {p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$000(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gif"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    const/4 v3, 0x1

    .local v3, "saveAsPng":Z
    :goto_0
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->cacheDir:Ljava/io/File;
    invoke-static {v4}, Lcom/mob/tools/gui/BitmapProcessor;->access$1300(Lcom/mob/tools/gui/BitmapProcessor;)Ljava/io/File;

    move-result-object v4

    # getter for: Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->url:Ljava/lang/String;
    invoke-static {p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$000(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->cachePool:Lcom/mob/tools/gui/CachePool;
    invoke-static {v4}, Lcom/mob/tools/gui/BitmapProcessor;->access$600(Lcom/mob/tools/gui/BitmapProcessor;)Lcom/mob/tools/gui/CachePool;

    move-result-object v4

    # getter for: Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->url:Ljava/lang/String;
    invoke-static {p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$000(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/mob/tools/gui/CachePool;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    # invokes: Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->throwComplete(Landroid/graphics/Bitmap;)V
    invoke-static {p1, v0}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$1200(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Landroid/graphics/Bitmap;)V

    :cond_1
    iput-object v6, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->curReq:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    :goto_1
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->cachePool:Lcom/mob/tools/gui/CachePool;
    invoke-static {v4}, Lcom/mob/tools/gui/BitmapProcessor;->access$600(Lcom/mob/tools/gui/BitmapProcessor;)Lcom/mob/tools/gui/CachePool;

    move-result-object v4

    # getter for: Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->url:Ljava/lang/String;
    invoke-static {p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$000(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/mob/tools/gui/CachePool;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    # invokes: Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->throwComplete(Landroid/graphics/Bitmap;)V
    invoke-static {p1, v0}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$1200(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Landroid/graphics/Bitmap;)V

    :cond_2
    iput-object v6, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->curReq:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    return-void

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "saveAsPng":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "saveAsPng":Z
    :cond_4
    new-instance v2, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v2}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    .local v2, "helper":Lcom/mob/tools/network/NetworkHelper;
    # getter for: Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->url:Ljava/lang/String;
    invoke-static {p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$000(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;

    invoke-direct {v5, p0, v1, v3, p1}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;-><init>(Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;Ljava/io/File;ZLcom/mob/tools/gui/BitmapProcessor$ImageReq;)V

    invoke-virtual {v2, v4, v5, v6}, Lcom/mob/tools/network/NetworkHelper;->rawGet(Ljava/lang/String;Lcom/mob/tools/network/RawNetworkCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    goto :goto_1
.end method

.method private saveFile(Landroid/graphics/Bitmap;Ljava/io/File;Z)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "saveAdPng"    # Z

    .prologue
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    if-eqz p3, :cond_3

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .local v2, "type":Landroid/graphics/Bitmap$CompressFormat;
    :goto_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v0, "fos":Ljava/io/FileOutputStream;
    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "type":Landroid/graphics/Bitmap$CompressFormat;
    :cond_2
    :goto_1
    return-void

    :cond_3
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    .prologue
    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    :goto_0
    iget-object v1, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->work:Z
    invoke-static {v1}, Lcom/mob/tools/gui/BitmapProcessor;->access$300(Lcom/mob/tools/gui/BitmapProcessor;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-boolean v1, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->localType:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->doLocalTask()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->doNetworkTask()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_1
    return-void
.end method
