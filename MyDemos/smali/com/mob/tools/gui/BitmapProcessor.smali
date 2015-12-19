.class public Lcom/mob/tools/gui/BitmapProcessor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/gui/BitmapProcessor$ImageReq;,
        Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;,
        Lcom/mob/tools/gui/BitmapProcessor$PatchInputStream;,
        Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;,
        Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;
    }
.end annotation


# static fields
.field private static final CAPACITY:I = 0x3

.field private static final MAX_CACHE_SIZE:I = 0x32

.field private static final MAX_CACHE_TIME:I = 0xea60

.field private static final MAX_REQ_TIME:I = 0xc8

.field private static final MAX_SIZE:I = 0x64

.field private static final OVERFLOW_SIZE:I = 0x78

.field private static instance:Lcom/mob/tools/gui/BitmapProcessor;


# instance fields
.field private cacheDir:Ljava/io/File;

.field private cachePool:Lcom/mob/tools/gui/CachePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/tools/gui/CachePool",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private manager:Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;

.field private maxReqCount:I

.field private netReqTPS:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/mob/tools/gui/BitmapProcessor$ImageReq;",
            ">;"
        }
    .end annotation
.end field

.field private overflowReqCount:I

.field private reqList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/mob/tools/gui/BitmapProcessor$ImageReq;",
            ">;"
        }
    .end annotation
.end field

.field private reqTimeout:I

.field private work:Z

