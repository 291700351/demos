.class Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;
.super Ljava/io/OutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/virtualdisk/RamDisk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RDFileOutputStream"
.end annotation


# instance fields
.field private bb:Ljava/nio/ByteBuffer;

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

.field private disk:Lcom/mob/tools/virtualdisk/RamDisk;

.field private fid:I


# direct methods
.method public constructor <init>(Lcom/mob/tools/virtualdisk/RamDisk;I)V
    .locals 3
    .param p1, "disk"    # Lcom/mob/tools/virtualdisk/RamDisk;
    .param p2, "fid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/RamDisk;

    iput p2, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;->fid:I

    # getter for: Lcom/mob/tools/virtualdisk/RamDisk;->bbBlocks:[[B
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/RamDisk;->access$200(Lcom/mob/tools/virtualdisk/RamDisk;)[[B

    move-result-object v1

    aget-object v1, v1, p2

    if-nez v1, :cond_0

    # getter for: Lcom/mob/tools/virtualdisk/RamDisk;->bbBlocks:[[B
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/RamDisk;->access$200(Lcom/mob/tools/virtualdisk/RamDisk;)[[B

    move-result-object v1

    const/16 v2, 0x400

    new-array v2, v2, [B

    aput-object v2, v1, p2

    :cond_0
    # getter for: Lcom/mob/tools/virtualdisk/RamDisk;->bbBlocks:[[B
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/RamDisk;->access$200(Lcom/mob/tools/virtualdisk/RamDisk;)[[B

    move-result-object v1

    aget-object v1, v1, p2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;->bb:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;->bb:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;->bbNextIds:Ljava/util/ArrayList;

    # getter for: Lcom/mob/tools/virtualdisk/RamDisk;->bbNode:Ljava/nio/ByteBuffer;
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/RamDisk;->access$100(Lcom/mob/tools/virtualdisk/RamDisk;)Ljava/nio/ByteBuffer;

    move-result-object v1

    mul-int/lit8 v2, p2, 0x8

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .local v0, "nextId":I
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;->bbNextIds:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    # getter for: Lcom/mob/tools/virtualdisk/RamDisk;->bbNode:Ljava/nio/ByteBuffer;
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/RamDisk;->access$100(Lcom/mob/tools/virtualdisk/RamDisk;)Ljava/nio/ByteBuffer;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 6
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    iget-object v3, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;->bbNextIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;->bbNextIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .local v1, "id":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/RamDisk;

    # getter for: Lcom/mob/tools/virtualdisk/RamDisk;->bbNode:Ljava/nio/ByteBuffer;
    invoke-static {v3}, Lcom/mob/tools/virtualdisk/RamDisk;->access$100(Lcom/mob/tools/virtualdisk/RamDisk;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/RamDisk;

    # getter for: Lcom/mob/tools/virtualdisk/RamDisk;->bbNode:Ljava/nio/ByteBuffer;
    invoke-static {v3}, Lcom/mob/tools/virtualdisk/RamDisk;->access$100(Lcom/mob/tools/virtualdisk/RamDisk;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/RamDisk;

    # getter for: Lcom/mob/tools/virtualdisk/RamDisk;->bbNode:Ljava/nio/ByteBuffer;
    invoke-static {v3}, Lcom/mob/tools/virtualdisk/RamDisk;->access$100(Lcom/mob/tools/virtualdisk/RamDisk;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/RamDisk;

    # getter for: Lcom/mob/tools/virtualdisk/RamDisk;->bbNode:Ljava/nio/ByteBuffer;
    invoke-static {v3}, Lcom/mob/tools/virtualdisk/RamDisk;->access$100(Lcom/mob/tools/virtualdisk/RamDisk;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0

    .end local v1    # "id":Ljava/lang/Integer;
    :cond_0
    iget-object v3, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;->bbNextIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/RamDisk;

    # getter for: Lcom/mob/tools/virtualdisk/RamDisk;->bbNode:Ljava/nio/ByteBuffer;
    invoke-static {v3}, Lcom/mob/tools/virtualdisk/RamDisk;->access$100(Lcom/mob/tools/virtualdisk/RamDisk;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;->fid:I

    mul-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/RamDisk;

    # getter for: Lcom/mob/tools/virtualdisk/RamDisk;->bbNode:Ljava/nio/ByteBuffer;
    invoke-static {v3}, Lcom/mob/tools/virtualdisk/RamDisk;->access$100(Lcom/mob/tools/virtualdisk/RamDisk;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;->fid:I

    mul-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/RamDisk;

    invoke-virtual {v3}, Lcom/mob/tools/virtualdisk/RamDisk;->nextFreeId()I

    move-result v2

    .local v2, "nextId":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Out of storage"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    iget-object v3, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/RamDisk;

    # getter for: Lcom/mob/tools/virtualdisk/RamDisk;->bbNode:Ljava/nio/ByteBuffer;
    invoke-static {v3}, Lcom/mob/tools/virtualdisk/RamDisk;->access$100(Lcom/mob/tools/virtualdisk/RamDisk;)Ljava/nio/ByteBuffer;

    move-result-object v3

    mul-int/lit8 v4, v2, 0x8

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/RamDisk;

    # getter for: Lcom/mob/tools/virtualdisk/RamDisk;->bbNode:Ljava/nio/ByteBuffer;
    invoke-static {v3}, Lcom/mob/tools/virtualdisk/RamDisk;->access$100(Lcom/mob/tools/virtualdisk/RamDisk;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;->fid:I

    mul-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v3, v4, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iput v2, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;->fid:I

    iget-object v3, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/RamDisk;

    # getter for: Lcom/mob/tools/virtualdisk/RamDisk;->bbBlocks:[[B
    invoke-static {v3}, Lcom/mob/tools/virtualdisk/RamDisk;->access$200(Lcom/mob/tools/virtualdisk/RamDisk;)[[B

    move-result-object v3

    iget v4, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;->fid:I

    aget-object v3, v3, v4

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/RamDisk;

    # getter for: Lcom/mob/tools/virtualdisk/RamDisk;->bbBlocks:[[B
    invoke-static {v3}, Lcom/mob/tools/virtualdisk/RamDisk;->access$200(Lcom/mob/tools/virtualdisk/RamDisk;)[[B

    move-result-object v3

    iget v4, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;->fid:I

    const/16 v5, 0x400

    new-array v5, v5, [B

    aput-object v5, v3, v4

    :cond_3
    iget-object v3, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/RamDisk;

    # getter for: Lcom/mob/tools/virtualdisk/RamDisk;->bbBlocks:[[B
    invoke-static {v3}, Lcom/mob/tools/virtualdisk/RamDisk;->access$200(Lcom/mob/tools/virtualdisk/RamDisk;)[[B

    move-result-object v3

    iget v4, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;->fid:I

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;->bb:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;->bb:Ljava/nio/ByteBuffer;

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .end local v2    # "nextId":I
    :cond_4
    iget-object v3, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;->bb:Ljava/nio/ByteBuffer;

    int-to-byte v4, p1

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/RamDisk;

    # getter for: Lcom/mob/tools/virtualdisk/RamDisk;->bbNode:Ljava/nio/ByteBuffer;
    invoke-static {v3}, Lcom/mob/tools/virtualdisk/RamDisk;->access$100(Lcom/mob/tools/virtualdisk/RamDisk;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;->fid:I

    mul-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileOutputStream;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    int-to-short v5, v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-void
.end method
