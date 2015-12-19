.class public abstract Lcom/mob/tools/network/HTTPPart;
.super Ljava/lang/Object;


# instance fields
.field private listener:Lcom/mob/tools/network/OnReadListener;

.field private offset:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public getInputStreamEntity()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/mob/tools/network/HTTPPart;->toInputStream()Ljava/io/InputStream;

    move-result-object v0

    .local v0, "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/mob/tools/network/HTTPPart;->length()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/mob/tools/network/HTTPPart;->offset:J

    sub-long v1, v3, v5

    .local v1, "length":J
    const-string v3, "org.apache.http.entity.InputStreamEntity"

    invoke-static {v3}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)V

    const-string v3, "InputStreamEntity"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/mob/tools/utils/ReflectHelper;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method protected abstract length()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public setOffset(J)V
    .locals 0
    .param p1, "offset"    # J

    .prologue
    iput-wide p1, p0, Lcom/mob/tools/network/HTTPPart;->offset:J

    return-void
.end method

.method public setOnReadListener(Lcom/mob/tools/network/OnReadListener;)V
    .locals 0
    .param p1, "l"    # Lcom/mob/tools/network/OnReadListener;

    .prologue
    iput-object p1, p0, Lcom/mob/tools/network/HTTPPart;->listener:Lcom/mob/tools/network/OnReadListener;

    return-void
.end method

.method public toInputStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/mob/tools/network/ByteCounterInputStream;

    invoke-virtual {p0}, Lcom/mob/tools/network/HTTPPart;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mob/tools/network/ByteCounterInputStream;-><init>(Ljava/io/InputStream;)V

    .local v0, "is":Lcom/mob/tools/network/ByteCounterInputStream;
    iget-object v1, p0, Lcom/mob/tools/network/HTTPPart;->listener:Lcom/mob/tools/network/OnReadListener;

    invoke-virtual {v0, v1}, Lcom/mob/tools/network/ByteCounterInputStream;->setOnInputStreamReadListener(Lcom/mob/tools/network/OnReadListener;)V

    iget-wide v1, p0, Lcom/mob/tools/network/HTTPPart;->offset:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-wide v1, p0, Lcom/mob/tools/network/HTTPPart;->offset:J

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/network/ByteCounterInputStream;->skip(J)J

    :cond_0
    return-object v0
.end method
