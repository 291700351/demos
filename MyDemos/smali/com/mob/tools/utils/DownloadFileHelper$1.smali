.class Lcom/mob/tools/utils/DownloadFileHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/DownloadFileHelper;->downloadFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/utils/DownloadFileHelper;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/DownloadFileHelper;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/16 v14, 0xb

    const/4 v2, 0x0

    .local v2, "connection":Ljava/net/HttpURLConnection;
    const/4 v7, 0x0

    .local v7, "randomAccessFile":Ljava/io/RandomAccessFile;
    const/4 v3, 0x0

    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v10, Ljava/net/URL;

    iget-object v11, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    # getter for: Lcom/mob/tools/utils/DownloadFileHelper;->fileUrl:Ljava/lang/String;
    invoke-static {v11}, Lcom/mob/tools/utils/DownloadFileHelper;->access$000(Lcom/mob/tools/utils/DownloadFileHelper;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .local v10, "url":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    const/16 v11, 0x1388

    invoke-virtual {v2, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v11, "GET"

    invoke-virtual {v2, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    new-instance v8, Ljava/io/RandomAccessFile;

    iget-object v11, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    # getter for: Lcom/mob/tools/utils/DownloadFileHelper;->filePath:Ljava/lang/String;
    invoke-static {v11}, Lcom/mob/tools/utils/DownloadFileHelper;->access$100(Lcom/mob/tools/utils/DownloadFileHelper;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "rwd"

    invoke-direct {v8, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v7    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .local v8, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_1
    iget-object v11, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    # getter for: Lcom/mob/tools/utils/DownloadFileHelper;->completeSize:I
    invoke-static {v11}, Lcom/mob/tools/utils/DownloadFileHelper;->access$200(Lcom/mob/tools/utils/DownloadFileHelper;)I

    move-result v11

    if-lez v11, :cond_1

    const-string v11, "Range"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bytes="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    # getter for: Lcom/mob/tools/utils/DownloadFileHelper;->completeSize:I
    invoke-static {v13}, Lcom/mob/tools/utils/DownloadFileHelper;->access$200(Lcom/mob/tools/utils/DownloadFileHelper;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    # getter for: Lcom/mob/tools/utils/DownloadFileHelper;->fileSize:I
    invoke-static {v13}, Lcom/mob/tools/utils/DownloadFileHelper;->access$300(Lcom/mob/tools/utils/DownloadFileHelper;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    # getter for: Lcom/mob/tools/utils/DownloadFileHelper;->completeSize:I
    invoke-static {v11}, Lcom/mob/tools/utils/DownloadFileHelper;->access$200(Lcom/mob/tools/utils/DownloadFileHelper;)I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v8, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const/16 v11, 0x1000

    new-array v1, v11, [B

    .local v1, "buffer":[B
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "length":I
    const/4 v6, 0x0

    .local v6, "progress":I
    :goto_1
    const/4 v11, -0x1

    if-eq v4, v11, :cond_5

    const/4 v11, 0x0

    invoke-virtual {v8, v1, v11, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-object v11, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    # += operator for: Lcom/mob/tools/utils/DownloadFileHelper;->completeSize:I
    invoke-static {v11, v4}, Lcom/mob/tools/utils/DownloadFileHelper;->access$212(Lcom/mob/tools/utils/DownloadFileHelper;I)I

    iget-object v11, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    # getter for: Lcom/mob/tools/utils/DownloadFileHelper;->completeSize:I
    invoke-static {v11}, Lcom/mob/tools/utils/DownloadFileHelper;->access$200(Lcom/mob/tools/utils/DownloadFileHelper;)I

    move-result v11

    int-to-float v11, v11

    iget-object v12, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    # getter for: Lcom/mob/tools/utils/DownloadFileHelper;->fileSize:I
    invoke-static {v12}, Lcom/mob/tools/utils/DownloadFileHelper;->access$300(Lcom/mob/tools/utils/DownloadFileHelper;)I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    const/high16 v12, 0x42c80000

    mul-float/2addr v11, v12

    float-to-int v5, v11

    .local v5, "p":I
    if-le v5, v6, :cond_0

    move v6, v5

    iget-object v11, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    # getter for: Lcom/mob/tools/utils/DownloadFileHelper;->downloadListener:Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;
    invoke-static {v11}, Lcom/mob/tools/utils/DownloadFileHelper;->access$500(Lcom/mob/tools/utils/DownloadFileHelper;)Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;

    move-result-object v11

    invoke-interface {v11, v6}, Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;->onDownloading(I)V

    :cond_0
    const/16 v11, 0x64

    if-lt v6, v11, :cond_3

    iget-object v11, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    const/16 v12, 0xd

    # setter for: Lcom/mob/tools/utils/DownloadFileHelper;->state:I
    invoke-static {v11, v12}, Lcom/mob/tools/utils/DownloadFileHelper;->access$602(Lcom/mob/tools/utils/DownloadFileHelper;I)I

    iget-object v11, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    # getter for: Lcom/mob/tools/utils/DownloadFileHelper;->downloadListener:Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;
    invoke-static {v11}, Lcom/mob/tools/utils/DownloadFileHelper;->access$500(Lcom/mob/tools/utils/DownloadFileHelper;)Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;

    move-result-object v11

    iget-object v12, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    # getter for: Lcom/mob/tools/utils/DownloadFileHelper;->filePath:Ljava/lang/String;
    invoke-static {v12}, Lcom/mob/tools/utils/DownloadFileHelper;->access$100(Lcom/mob/tools/utils/DownloadFileHelper;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;->onComplete(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v11, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    iget-object v12, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    # getter for: Lcom/mob/tools/utils/DownloadFileHelper;->completeSize:I
    invoke-static {v12}, Lcom/mob/tools/utils/DownloadFileHelper;->access$200(Lcom/mob/tools/utils/DownloadFileHelper;)I

    move-result v12

    # invokes: Lcom/mob/tools/utils/DownloadFileHelper;->setCompleteSize(I)V
    invoke-static {v11, v12}, Lcom/mob/tools/utils/DownloadFileHelper;->access$700(Lcom/mob/tools/utils/DownloadFileHelper;I)V

    iget-object v11, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    # invokes: Lcom/mob/tools/utils/DownloadFileHelper;->setDownloadInfo()V
    invoke-static {v11}, Lcom/mob/tools/utils/DownloadFileHelper;->access$800(Lcom/mob/tools/utils/DownloadFileHelper;)V

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    move-object v7, v8

    .end local v1    # "buffer":[B
    .end local v4    # "length":I
    .end local v5    # "p":I
    .end local v6    # "progress":I
    .end local v8    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .end local v10    # "url":Ljava/net/URL;
    .restart local v7    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :goto_3
    return-void

    .end local v7    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v8    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v10    # "url":Ljava/net/URL;
    :cond_1
    :try_start_3
    iget-object v11, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v12

    # setter for: Lcom/mob/tools/utils/DownloadFileHelper;->fileSize:I
    invoke-static {v11, v12}, Lcom/mob/tools/utils/DownloadFileHelper;->access$302(Lcom/mob/tools/utils/DownloadFileHelper;I)I

    iget-object v11, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    # getter for: Lcom/mob/tools/utils/DownloadFileHelper;->fileSize:I
    invoke-static {v11}, Lcom/mob/tools/utils/DownloadFileHelper;->access$300(Lcom/mob/tools/utils/DownloadFileHelper;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v11

    if-gtz v11, :cond_2

    :try_start_4
    iget-object v11, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    iget-object v12, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    # getter for: Lcom/mob/tools/utils/DownloadFileHelper;->completeSize:I
    invoke-static {v12}, Lcom/mob/tools/utils/DownloadFileHelper;->access$200(Lcom/mob/tools/utils/DownloadFileHelper;)I

    move-result v12

    # invokes: Lcom/mob/tools/utils/DownloadFileHelper;->setCompleteSize(I)V
    invoke-static {v11, v12}, Lcom/mob/tools/utils/DownloadFileHelper;->access$700(Lcom/mob/tools/utils/DownloadFileHelper;I)V

    iget-object v11, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    # invokes: Lcom/mob/tools/utils/DownloadFileHelper;->setDownloadInfo()V
    invoke-static {v11}, Lcom/mob/tools/utils/DownloadFileHelper;->access$800(Lcom/mob/tools/utils/DownloadFileHelper;)V

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    move-object v7, v8

    .end local v8    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto :goto_3

    .end local v7    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v8    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v9

    .local v9, "t":Ljava/lang/Throwable;
    iget-object v11, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    # getter for: Lcom/mob/tools/utils/DownloadFileHelper;->downloadListener:Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;
    invoke-static {v11}, Lcom/mob/tools/utils/DownloadFileHelper;->access$500(Lcom/mob/tools/utils/DownloadFileHelper;)Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;

    move-result-object v11

    invoke-interface {v11, v9}, Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v9    # "t":Ljava/lang/Throwable;
    :cond_2
    :try_start_5
    iget-object v11, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    iget-object v12, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    # getter for: Lcom/mob/tools/utils/DownloadFileHelper;->fileSize:I
    invoke-static {v12}, Lcom/mob/tools/utils/DownloadFileHelper;->access$300(Lcom/mob/tools/utils/DownloadFileHelper;)I

    move-result v12

    # invokes: Lcom/mob/tools/utils/DownloadFileHelper;->setFileSize(I)V
    invoke-static {v11, v12}, Lcom/mob/tools/utils/DownloadFileHelper;->access$400(Lcom/mob/tools/utils/DownloadFileHelper;I)V

    iget-object v11, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    # getter for: Lcom/mob/tools/utils/DownloadFileHelper;->fileSize:I
    invoke-static {v11}, Lcom/mob/tools/utils/DownloadFileHelper;->access$300(Lcom/mob/tools/utils/DownloadFileHelper;)I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v8, v11, v12}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0

    :catch_1
    move-exception v9

    move-object v7, v8

    .end local v8    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .end local v10    # "url":Ljava/net/URL;
    .restart local v7    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v9    # "t":Ljava/lang/Throwable;
    :goto_5
    :try_start_6
    iget-object v11, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    const/4 v12, 0x0

    # setter for: Lcom/mob/tools/utils/DownloadFileHelper;->completeSize:I
    invoke-static {v11, v12}, Lcom/mob/tools/utils/DownloadFileHelper;->access$202(Lcom/mob/tools/utils/DownloadFileHelper;I)I

    iget-object v11, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    const/16 v12, 0xb

    # setter for: Lcom/mob/tools/utils/DownloadFileHelper;->state:I
    invoke-static {v11, v12}, Lcom/mob/tools/utils/DownloadFileHelper;->access$602(Lcom/mob/tools/utils/DownloadFileHelper;I)I

    iget-object v11, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    # getter for: Lcom/mob/tools/utils/DownloadFileHelper;->downloadListener:Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;
    invoke-static {v11}, Lcom/mob/tools/utils/DownloadFileHelper;->access$500(Lcom/mob/tools/utils/DownloadFileHelper;)Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;

    move-result-object v11

    invoke-interface {v11, v9}, Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;->onError(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v11, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    iget-object v12, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    # getter for: Lcom/mob/tools/utils/DownloadFileHelper;->completeSize:I
    invoke-static {v12}, Lcom/mob/tools/utils/DownloadFileHelper;->access$200(Lcom/mob/tools/utils/DownloadFileHelper;)I

    move-result v12

    # invokes: Lcom/mob/tools/utils/DownloadFileHelper;->setCompleteSize(I)V
    invoke-static {v11, v12}, Lcom/mob/tools/utils/DownloadFileHelper;->access$700(Lcom/mob/tools/utils/DownloadFileHelper;I)V

    iget-object v11, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    # invokes: Lcom/mob/tools/utils/DownloadFileHelper;->setDownloadInfo()V
    invoke-static {v11}, Lcom/mob/tools/utils/DownloadFileHelper;->access$800(Lcom/mob/tools/utils/DownloadFileHelper;)V

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    :catch_2
    move-exception v9

    iget-object v11, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    # getter for: Lcom/mob/tools/utils/DownloadFileHelper;->downloadListener:Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;
    invoke-static {v11}, Lcom/mob/tools/utils/DownloadFileHelper;->access$500(Lcom/mob/tools/utils/DownloadFileHelper;)Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;

    move-result-object v11

    invoke-interface {v11, v9}, Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .end local v7    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .end local v9    # "t":Ljava/lang/Throwable;
    .restart local v1    # "buffer":[B
    .restart local v4    # "length":I
    .restart local v5    # "p":I
    .restart local v6    # "progress":I
    .restart local v8    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v10    # "url":Ljava/net/URL;
    :catch_3
    move-exception v9

    .restart local v9    # "t":Ljava/lang/Throwable;
    iget-object v11, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    # getter for: Lcom/mob/tools/utils/DownloadFileHelper;->downloadListener:Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;
    invoke-static {v11}, Lcom/mob/tools/utils/DownloadFileHelper;->access$500(Lcom/mob/tools/utils/DownloadFileHelper;)Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;

    move-result-object v11

    invoke-interface {v11, v9}, Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .end local v9    # "t":Ljava/lang/Throwable;
    :cond_3
    :try_start_8
    iget-object v11, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    # getter for: Lcom/mob/tools/utils/DownloadFileHelper;->state:I
    invoke-static {v11}, Lcom/mob/tools/utils/DownloadFileHelper;->access$600(Lcom/mob/tools/utils/DownloadFileHelper;)I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v11

    if-ne v11, v14, :cond_4

    :try_start_9
    iget-object v11, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    iget-object v12, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    # getter for: Lcom/mob/tools/utils/DownloadFileHelper;->completeSize:I
    invoke-static {v12}, Lcom/mob/tools/utils/DownloadFileHelper;->access$200(Lcom/mob/tools/utils/DownloadFileHelper;)I

    move-result v12

    # invokes: Lcom/mob/tools/utils/DownloadFileHelper;->setCompleteSize(I)V
    invoke-static {v11, v12}, Lcom/mob/tools/utils/DownloadFileHelper;->access$700(Lcom/mob/tools/utils/DownloadFileHelper;I)V

    iget-object v11, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    # invokes: Lcom/mob/tools/utils/DownloadFileHelper;->setDownloadInfo()V
    invoke-static {v11}, Lcom/mob/tools/utils/DownloadFileHelper;->access$800(Lcom/mob/tools/utils/DownloadFileHelper;)V

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    :goto_6
    move-object v7, v8

    .end local v8    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_3

    .end local v7    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v8    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v9

    .restart local v9    # "t":Ljava/lang/Throwable;
    iget-object v11, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    # getter for: Lcom/mob/tools/utils/DownloadFileHelper;->downloadListener:Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;
    invoke-static {v11}, Lcom/mob/tools/utils/DownloadFileHelper;->access$500(Lcom/mob/tools/utils/DownloadFileHelper;)Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;

    move-result-object v11

    invoke-interface {v11, v9}, Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_6

    .end local v9    # "t":Ljava/lang/Throwable;
    :cond_4
    :try_start_a
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result v4

    goto/16 :goto_1

    .end local v5    # "p":I
    :cond_5
    :try_start_b
    iget-object v11, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    iget-object v12, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    # getter for: Lcom/mob/tools/utils/DownloadFileHelper;->completeSize:I
    invoke-static {v12}, Lcom/mob/tools/utils/DownloadFileHelper;->access$200(Lcom/mob/tools/utils/DownloadFileHelper;)I

    move-result v12

    # invokes: Lcom/mob/tools/utils/DownloadFileHelper;->setCompleteSize(I)V
    invoke-static {v11, v12}, Lcom/mob/tools/utils/DownloadFileHelper;->access$700(Lcom/mob/tools/utils/DownloadFileHelper;I)V

    iget-object v11, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    # invokes: Lcom/mob/tools/utils/DownloadFileHelper;->setDownloadInfo()V
    invoke-static {v11}, Lcom/mob/tools/utils/DownloadFileHelper;->access$800(Lcom/mob/tools/utils/DownloadFileHelper;)V

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5

    move-object v7, v8

    .end local v8    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_3

    .end local v7    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v8    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v9

    .restart local v9    # "t":Ljava/lang/Throwable;
    iget-object v11, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    # getter for: Lcom/mob/tools/utils/DownloadFileHelper;->downloadListener:Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;
    invoke-static {v11}, Lcom/mob/tools/utils/DownloadFileHelper;->access$500(Lcom/mob/tools/utils/DownloadFileHelper;)Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;

    move-result-object v11

    invoke-interface {v11, v9}, Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;->onError(Ljava/lang/Throwable;)V

    move-object v7, v8

    .end local v8    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_3

    .end local v1    # "buffer":[B
    .end local v4    # "length":I
    .end local v6    # "progress":I
    .end local v9    # "t":Ljava/lang/Throwable;
    .end local v10    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v11

    :goto_7
    :try_start_c
    iget-object v12, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    iget-object v13, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    # getter for: Lcom/mob/tools/utils/DownloadFileHelper;->completeSize:I
    invoke-static {v13}, Lcom/mob/tools/utils/DownloadFileHelper;->access$200(Lcom/mob/tools/utils/DownloadFileHelper;)I

    move-result v13

    # invokes: Lcom/mob/tools/utils/DownloadFileHelper;->setCompleteSize(I)V
    invoke-static {v12, v13}, Lcom/mob/tools/utils/DownloadFileHelper;->access$700(Lcom/mob/tools/utils/DownloadFileHelper;I)V

    iget-object v12, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    # invokes: Lcom/mob/tools/utils/DownloadFileHelper;->setDownloadInfo()V
    invoke-static {v12}, Lcom/mob/tools/utils/DownloadFileHelper;->access$800(Lcom/mob/tools/utils/DownloadFileHelper;)V

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6

    :goto_8
    throw v11

    :catch_6
    move-exception v9

    .restart local v9    # "t":Ljava/lang/Throwable;
    iget-object v12, p0, Lcom/mob/tools/utils/DownloadFileHelper$1;->this$0:Lcom/mob/tools/utils/DownloadFileHelper;

    # getter for: Lcom/mob/tools/utils/DownloadFileHelper;->downloadListener:Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;
    invoke-static {v12}, Lcom/mob/tools/utils/DownloadFileHelper;->access$500(Lcom/mob/tools/utils/DownloadFileHelper;)Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;

    move-result-object v12

    invoke-interface {v12, v9}, Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_8

    .end local v7    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .end local v9    # "t":Ljava/lang/Throwable;
    .restart local v8    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v10    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v11

    move-object v7, v8

    .end local v8    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto :goto_7

    .end local v10    # "url":Ljava/net/URL;
    :catch_7
    move-exception v9

    goto/16 :goto_5
.end method
