.class public Lcom/mob/tools/utils/DownloadFileHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;
    }
.end annotation


# static fields
.field private static final DOWNLOADING:I = 0xc

.field private static final DOWNLOAD_COMPLETE:I = 0xd

.field private static final DOWNLOAD_PAUSE:I = 0xb

.field private static final FILE_NAME:Ljava/lang/String; = "MOB_DOWNLOAD"

.field private static final FILE_VERSION:I = 0x1


# instance fields
.field private completeSize:I

.field private context:Landroid/content/Context;

.field private downloadFileName:Ljava/lang/String;

.field private downloadInfo:Ljava/util/HashMap;
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

.field private downloadListener:Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;

.field private filePath:Ljava/lang/String;

.field private fileSize:I

.field private fileUrl:Ljava/lang/String;

.field private sharePrefrence:Lcom/mob/tools/utils/SharePrefrenceHelper;

.field private startDownload:Z

.field private state:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileUrl"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    iput v0, p0, Lcom/mob/tools/utils/DownloadFileHelper;->state:I

    iput v1, p0, Lcom/mob/tools/utils/DownloadFileHelper;->completeSize:I

    iput v1, p0, Lcom/mob/tools/utils/DownloadFileHelper;->fileSize:I

    iput-boolean v1, p0, Lcom/mob/tools/utils/DownloadFileHelper;->startDownload:Z

    iput-object p2, p0, Lcom/mob/tools/utils/DownloadFileHelper;->fileUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/mob/tools/utils/DownloadFileHelper;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/mob/tools/utils/DownloadFileHelper;->downloadFileName:Ljava/lang/String;

    iput-object p4, p0, Lcom/mob/tools/utils/DownloadFileHelper;->downloadListener:Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;

    new-instance v0, Lcom/mob/tools/utils/SharePrefrenceHelper;

    iget-object v1, p0, Lcom/mob/tools/utils/DownloadFileHelper;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mob/tools/utils/DownloadFileHelper;->sharePrefrence:Lcom/mob/tools/utils/SharePrefrenceHelper;

    iget-object v0, p0, Lcom/mob/tools/utils/DownloadFileHelper;->sharePrefrence:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "MOB_DOWNLOAD"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->open(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/mob/tools/utils/DownloadFileHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/utils/DownloadFileHelper;

    .prologue
    iget-object v0, p0, Lcom/mob/tools/utils/DownloadFileHelper;->fileUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mob/tools/utils/DownloadFileHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/utils/DownloadFileHelper;

    .prologue
    iget-object v0, p0, Lcom/mob/tools/utils/DownloadFileHelper;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mob/tools/utils/DownloadFileHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/utils/DownloadFileHelper;

    .prologue
    iget v0, p0, Lcom/mob/tools/utils/DownloadFileHelper;->completeSize:I

    return v0
.end method

.method static synthetic access$202(Lcom/mob/tools/utils/DownloadFileHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/utils/DownloadFileHelper;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/mob/tools/utils/DownloadFileHelper;->completeSize:I

    return p1
.end method

.method static synthetic access$212(Lcom/mob/tools/utils/DownloadFileHelper;I)I
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/utils/DownloadFileHelper;
    .param p1, "x1"    # I

    .prologue
    iget v0, p0, Lcom/mob/tools/utils/DownloadFileHelper;->completeSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/mob/tools/utils/DownloadFileHelper;->completeSize:I

    return v0
.end method

.method static synthetic access$300(Lcom/mob/tools/utils/DownloadFileHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/utils/DownloadFileHelper;

    .prologue
    iget v0, p0, Lcom/mob/tools/utils/DownloadFileHelper;->fileSize:I

    return v0
.end method

.method static synthetic access$302(Lcom/mob/tools/utils/DownloadFileHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/utils/DownloadFileHelper;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/mob/tools/utils/DownloadFileHelper;->fileSize:I

    return p1
.end method

.method static synthetic access$400(Lcom/mob/tools/utils/DownloadFileHelper;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/utils/DownloadFileHelper;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/DownloadFileHelper;->setFileSize(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/mob/tools/utils/DownloadFileHelper;)Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/utils/DownloadFileHelper;

    .prologue
    iget-object v0, p0, Lcom/mob/tools/utils/DownloadFileHelper;->downloadListener:Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mob/tools/utils/DownloadFileHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/utils/DownloadFileHelper;

    .prologue
    iget v0, p0, Lcom/mob/tools/utils/DownloadFileHelper;->state:I

    return v0
.end method

.method static synthetic access$602(Lcom/mob/tools/utils/DownloadFileHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/utils/DownloadFileHelper;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/mob/tools/utils/DownloadFileHelper;->state:I

    return p1
.end method

.method static synthetic access$700(Lcom/mob/tools/utils/DownloadFileHelper;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/utils/DownloadFileHelper;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/DownloadFileHelper;->setCompleteSize(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/mob/tools/utils/DownloadFileHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/utils/DownloadFileHelper;

    .prologue
    invoke-direct {p0}, Lcom/mob/tools/utils/DownloadFileHelper;->setDownloadInfo()V

    return-void
.end method

.method private downloadFile()V
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mob/tools/utils/DownloadFileHelper$1;

    invoke-direct {v1, p0}, Lcom/mob/tools/utils/DownloadFileHelper$1;-><init>(Lcom/mob/tools/utils/DownloadFileHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getCompleteSize()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mob/tools/utils/DownloadFileHelper;->downloadInfo:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mob/tools/utils/DownloadFileHelper;->downloadInfo:Ljava/util/HashMap;

    const-string v2, "completeSize"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/mob/tools/utils/DownloadFileHelper;->downloadInfo:Ljava/util/HashMap;

    const-string v1, "completeSize"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    return v0
.end method

.method private getDownloadInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileUrl"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/utils/DownloadFileHelper;->sharePrefrence:Lcom/mob/tools/utils/SharePrefrenceHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/utils/DownloadFileHelper;->sharePrefrence:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {p1}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/mob/tools/utils/DownloadFileHelper;->downloadInfo:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/mob/tools/utils/DownloadFileHelper;->downloadInfo:Ljava/util/HashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/utils/DownloadFileHelper;->downloadInfo:Ljava/util/HashMap;

    :cond_1
    return-void
.end method

.method private getFileSize()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mob/tools/utils/DownloadFileHelper;->downloadInfo:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mob/tools/utils/DownloadFileHelper;->downloadInfo:Ljava/util/HashMap;

    const-string v2, "fileSize"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/mob/tools/utils/DownloadFileHelper;->downloadInfo:Ljava/util/HashMap;

    const-string v1, "fileSize"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    return v0
.end method

.method private init()V
    .locals 6

    .prologue
    :try_start_0
    iget-object v3, p0, Lcom/mob/tools/utils/DownloadFileHelper;->fileUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/mob/tools/utils/DownloadFileHelper;->downloadListener:Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;

    if-nez v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/mob/tools/utils/DownloadFileHelper;->downloadListener:Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mob/tools/utils/DownloadFileHelper;->downloadListener:Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;

    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "The download-url and download-listener must not be null!"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/mob/tools/utils/DownloadFileHelper;->fileUrl:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/mob/tools/utils/DownloadFileHelper;->getDownloadInfo(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mob/tools/utils/DownloadFileHelper;->getFileSize()I

    move-result v3

    iput v3, p0, Lcom/mob/tools/utils/DownloadFileHelper;->fileSize:I

    invoke-direct {p0}, Lcom/mob/tools/utils/DownloadFileHelper;->getCompleteSize()I

    move-result v3

    iput v3, p0, Lcom/mob/tools/utils/DownloadFileHelper;->completeSize:I

    iget-object v3, p0, Lcom/mob/tools/utils/DownloadFileHelper;->context:Landroid/content/Context;

    const-string v4, "download"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/R;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "path":Ljava/lang/String;
    iget-object v3, p0, Lcom/mob/tools/utils/DownloadFileHelper;->downloadFileName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mob/tools/utils/DownloadFileHelper;->fileUrl:Ljava/lang/String;

    invoke-static {v4}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mob/tools/utils/DownloadFileHelper;->downloadFileName:Ljava/lang/String;

    :cond_3
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/mob/tools/utils/DownloadFileHelper;->downloadFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "cache":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    iput v3, p0, Lcom/mob/tools/utils/DownloadFileHelper;->fileSize:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/mob/tools/utils/DownloadFileHelper;->completeSize:I

    iget v3, p0, Lcom/mob/tools/utils/DownloadFileHelper;->completeSize:I

    invoke-direct {p0, v3}, Lcom/mob/tools/utils/DownloadFileHelper;->setCompleteSize(I)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mob/tools/utils/DownloadFileHelper;->filePath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "cache":Ljava/io/File;
    .end local v1    # "path":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/mob/tools/utils/DownloadFileHelper;->downloadListener:Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mob/tools/utils/DownloadFileHelper;->downloadListener:Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;

    invoke-interface {v3, v2}, Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setCompleteSize(I)V
    .locals 3
    .param p1, "completeSize"    # I

    .prologue
    iget-object v0, p0, Lcom/mob/tools/utils/DownloadFileHelper;->downloadInfo:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/utils/DownloadFileHelper;->downloadInfo:Ljava/util/HashMap;

    const-string v1, "completeSize"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private setDownloadInfo()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/mob/tools/utils/DownloadFileHelper;->sharePrefrence:Lcom/mob/tools/utils/SharePrefrenceHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/utils/DownloadFileHelper;->sharePrefrence:Lcom/mob/tools/utils/SharePrefrenceHelper;

    iget-object v1, p0, Lcom/mob/tools/utils/DownloadFileHelper;->fileUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/tools/utils/DownloadFileHelper;->downloadInfo:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private setFileSize(I)V
    .locals 3
    .param p1, "fileSize"    # I

    .prologue
    iget-object v0, p0, Lcom/mob/tools/utils/DownloadFileHelper;->downloadInfo:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/utils/DownloadFileHelper;->downloadInfo:Ljava/util/HashMap;

    const-string v1, "fileSize"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public getDownloadFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/mob/tools/utils/DownloadFileHelper;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public pause()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/mob/tools/utils/DownloadFileHelper;->downloadListener:Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    iput v0, p0, Lcom/mob/tools/utils/DownloadFileHelper;->state:I

    iget-object v0, p0, Lcom/mob/tools/utils/DownloadFileHelper;->downloadListener:Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;

    invoke-interface {v0}, Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;->onPause()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v4, 0xc

    iget-object v2, p0, Lcom/mob/tools/utils/DownloadFileHelper;->fileUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mob/tools/utils/DownloadFileHelper;->downloadListener:Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/mob/tools/utils/DownloadFileHelper;->downloadListener:Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mob/tools/utils/DownloadFileHelper;->downloadListener:Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "The url of download file is null"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v2, p0, Lcom/mob/tools/utils/DownloadFileHelper;->state:I

    if-eq v2, v4, :cond_1

    invoke-direct {p0}, Lcom/mob/tools/utils/DownloadFileHelper;->init()V

    iget-boolean v2, p0, Lcom/mob/tools/utils/DownloadFileHelper;->startDownload:Z

    if-nez v2, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mob/tools/utils/DownloadFileHelper;->startDownload:Z

    iget-object v2, p0, Lcom/mob/tools/utils/DownloadFileHelper;->downloadListener:Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;

    invoke-interface {v2}, Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;->onStart()V

    :cond_3
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/mob/tools/utils/DownloadFileHelper;->filePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "cache":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/mob/tools/utils/DownloadFileHelper;->completeSize:I

    if-lez v2, :cond_5

    iget v2, p0, Lcom/mob/tools/utils/DownloadFileHelper;->completeSize:I

    iget v3, p0, Lcom/mob/tools/utils/DownloadFileHelper;->fileSize:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/mob/tools/utils/DownloadFileHelper;->downloadListener:Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;

    iget-object v3, p0, Lcom/mob/tools/utils/DownloadFileHelper;->filePath:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;->onComplete(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :try_start_0
    iput v2, p0, Lcom/mob/tools/utils/DownloadFileHelper;->completeSize:I

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    iget v2, p0, Lcom/mob/tools/utils/DownloadFileHelper;->state:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    iput v4, p0, Lcom/mob/tools/utils/DownloadFileHelper;->state:I

    invoke-direct {p0}, Lcom/mob/tools/utils/DownloadFileHelper;->downloadFile()V

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "t":Ljava/lang/Throwable;
    throw v1
.end method
