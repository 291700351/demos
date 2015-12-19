.class Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;
.super Ljava/util/Timer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/gui/BitmapProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ManagerThread"
.end annotation


# instance fields
.field private processor:Lcom/mob/tools/gui/BitmapProcessor;


# direct methods
.method public constructor <init>(Lcom/mob/tools/gui/BitmapProcessor;)V
    .locals 6
    .param p1, "bp"    # Lcom/mob/tools/gui/BitmapProcessor;

    .prologue
    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    new-instance v1, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread$1;

    invoke-direct {v1, p0}, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread$1;-><init>(Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;)V

    .local v1, "tt":Ljava/util/TimerTask;
    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->reqTimeout:I
    invoke-static {v0}, Lcom/mob/tools/gui/BitmapProcessor;->access$500(Lcom/mob/tools/gui/BitmapProcessor;)I

    move-result v0

    int-to-long v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;)Lcom/mob/tools/gui/BitmapProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;

    .prologue
    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;

    .prologue
    invoke-direct {p0}, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->scan()V

    return-void
.end method

.method private scan()V
    .locals 14

    .prologue
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->cachePool:Lcom/mob/tools/gui/CachePool;
    invoke-static {v9}, Lcom/mob/tools/gui/BitmapProcessor;->access$600(Lcom/mob/tools/gui/BitmapProcessor;)Lcom/mob/tools/gui/CachePool;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->cachePool:Lcom/mob/tools/gui/CachePool;
    invoke-static {v9}, Lcom/mob/tools/gui/BitmapProcessor;->access$600(Lcom/mob/tools/gui/BitmapProcessor;)Lcom/mob/tools/gui/CachePool;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/32 v12, 0xea60

    sub-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Lcom/mob/tools/gui/CachePool;->trimBeforeTime(J)V

    :cond_0
    iget-object v9, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->cachePool:Lcom/mob/tools/gui/CachePool;
    invoke-static {v9}, Lcom/mob/tools/gui/BitmapProcessor;->access$600(Lcom/mob/tools/gui/BitmapProcessor;)Lcom/mob/tools/gui/CachePool;

    move-result-object v9

    if-nez v9, :cond_2

    move v0, v8

    .local v0, "cacheMapSize":I
    :goto_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ">>>> BitmapProcessor.cachePool: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v8, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    iget-object v9, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->reqList:Ljava/util/Vector;
    invoke-static {v9}, Lcom/mob/tools/gui/BitmapProcessor;->access$700(Lcom/mob/tools/gui/BitmapProcessor;)Ljava/util/Vector;

    move-result-object v9

    if-nez v9, :cond_3

    move v7, v8

    .local v7, "reqListSize":I
    :goto_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ">>>> BitmapProcessor.reqList: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v8, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    iget-object v9, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->work:Z
    invoke-static {v9}, Lcom/mob/tools/gui/BitmapProcessor;->access$300(Lcom/mob/tools/gui/BitmapProcessor;)Z

    move-result v9

    if-nez v9, :cond_4

    :cond_1
    return-void

    .end local v0    # "cacheMapSize":I
    .end local v7    # "reqListSize":I
    :cond_2
    iget-object v9, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->cachePool:Lcom/mob/tools/gui/CachePool;
    invoke-static {v9}, Lcom/mob/tools/gui/BitmapProcessor;->access$600(Lcom/mob/tools/gui/BitmapProcessor;)Lcom/mob/tools/gui/CachePool;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mob/tools/gui/CachePool;->size()I

    move-result v0

    goto :goto_0

    .restart local v0    # "cacheMapSize":I
    :cond_3
    iget-object v9, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->reqList:Ljava/util/Vector;
    invoke-static {v9}, Lcom/mob/tools/gui/BitmapProcessor;->access$700(Lcom/mob/tools/gui/BitmapProcessor;)Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v7

    goto :goto_1

    .restart local v7    # "reqListSize":I
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .local v3, "curTime":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget-object v9, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->workerList:[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;
    invoke-static {v9}, Lcom/mob/tools/gui/BitmapProcessor;->access$800(Lcom/mob/tools/gui/BitmapProcessor;)[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    move-result-object v9

    array-length v9, v9

    if-ge v5, v9, :cond_1

    iget-object v9, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->workerList:[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;
    invoke-static {v9}, Lcom/mob/tools/gui/BitmapProcessor;->access$800(Lcom/mob/tools/gui/BitmapProcessor;)[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    move-result-object v9

    aget-object v9, v9, v5

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->workerList:[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;
    invoke-static {v9}, Lcom/mob/tools/gui/BitmapProcessor;->access$800(Lcom/mob/tools/gui/BitmapProcessor;)[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    move-result-object v9

    new-instance v10, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    iget-object v11, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    invoke-direct {v10, v11}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;-><init>(Lcom/mob/tools/gui/BitmapProcessor;)V

    aput-object v10, v9, v5

    iget-object v9, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->workerList:[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;
    invoke-static {v9}, Lcom/mob/tools/gui/BitmapProcessor;->access$800(Lcom/mob/tools/gui/BitmapProcessor;)[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    move-result-object v9

    aget-object v9, v9, v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "worker "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->setName(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->workerList:[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;
    invoke-static {v9}, Lcom/mob/tools/gui/BitmapProcessor;->access$800(Lcom/mob/tools/gui/BitmapProcessor;)[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    move-result-object v9

    aget-object v10, v9, v5

    if-nez v5, :cond_6

    const/4 v9, 0x1

    :goto_3
    # setter for: Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->localType:Z
    invoke-static {v10, v9}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->access$902(Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;Z)Z

    iget-object v9, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->workerList:[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;
    invoke-static {v9}, Lcom/mob/tools/gui/BitmapProcessor;->access$800(Lcom/mob/tools/gui/BitmapProcessor;)[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    move-result-object v9

    aget-object v9, v9, v5

    invoke-virtual {v9}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->start()V

    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    move v9, v8

    goto :goto_3

    :cond_7
    iget-object v9, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->workerList:[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;
    invoke-static {v9}, Lcom/mob/tools/gui/BitmapProcessor;->access$800(Lcom/mob/tools/gui/BitmapProcessor;)[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    move-result-object v9

    aget-object v9, v9, v5

    # getter for: Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->lastReport:J
    invoke-static {v9}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->access$1000(Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;)J

    move-result-wide v9

    sub-long v1, v3, v9

    .local v1, "curCost":J
    iget-object v9, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->reqTimeout:I
    invoke-static {v9}, Lcom/mob/tools/gui/BitmapProcessor;->access$500(Lcom/mob/tools/gui/BitmapProcessor;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x64

    int-to-long v9, v9

    cmp-long v9, v1, v9

    if-lez v9, :cond_5

    iget-object v9, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->workerList:[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;
    invoke-static {v9}, Lcom/mob/tools/gui/BitmapProcessor;->access$800(Lcom/mob/tools/gui/BitmapProcessor;)[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    move-result-object v9

    aget-object v9, v9, v5

    invoke-virtual {v9}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->interrupt()V

    iget-object v9, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->workerList:[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;
    invoke-static {v9}, Lcom/mob/tools/gui/BitmapProcessor;->access$800(Lcom/mob/tools/gui/BitmapProcessor;)[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    move-result-object v9

    aget-object v9, v9, v5

    # getter for: Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->localType:Z
    invoke-static {v9}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->access$900(Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;)Z

    move-result v6

    .local v6, "localType":Z
    iget-object v9, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->workerList:[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;
    invoke-static {v9}, Lcom/mob/tools/gui/BitmapProcessor;->access$800(Lcom/mob/tools/gui/BitmapProcessor;)[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    move-result-object v9

    new-instance v10, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    iget-object v11, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    invoke-direct {v10, v11}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;-><init>(Lcom/mob/tools/gui/BitmapProcessor;)V

    aput-object v10, v9, v5

    iget-object v9, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->workerList:[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;
    invoke-static {v9}, Lcom/mob/tools/gui/BitmapProcessor;->access$800(Lcom/mob/tools/gui/BitmapProcessor;)[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    move-result-object v9

    aget-object v9, v9, v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "worker "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->setName(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->workerList:[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;
    invoke-static {v9}, Lcom/mob/tools/gui/BitmapProcessor;->access$800(Lcom/mob/tools/gui/BitmapProcessor;)[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    move-result-object v9

    aget-object v9, v9, v5

    # setter for: Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->localType:Z
    invoke-static {v9, v6}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->access$902(Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;Z)Z

    iget-object v9, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->workerList:[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;
    invoke-static {v9}, Lcom/mob/tools/gui/BitmapProcessor;->access$800(Lcom/mob/tools/gui/BitmapProcessor;)[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    move-result-object v9

    aget-object v9, v9, v5

    invoke-virtual {v9}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->start()V

    goto :goto_4
.end method
