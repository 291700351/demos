.class public abstract Lcom/mob/tools/log/NLog;
.super Ljava/lang/Object;


# static fields
.field private static loggers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mob/tools/log/NLog;",
            ">;"
        }
    .end annotation
.end field

.field private static printer:Lcom/mob/tools/log/LogPrinter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mob/tools/log/NLog;->loggers:Ljava/util/HashMap;

    new-instance v0, Lcom/mob/tools/log/LogPrinter;

    invoke-direct {v0}, Lcom/mob/tools/log/LogPrinter;-><init>()V

    sput-object v0, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-static {}, Lcom/mob/tools/log/MobUncaughtExceptionHandler;->register()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/mob/tools/log/NLog;->loggers:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/mob/tools/log/NLog;->loggers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/mob/tools/log/NLog;->loggers:Ljava/util/HashMap;

    const-string v1, "__FIRST__"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected static final getInstanceForSDK(Ljava/lang/String;Z)Lcom/mob/tools/log/NLog;
    .locals 3
    .param p0, "sdkTag"    # Ljava/lang/String;
    .param p1, "createNew"    # Z

    .prologue
    sget-object v1, Lcom/mob/tools/log/NLog;->loggers:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/log/NLog;

    .local v0, "instance":Lcom/mob/tools/log/NLog;
    if-nez v0, :cond_0

    sget-object v1, Lcom/mob/tools/log/NLog;->loggers:Ljava/util/HashMap;

    const-string v2, "__FIRST__"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "instance":Lcom/mob/tools/log/NLog;
    check-cast v0, Lcom/mob/tools/log/NLog;

    .restart local v0    # "instance":Lcom/mob/tools/log/NLog;
    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/mob/tools/log/NLog$1;

    .end local v0    # "instance":Lcom/mob/tools/log/NLog;
    invoke-direct {v0, p0}, Lcom/mob/tools/log/NLog$1;-><init>(Ljava/lang/String;)V

    .restart local v0    # "instance":Lcom/mob/tools/log/NLog;
    :cond_1
    return-object v0
.end method

.method public static setCollector(Ljava/lang/String;Lcom/mob/tools/log/LogCollector;)V
    .locals 1
    .param p0, "sdkTag"    # Ljava/lang/String;
    .param p1, "collector"    # Lcom/mob/tools/log/LogCollector;

    .prologue
    sget-object v0, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {v0, p0, p1}, Lcom/mob/tools/log/LogPrinter;->setCollector(Ljava/lang/String;Lcom/mob/tools/log/LogCollector;)V

    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    if-eqz p0, :cond_0

    sget-object v0, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {v0, p0}, Lcom/mob/tools/log/LogPrinter;->setContext(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/mob/tools/log/NativeErrorHandler;->prepare(Landroid/content/Context;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final crash(Ljava/lang/Throwable;)I
    .locals 5
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    sget-object v0, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mob/tools/log/LogPrinter;->println(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final varargs d(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 6
    .param p1, "format"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "s":Ljava/lang/String;
    array-length v2, p2

    if-lez v2, :cond_0

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/mob/tools/log/LogPrinter;->println(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    return v2

    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final d(Ljava/lang/Throwable;)I
    .locals 5
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    sget-object v0, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mob/tools/log/LogPrinter;->println(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final varargs d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 6
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p3

    if-lez v3, :cond_0

    invoke-static {v1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    sget-object v2, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/mob/tools/log/LogPrinter;->println(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    return v2
.end method

.method public final varargs e(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 6
    .param p1, "format"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "s":Ljava/lang/String;
    array-length v2, p2

    if-lez v2, :cond_0

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/mob/tools/log/LogPrinter;->println(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    return v2

    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final e(Ljava/lang/Throwable;)I
    .locals 5
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    sget-object v0, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mob/tools/log/LogPrinter;->println(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final varargs e(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 6
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p3

    if-lez v3, :cond_0

    invoke-static {v1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    sget-object v2, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/mob/tools/log/LogPrinter;->println(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    return v2
.end method

.method protected abstract getSDKTag()Ljava/lang/String;
.end method

.method public final varargs i(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 6
    .param p1, "format"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "s":Ljava/lang/String;
    array-length v2, p2

    if-lez v2, :cond_0

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/mob/tools/log/LogPrinter;->println(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    return v2

    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final i(Ljava/lang/Throwable;)I
    .locals 5
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    sget-object v0, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mob/tools/log/LogPrinter;->println(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final varargs i(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 6
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p3

    if-lez v3, :cond_0

    invoke-static {v1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    sget-object v2, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/mob/tools/log/LogPrinter;->println(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    return v2
.end method

.method public final nativeCrashLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/log/LogPrinter;->nativeCrashLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final varargs v(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 6
    .param p1, "format"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "s":Ljava/lang/String;
    array-length v2, p2

    if-lez v2, :cond_0

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/mob/tools/log/LogPrinter;->println(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    return v2

    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final v(Ljava/lang/Throwable;)I
    .locals 5
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    sget-object v0, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mob/tools/log/LogPrinter;->println(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final varargs v(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 6
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p3

    if-lez v3, :cond_0

    invoke-static {v1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    sget-object v2, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/mob/tools/log/LogPrinter;->println(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    return v2
.end method

.method public final varargs w(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 6
    .param p1, "format"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "s":Ljava/lang/String;
    array-length v2, p2

    if-lez v2, :cond_0

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/mob/tools/log/LogPrinter;->println(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    return v2

    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final w(Ljava/lang/Throwable;)I
    .locals 5
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    sget-object v0, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mob/tools/log/LogPrinter;->println(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final varargs w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 6
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p3

    if-lez v3, :cond_0

    invoke-static {v1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    sget-object v2, Lcom/mob/tools/log/NLog;->printer:Lcom/mob/tools/log/LogPrinter;

    invoke-virtual {p0}, Lcom/mob/tools/log/NLog;->getSDKTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/mob/tools/log/LogPrinter;->println(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    return v2
.end method
