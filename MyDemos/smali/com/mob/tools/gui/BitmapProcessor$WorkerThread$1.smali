.class Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/network/RawNetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->doTask(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$req:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

.field final synthetic val$saveAsPng:Z


# direct methods
.method constructor <init>(Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;Ljava/io/File;ZLcom/mob/tools/gui/BitmapProcessor$ImageReq;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->this$0:Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    iput-object p2, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$file:Ljava/io/File;

    iput-boolean p3, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$saveAsPng:Z

    iput-object p4, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$req:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    new-instance v1, Lcom/mob/tools/gui/BitmapProcessor$PatchInputStream;

    invoke-direct {v1, p1}, Lcom/mob/tools/gui/BitmapProcessor$PatchInputStream;-><init>(Ljava/io/InputStream;)V

    .local v1, "pis":Lcom/mob/tools/gui/BitmapProcessor$PatchInputStream;
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/io/InputStream;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->this$0:Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    # setter for: Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->curReq:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;
    invoke-static {v2, v5}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->access$1602(Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->this$0:Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    iget-object v3, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$file:Ljava/io/File;

    iget-boolean v4, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$saveAsPng:Z

    # invokes: Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->saveFile(Landroid/graphics/Bitmap;Ljava/io/File;Z)V
    invoke-static {v2, v0, v3, v4}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->access$1700(Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;Landroid/graphics/Bitmap;Ljava/io/File;Z)V

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->this$0:Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->processor:Lcom/mob/tools/gui/BitmapProcessor;
    invoke-static {v2}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->access$1800(Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;)Lcom/mob/tools/gui/BitmapProcessor;

    move-result-object v2

    # getter for: Lcom/mob/tools/gui/BitmapProcessor;->cachePool:Lcom/mob/tools/gui/CachePool;
    invoke-static {v2}, Lcom/mob/tools/gui/BitmapProcessor;->access$600(Lcom/mob/tools/gui/BitmapProcessor;)Lcom/mob/tools/gui/CachePool;

    move-result-object v2

    iget-object v3, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$req:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    # getter for: Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->url:Ljava/lang/String;
    invoke-static {v3}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$000(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/mob/tools/gui/CachePool;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->val$req:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    # invokes: Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->throwComplete(Landroid/graphics/Bitmap;)V
    invoke-static {v2, v0}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$1200(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Landroid/graphics/Bitmap;)V

    :cond_2
    iget-object v2, p0, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread$1;->this$0:Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    # setter for: Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->curReq:Lcom/mob/tools/gui/BitmapProcessor$ImageReq;
    invoke-static {v2, v5}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->access$1602(Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;Lcom/mob/tools/gui/BitmapProcessor$ImageReq;)Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    goto :goto_0
.end method
