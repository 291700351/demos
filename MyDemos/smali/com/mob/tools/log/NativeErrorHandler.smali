.class public Lcom/mob/tools/log/NativeErrorHandler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/log/NativeErrorHandler$1;,
        Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;
    }
.end annotation


# static fields
.field private static final MAX_LOG_SIZE:I = 0x64

.field private static final enable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, "loaded":Z
    :try_start_0
    const-string v1, "neh"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mob/tools/log/NativeErrorHandler;->enable:Z

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCachePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/mob/tools/utils/R;->getCacheRoot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NativeCrashLogs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static native nativePrepare(Ljava/lang/String;)V
.end method

.method private static parseIndex(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    new-instance v3, Ljava/io/File;

    const-string v8, ".ncl"

    invoke-direct {v3, p0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v3, "indexFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v5

    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v1, "fis":Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .local v6, "isr":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;>;"
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "i":[Ljava/lang/String;
    array-length v8, v2

    const/4 v9, 0x2

    if-lt v8, v9, :cond_1

    new-instance v4, Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;

    const/4 v8, 0x0

    invoke-direct {v4, v8}, Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;-><init>(Lcom/mob/tools/log/NativeErrorHandler$1;)V

    .local v4, "info":Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;
    const/4 v8, 0x0

    aget-object v8, v2, v8

    invoke-static {v8}, Lcom/mob/tools/utils/R;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;->time:J

    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-static {v8}, Lcom/mob/tools/utils/R;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v4, Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;->signal:I

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .end local v2    # "i":[Ljava/lang/String;
    .end local v4    # "info":Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    goto :goto_0
.end method

.method private static parseLog(Ljava/lang/String;Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;)Ljava/lang/String;
    .locals 13
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "info"    # Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    new-instance v6, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p1, Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;->time:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, p0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v6, "logFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, ""

    :goto_0
    return-object v9

    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v1, "fis":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .local v3, "isr":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .local v7, "logs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v7, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v9

    const/16 v10, 0x64

    if-le v9, v10, :cond_1

    invoke-virtual {v7, v12}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .local v8, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "log":Ljava/lang/String;
    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .end local v5    # "log":Ljava/lang/String;
    :cond_3
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-lez v9, :cond_4

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v12, v9}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_4
    const-string v9, ""

    goto :goto_0
.end method

.method public static prepare(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/mob/tools/log/NativeErrorHandler;->getCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .local v0, "path":Ljava/lang/String;
    sget-boolean v1, Lcom/mob/tools/log/NativeErrorHandler;->enable:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/mob/tools/log/NativeErrorHandler;->uploadCreashLog(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mob/tools/log/NativeErrorHandler;->nativePrepare(Ljava/lang/String;)V

    :cond_0
    sget-boolean v1, Lcom/mob/tools/log/NativeErrorHandler;->enable:Z

    return v1
.end method

.method private static uploadCreashLog(Ljava/lang/String;)V
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-static {p0}, Lcom/mob/tools/log/NativeErrorHandler;->parseIndex(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .local v1, "index":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;

    .local v2, "info":Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;
    invoke-static {p0, v2}, Lcom/mob/tools/log/NativeErrorHandler;->parseLog(Ljava/lang/String;Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;)Ljava/lang/String;

    move-result-object v3

    .local v3, "logList":Ljava/lang/String;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/mob/tools/log/NLog;->nativeCrashLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "index":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;>;"
    .end local v2    # "info":Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;
    .end local v3    # "logList":Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .end local v4    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "index":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/log/NativeErrorHandler$NativeCrashInfo;>;"
    :cond_0
    :try_start_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/mob/tools/utils/R;->deleteFileAndFolder(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
