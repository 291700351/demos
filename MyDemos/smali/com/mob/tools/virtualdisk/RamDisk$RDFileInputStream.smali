.class Lcom/mob/tools/virtualdisk/RamDisk$RDFileInputStream;
.super Ljava/io/InputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/virtualdisk/RamDisk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RDFileInputStream"
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
.method private constructor <init>(Lcom/mob/tools/virtualdisk/RamDisk;I)V
    .locals 6
    .param p1, "disk"    # Lcom/mob/tools/virtualdisk/RamDisk;
    .param p2, "fid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileInputStream;->bbs:Ljava/util/ArrayList;

    # getter for: Lcom/mob/tools/virtualdisk/RamDisk;->bbNode:Ljava/nio/ByteBuffer;
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/RamDisk;->access$100(Lcom/mob/tools/virtualdisk/RamDisk;)Ljava/nio/ByteBuffer;

    move-result-object v3

    mul-int/lit8 v4, p2, 0x8

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    .local v1, "blockLen":I
    if-lez v1, :cond_0

    # getter for: Lcom/mob/tools/virtualdisk/RamDisk;->bbBlocks:[[B
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/RamDisk;->access$200(Lcom/mob/tools/virtualdisk/RamDisk;)[[B

    move-result-object v3

    aget-object v3, v3, p2

    invoke-static {v3, v5, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, "bbBlock":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileInputStream;->bbs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v0    # "bbBlock":Ljava/nio/ByteBuffer;
    :cond_0
    # getter for: Lcom/mob/tools/virtualdisk/RamDisk;->bbNode:Ljava/nio/ByteBuffer;
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/RamDisk;->access$100(Lcom/mob/tools/virtualdisk/RamDisk;)Ljava/nio/ByteBuffer;

    move-result-object v3

    mul-int/lit8 v4, p2, 0x8

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    .local v2, "nextId":I
    :goto_0
    if-eqz v2, :cond_2

    # getter for: Lcom/mob/tools/virtualdisk/RamDisk;->bbNode:Ljava/nio/ByteBuffer;
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/RamDisk;->access$100(Lcom/mob/tools/virtualdisk/RamDisk;)Ljava/nio/ByteBuffer;

    move-result-object v3

    mul-int/lit8 v4, v2, 0x8

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    if-lez v1, :cond_1

    # getter for: Lcom/mob/tools/virtualdisk/RamDisk;->bbBlocks:[[B
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/RamDisk;->access$200(Lcom/mob/tools/virtualdisk/RamDisk;)[[B

    move-result-object v3

    aget-object v3, v3, v2

    invoke-static {v3, v5, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .restart local v0    # "bbBlock":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileInputStream;->bbs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v0    # "bbBlock":Ljava/nio/ByteBuffer;
    :cond_1
    # getter for: Lcom/mob/tools/virtualdisk/RamDisk;->bbNode:Ljava/nio/ByteBuffer;
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/RamDisk;->access$100(Lcom/mob/tools/virtualdisk/RamDisk;)Ljava/nio/ByteBuffer;

    move-result-object v3

    mul-int/lit8 v4, v2, 0x8

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method synthetic constructor <init>(Lcom/mob/tools/virtualdisk/RamDisk;ILcom/mob/tools/virtualdisk/RamDisk$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mob/tools/virtualdisk/RamDisk;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/mob/tools/virtualdisk/RamDisk$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/virtualdisk/RamDisk$RDFileInputStream;-><init>(Lcom/mob/tools/virtualdisk/RamDisk;I)V

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

    iget-object v2, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileInputStream;->bbs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileInputStream;->bbs:Ljava/util/ArrayList;

    iget v3, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileInputStream;->offset:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .local v0, "bb":Ljava/nio/ByteBuffer;
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileInputStream;->offset:I

    iget-object v3, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileInputStream;->bbs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileInputStream;->offset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileInputStream;->offset:I

    iget-object v2, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileInputStream;->bbs:Ljava/util/ArrayList;

    iget v3, p0, Lcom/mob/tools/virtualdisk/RamDisk$RDFileInputStream;->offset:I

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
