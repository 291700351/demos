.class Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;
.super Ljava/io/OutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/virtualdisk/FileDisk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FDFileOutputStream"
.end annotation


# instance fields
.field private bb:Ljava/nio/MappedByteBuffer;

.field private bbNextIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private disk:Lcom/mob/tools/virtualdisk/FileDisk;

.field private fid:I


# direct methods
.method public constructor <init>(Lcom/mob/tools/virtualdisk/FileDisk;I)V
    .locals 7
    .param p1, "disk"    # Lcom/mob/tools/virtualdisk/FileDisk;
    .param p2, "fid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/FileDisk;

    iput p2, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->fid:I

    # getter for: Lcom/mob/tools/virtualdisk/FileDisk;->raf:Ljava/io/RandomAccessFile;
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/FileDisk;->access$100(Lcom/mob/tools/virtualdisk/FileDisk;)Ljava/io/RandomAccessFile;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .local v0, "fc":Ljava/nio/channels/FileChannel;
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    # getter for: Lcom/mob/tools/virtualdisk/FileDisk;->dataOffset:I
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/FileDisk;->access$300(Lcom/mob/tools/virtualdisk/FileDisk;)I

    move-result v2

    mul-int/lit16 v3, p2, 0x400

    add-int/2addr v2, v3

    int-to-long v2, v2

    const-wide/16 v4, 0x400

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->bb:Ljava/nio/MappedByteBuffer;

    iget-object v1, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->bb:Ljava/nio/MappedByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->bbNextIds:Ljava/util/ArrayList;

    # getter for: Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/FileDisk;->access$200(Lcom/mob/tools/virtualdisk/FileDisk;)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    mul-int/lit8 v2, p2, 0x8

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v6

    .local v6, "nextId":I
    :goto_0
    if-eqz v6, :cond_0

    iget-object v1, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->bbNextIds:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    # getter for: Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/FileDisk;->access$200(Lcom/mob/tools/virtualdisk/FileDisk;)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    mul-int/lit8 v2, v6, 0x8

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v6

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/FileDisk;

    # getter for: Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;
    invoke-static {v0}, Lcom/mob/tools/virtualdisk/FileDisk;->access$200(Lcom/mob/tools/virtualdisk/FileDisk;)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    iget-object v0, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->bb:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    return-void
.end method

.method public write(I)V
    .locals 9
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->bbNextIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->bbNextIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .local v7, "id":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/FileDisk;

    # getter for: Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;
    invoke-static {v1}, Lcom/mob/tools/virtualdisk/FileDisk;->access$200(Lcom/mob/tools/virtualdisk/FileDisk;)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2, v3}, Ljava/nio/MappedByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/FileDisk;

    # getter for: Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;
    invoke-static {v1}, Lcom/mob/tools/virtualdisk/FileDisk;->access$200(Lcom/mob/tools/virtualdisk/FileDisk;)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/nio/MappedByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/FileDisk;

    # getter for: Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;
    invoke-static {v1}, Lcom/mob/tools/virtualdisk/FileDisk;->access$200(Lcom/mob/tools/virtualdisk/FileDisk;)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/nio/MappedByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/FileDisk;

    # getter for: Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;
    invoke-static {v1}, Lcom/mob/tools/virtualdisk/FileDisk;->access$200(Lcom/mob/tools/virtualdisk/FileDisk;)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0

    .end local v7    # "id":Ljava/lang/Integer;
    :cond_0
    iget-object v1, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->bbNextIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/FileDisk;

    # getter for: Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;
    invoke-static {v1}, Lcom/mob/tools/virtualdisk/FileDisk;->access$200(Lcom/mob/tools/virtualdisk/FileDisk;)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->fid:I

    mul-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/nio/MappedByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/FileDisk;

    # getter for: Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;
    invoke-static {v1}, Lcom/mob/tools/virtualdisk/FileDisk;->access$200(Lcom/mob/tools/virtualdisk/FileDisk;)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->fid:I

    mul-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v1, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->bb:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/FileDisk;

    invoke-virtual {v1}, Lcom/mob/tools/virtualdisk/FileDisk;->nextFreeId()I

    move-result v8

    .local v8, "nextId":I
    const/4 v1, -0x1

    if-ne v8, v1, :cond_2

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Out of storage"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/FileDisk;

    # getter for: Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;
    invoke-static {v1}, Lcom/mob/tools/virtualdisk/FileDisk;->access$200(Lcom/mob/tools/virtualdisk/FileDisk;)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    mul-int/lit8 v2, v8, 0x8

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/nio/MappedByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/FileDisk;

    # getter for: Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;
    invoke-static {v1}, Lcom/mob/tools/virtualdisk/FileDisk;->access$200(Lcom/mob/tools/virtualdisk/FileDisk;)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->fid:I

    mul-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2, v8}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/FileDisk;

    # getter for: Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;
    invoke-static {v1}, Lcom/mob/tools/virtualdisk/FileDisk;->access$200(Lcom/mob/tools/virtualdisk/FileDisk;)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    iget-object v1, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->bb:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    iput v8, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->fid:I

    iget-object v1, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/FileDisk;

    # getter for: Lcom/mob/tools/virtualdisk/FileDisk;->raf:Ljava/io/RandomAccessFile;
    invoke-static {v1}, Lcom/mob/tools/virtualdisk/FileDisk;->access$100(Lcom/mob/tools/virtualdisk/FileDisk;)Ljava/io/RandomAccessFile;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .local v0, "fc":Ljava/nio/channels/FileChannel;
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    iget-object v2, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/FileDisk;

    # getter for: Lcom/mob/tools/virtualdisk/FileDisk;->dataOffset:I
    invoke-static {v2}, Lcom/mob/tools/virtualdisk/FileDisk;->access$300(Lcom/mob/tools/virtualdisk/FileDisk;)I

    move-result v2

    iget v3, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->fid:I

    mul-int/lit16 v3, v3, 0x400

    add-int/2addr v2, v3

    int-to-long v2, v2

    const-wide/16 v4, 0x400

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->bb:Ljava/nio/MappedByteBuffer;

    iget-object v1, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->bb:Ljava/nio/MappedByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .end local v0    # "fc":Ljava/nio/channels/FileChannel;
    .end local v8    # "nextId":I
    :cond_3
    iget-object v1, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->bb:Ljava/nio/MappedByteBuffer;

    int-to-byte v2, p1

    invoke-virtual {v1, v2}, Ljava/nio/MappedByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/FileDisk;

    # getter for: Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;
    invoke-static {v1}, Lcom/mob/tools/virtualdisk/FileDisk;->access$200(Lcom/mob/tools/virtualdisk/FileDisk;)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->fid:I

    mul-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;->bb:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/MappedByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-void
.end method