.field private workerList:[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;


# direct methods
.method private constructor <init>(Landroid/content/Context;IIIFI)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "workerCount"    # I
    .param p3, "reqTimeout"    # I
    .param p4, "maxReqCount"    # I
    .param p5, "reqOverflowRate"    # F
    .param p6, "maxCacheSize"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p3, :cond_0

    .end local p3    # "reqTimeout":I
    :goto_0
    iput p3, p0, Lcom/mob/tools/gui/BitmapProcessor;->reqTimeout:I

    if-lez p4, :cond_1

    move v0, p4

    :goto_1
    iput v0, p0, Lcom/mob/tools/gui/BitmapProcessor;->maxReqCount:I

    const/high16 v0, 0x3f800000

    cmpl-float v0, p5, v0

    if-lez v0, :cond_2

    int-to-float v0, p4

    mul-float/2addr v0, p5

    float-to-int v0, v0

    :goto_2
    iput v0, p0, Lcom/mob/tools/gui/BitmapProcessor;->overflowReqCount:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor;->reqList:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor;->netReqTPS:Ljava/util/Vector;

    if-lez p2, :cond_3

    .end local p2    # "workerCount":I
    :goto_3
    new-array v0, p2, [Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    iput-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor;->workerList:[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    new-instance v0, Lcom/mob/tools/gui/CachePool;

    if-lez p6, :cond_4

    .end local p6    # "maxCacheSize":I
    :goto_4
    invoke-direct {v0, p6}, Lcom/mob/tools/gui/CachePool;-><init>(I)V

    iput-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor;->cachePool:Lcom/mob/tools/gui/CachePool;

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/mob/tools/utils/R;->getImageCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor;->cacheDir:Ljava/io/File;

    new-instance v0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;

    invoke-direct {v0, p0}, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;-><init>(Lcom/mob/tools/gui/BitmapProcessor;)V

    iput-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor;->manager:Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;

    return-void

    .restart local p2    # "workerCount":I
    .restart local p3    # "reqTimeout":I
    .restart local p6    # "maxCacheSize":I
    :cond_0
    const/16 p3, 0xc8

    goto :goto_0

    .end local p3    # "reqTimeout":I
    :cond_1
    const/16 v0, 0x64

    goto :goto_1

    :cond_2
    const/16 v0, 0x78

    goto :goto_2

    :cond_3
    const/4 p2, 0x3

    goto :goto_3

    .end local p2    # "workerCount":I
    :cond_4
    const/16 p6, 0x32

    goto :goto_4
.end method

.method static synthetic access$1300(Lcom/mob/tools/gui/BitmapProcessor;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/gui/BitmapProcessor;

    .prologue
    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor;->cacheDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mob/tools/gui/BitmapProcessor;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/gui/BitmapProcessor;

    .prologue
    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor;->netReqTPS:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mob/tools/gui/BitmapProcessor;)I
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/gui/BitmapProcessor;

    .prologue
    iget v0, p0, Lcom/mob/tools/gui/BitmapProcessor;->maxReqCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/mob/tools/gui/BitmapProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/gui/BitmapProcessor;

    .prologue
    iget-boolean v0, p0, Lcom/mob/tools/gui/BitmapProcessor;->work:Z

    return v0
.end method

.method static synthetic access$500(Lcom/mob/tools/gui/BitmapProcessor;)I
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/gui/BitmapProcessor;

    .prologue
    iget v0, p0, Lcom/mob/tools/gui/BitmapProcessor;->reqTimeout:I

    return v0
.end method

.method static synthetic access$600(Lcom/mob/tools/gui/BitmapProcessor;)Lcom/mob/tools/gui/CachePool;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/gui/BitmapProcessor;

    .prologue
    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor;->cachePool:Lcom/mob/tools/gui/CachePool;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mob/tools/gui/BitmapProcessor;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/gui/BitmapProcessor;

    .prologue
    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor;->reqList:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mob/tools/gui/BitmapProcessor;)[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/gui/BitmapProcessor;

    .prologue
    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor;->workerList:[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    return-object v0
.end method

.method public static getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    iget-object v0, v0, Lcom/mob/tools/gui/BitmapProcessor;->cachePool:Lcom/mob/tools/gui/CachePool;

    invoke-virtual {v0, p0}, Lcom/mob/tools/gui/CachePool;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public static declared-synchronized prepare(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v6, Lcom/mob/tools/gui/BitmapProcessor;

    monitor-enter v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/mob/tools/gui/BitmapProcessor;->prepare(Landroid/content/Context;IIIFI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized prepare(Landroid/content/Context;IIIFI)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "workerCount"    # I
    .param p2, "reqTimeout"    # I
    .param p3, "maxReqCount"    # I
    .param p4, "reqOverflowRate"    # F
    .param p5, "maxCacheSize"    # I

    .prologue
    const-class v7, Lcom/mob/tools/gui/BitmapProcessor;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mob/tools/gui/BitmapProcessor;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/mob/tools/gui/BitmapProcessor;-><init>(Landroid/content/Context;IIIFI)V

    sput-object v0, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v7

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static process(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;

    .prologue
    sget-object v1, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    if-eqz v1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    invoke-direct {v0}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;-><init>()V

    .local v0, "req":Lcom/mob/tools/gui/BitmapProcessor$ImageReq;
    # setter for: Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->url:Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$002(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Ljava/lang/String;)Ljava/lang/String;

    # setter for: Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->callback:Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;
    invoke-static {v0, p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$102(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;)Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;

    sget-object v1, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    iget-object v1, v1, Lcom/mob/tools/gui/BitmapProcessor;->reqList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    iget-object v1, v1, Lcom/mob/tools/gui/BitmapProcessor;->reqList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    sget-object v2, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    iget v2, v2, Lcom/mob/tools/gui/BitmapProcessor;->overflowReqCount:I

    if-le v1, v2, :cond_2

    :goto_1
    sget-object v1, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    iget-object v1, v1, Lcom/mob/tools/gui/BitmapProcessor;->reqList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    sget-object v2, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    iget v2, v2, Lcom/mob/tools/gui/BitmapProcessor;->maxReqCount:I

    if-le v1, v2, :cond_2

    sget-object v1, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    iget-object v1, v1, Lcom/mob/tools/gui/BitmapProcessor;->reqList:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->start()V

    goto :goto_0
.end method

.method public static start()V
    .locals 2

    sget-object v0, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Call BitmapProcessor.prepare(String) before start"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mob/tools/gui/BitmapProcessor;->work:Z

    return-void
.end method

.method public static stop()V
    .locals 3

    .prologue
    sget-object v1, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/mob/tools/gui/BitmapProcessor;->work:Z

    sget-object v1, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    iget-object v1, v1, Lcom/mob/tools/gui/BitmapProcessor;->reqList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    sget-object v1, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    iget-object v1, v1, Lcom/mob/tools/gui/BitmapProcessor;->manager:Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;

    invoke-virtual {v1}, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->cancel()V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    iget-object v1, v1, Lcom/mob/tools/gui/BitmapProcessor;->workerList:[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    iget-object v1, v1, Lcom/mob/tools/gui/BitmapProcessor;->workerList:[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    iget-object v1, v1, Lcom/mob/tools/gui/BitmapProcessor;->workerList:[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->interrupt()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    sput-object v1, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    :cond_2
    return-void
.end method
