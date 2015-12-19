.class Lcom/mob/tools/virtualdisk/FileDisk$FDFileInputStream;
.super Ljava/io/InputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/virtualdisk/FileDisk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FDFileInputStream"
.end annotation


# instance fields
.field private bbs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private offset:I


# direct methods
.method private constructor <init>(Lcom/mob/tools/virtualdisk/FileDisk;I)V
    .locals 9
    .param p1, "disk"    # Lcom/mob/tools/virtualdisk/FileDisk;
    .param p2, "fid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileInputStream;->bbs:Ljava/util/ArrayList;

    # getter for: Lcom/mob/tools/virtualdisk/FileDisk;->raf:Ljava/io/RandomAccessFile;
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/FileDisk;->access$100(Lcom/mob/tools/virtualdisk/FileDisk;)Ljava/io/RandomAccessFile;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .local v0, "fc":Ljava/nio/channels/FileChannel;
    # getter for: Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/FileDisk;->access$200(Lcom/mob/tools/virtualdisk/FileDisk;)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    mul-int/lit8 v2, p2, 0x8

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v7

    .local v7, "blockLen":I
    if-lez v7, :cond_0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    # getter for: Lcom/mob/tools/virtualdisk/FileDisk;->dataOffset:I
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/FileDisk;->access$300(Lcom/mob/tools/virtualdisk/FileDisk;)I

    move-result v2

    mul-int/lit16 v3, p2, 0x400

    add-int/2addr v2, v3

    int-to-long v2, v2

    int-to-long v4, v7

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .local v6, "bbBlock":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileInputStream;->bbs:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v6    # "bbBlock":Ljava/nio/ByteBuffer;
    :cond_0
    # getter for: Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/FileDisk;->access$200(Lcom/mob/tools/virtualdisk/FileDisk;)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    mul-int/lit8 v2, p2, 0x8

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v8

    .local v8, "nextId":I
    :goto_0
    if-eqz v8, :cond_2

    # getter for: Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/FileDisk;->access$200(Lcom/mob/tools/virtualdisk/FileDisk;)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    mul-int/lit8 v2, v8, 0x8

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v7

    if-lez v7, :cond_1

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    # getter for: Lcom/mob/tools/virtualdisk/FileDisk;->dataOffset:I
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/FileDisk;->access$300(Lcom/mob/tools/virtualdisk/FileDisk;)I

    move-result v2

    mul-int/lit16 v3, v8, 0x400

    add-int/2addr v2, v3

    int-to-long v2, v2

    int-to-long v4, v7

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .restart local v6    # "bbBlock":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileInputStream;->bbs:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v6    # "bbBlock":Ljava/nio/ByteBuffer;
    :cond_1
    # getter for: Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/FileDisk;->access$200(Lcom/mob/tools/virtualdisk/FileDisk;)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    mul-int/lit8 v2, v8, 0x8

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v8

    goto :goto_0

    :cond_2
    return-void
.end method

.method synthetic constructor <init>(Lcom/mob/tools/virtualdisk/FileDisk;ILcom/mob/tools/virtualdisk/FileDisk$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mob/tools/virtualdisk/FileDisk;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/mob/tools/virtualdisk/FileDisk$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/virtualdisk/FileDisk$FDFileInputStream;-><init>(Lcom/mob/tools/virtualdisk/FileDisk;I)V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileInputStream;->bbs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileInputStream;->bbs:Ljava/util/ArrayList;

    iget v3, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileInputStream;->offset:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .local v0, "bb":Ljava/nio/ByteBuffer;
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileInputStream;->offset:I

    iget-object v3, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileInputStream;->bbs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileInputStream;->offset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileInputStream;->offset:I

    iget-object v2, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileInputStream;->bbs:Ljava/util/ArrayList;

    iget v3, p0, Lcom/mob/tools/virtualdisk/FileDisk$FDFileInputStream;->offset:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    check-cast v0, Ljava/nio/ByteBuffer;

    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    goto :goto_0
.end method
