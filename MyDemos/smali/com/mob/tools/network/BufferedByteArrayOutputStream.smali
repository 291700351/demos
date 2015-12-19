.class public Lcom/mob/tools/network/BufferedByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->buf:[B

    return-object v0
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->buf:[B

    array-length v0, v0

    return v0
.end method

.method public switchBuffer([B)Z
    .locals 3
    .param p1, "newBuf"    # [B

    .prologue
    if-eqz p1, :cond_0

    array-length v1, p1

    iget-object v2, p0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->buf:[B

    array-length v2, v2

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->buf:[B

    .local v0, "o":[B
    iput-object p1, p0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->buf:[B

    check-cast v0, [B

    .end local v0    # "o":[B
    move-object p1, v0

    check-cast p1, [B

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->write(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;I)V
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->buf:[B

    array-length v1, v1

    iget v2, p0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->count:I

    sub-int/2addr v1, v2

    if-lt v1, p2, :cond_0

    iget-object v1, p0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->buf:[B

    iget v2, p0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->count:I

    invoke-virtual {p1, v1, v2, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->count:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->count:I

    :goto_0
    return-void

    :cond_0
    new-array v0, p2, [B

    .local v0, "outData":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->write([B)V

    goto :goto_0
.end method
