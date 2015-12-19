.class public Lcom/mob/tools/network/MultiPartInputStream;
.super Ljava/io/InputStream;


# instance fields
.field private curIs:I

.field private isList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/network/MultiPartInputStream;->isList:Ljava/util/ArrayList;

    return-void
.end method

.method private isEmpty()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/mob/tools/network/MultiPartInputStream;->isList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/network/MultiPartInputStream;->isList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addInputStream(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/mob/tools/network/MultiPartInputStream;->isList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/mob/tools/network/MultiPartInputStream;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mob/tools/network/MultiPartInputStream;->isList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/mob/tools/network/MultiPartInputStream;->curIs:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    goto :goto_0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lcom/mob/tools/network/MultiPartInputStream;->isList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .end local v1    # "is":Ljava/io/InputStream;
    :cond_0
    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/mob/tools/network/MultiPartInputStream;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, -0x1

    :cond_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/mob/tools/network/MultiPartInputStream;->isList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/mob/tools/network/MultiPartInputStream;->curIs:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "data":I
    :goto_0
    if-gez v0, :cond_0

    iget v2, p0, Lcom/mob/tools/network/MultiPartInputStream;->curIs:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mob/tools/network/MultiPartInputStream;->curIs:I

    iget v2, p0, Lcom/mob/tools/network/MultiPartInputStream;->curIs:I

    iget-object v3, p0, Lcom/mob/tools/network/MultiPartInputStream;->isList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/mob/tools/network/MultiPartInputStream;->isList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/mob/tools/network/MultiPartInputStream;->curIs:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "is":Ljava/io/InputStream;
    check-cast v1, Ljava/io/InputStream;

    .restart local v1    # "is":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/mob/tools/network/MultiPartInputStream;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, -0x1

    :cond_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/mob/tools/network/MultiPartInputStream;->isList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/mob/tools/network/MultiPartInputStream;->curIs:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .local v0, "is":Ljava/io/InputStream;
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, "len":I
    :goto_0
    if-gez v1, :cond_0

    iget v2, p0, Lcom/mob/tools/network/MultiPartInputStream;->curIs:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mob/tools/network/MultiPartInputStream;->curIs:I

    iget v2, p0, Lcom/mob/tools/network/MultiPartInputStream;->curIs:I

    iget-object v3, p0, Lcom/mob/tools/network/MultiPartInputStream;->isList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/mob/tools/network/MultiPartInputStream;->isList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/mob/tools/network/MultiPartInputStream;->curIs:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "is":Ljava/io/InputStream;
    check-cast v0, Ljava/io/InputStream;

    .restart local v0    # "is":Ljava/io/InputStream;
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    goto :goto_0
.end method

.method public skip(J)J
    .locals 1
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method
