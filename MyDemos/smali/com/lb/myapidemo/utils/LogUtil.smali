.class public Lcom/lb/myapidemo/utils/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static final isDebug:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "objectTag"    # Ljava/lang/Object;
    .param p1, "objectMsg"    # Ljava/lang/Object;

    .prologue
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lb/myapidemo/utils/LogUtil;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lb/myapidemo/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void
.end method
