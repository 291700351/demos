.class Lcom/mob/tools/virtualdisk/MemDisk$MDFileInputStream;
.super Ljava/io/InputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/virtualdisk/MemDisk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MDFileInputStream"
.end annotation


# instance fields
.field private bbs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field private disk:Lcom/mob/tools/virtualdisk/MemDisk;

.field private offset:I


# direct methods
.method private constructor <init>(Lcom/mob/tools/virtualdisk/MemDisk;I)V
    .locals 10
    .param p1, "disk"    # Lcom/mob/tools/virtualdisk/MemDisk;
    .param p2, "fid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileInputStream;->disk:Lcom/mob/tools/virtualdisk/MemDisk;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileInputStream;->bbs:Ljava/util/ArrayList;

    mul-int/lit8 v3, p2, 0x8

    add-int/lit8 v3, v3, 0x2

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/MemDisk;->access$100(Lcom/mob/tools/virtualdisk/MemDisk;)Landroid/os/MemoryFile;

    move-result-object v4

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/MemDisk;->access$200(Lcom/mob/tools/virtualdisk/MemDisk;)[B

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->readShort(ILandroid/os/MemoryFile;[B)S

    move-result v1

    .local v1, "blockLen":I
    if-lez v1, :cond_0

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->dataOffset:I
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/MemDisk;->access$300(Lcom/mob/tools/virtualdisk/MemDisk;)I

    move-result v3

    mul-int/lit16 v4, p2, 0x400

    add-int v0, v3, v4

    .local v0, "bbBlock":I
    iget-object v3, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileInputStream;->bbs:Ljava/util/ArrayList;

    new-array v4, v9, [I

    aput v0, v4, v6

    aput v1, v4, v7

    aput v6, v4, v8

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v0    # "bbBlock":I
    :cond_0
    mul-int/lit8 v3, p2, 0x8

    add-int/lit8 v3, v3, 0x4

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/MemDisk;->access$100(Lcom/mob/tools/virtualdisk/MemDisk;)Landroid/os/MemoryFile;

    move-result-object v4

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/MemDisk;->access$200(Lcom/mob/tools/virtualdisk/MemDisk;)[B

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->readInt(ILandroid/os/MemoryFile;[B)I

    move-result v2

    .local v2, "nextId":I
    :goto_0
    if-eqz v2, :cond_2

    mul-int/lit8 v3, v2, 0x8

    add-int/lit8 v3, v3, 0x2

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/MemDisk;->access$100(Lcom/mob/tools/virtualdisk/MemDisk;)Landroid/os/MemoryFile;

    move-result-object v4

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/MemDisk;->access$200(Lcom/mob/tools/virtualdisk/MemDisk;)[B

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->readShort(ILandroid/os/MemoryFile;[B)S

    move-result v1

    if-lez v1, :cond_1

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->dataOffset:I
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/MemDisk;->access$300(Lcom/mob/tools/virtualdisk/MemDisk;)I

    move-result v3

    mul-int/lit16 v4, v2, 0x400

    add-int v0, v3, v4

    .restart local v0    # "bbBlock":I
    iget-object v3, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileInputStream;->bbs:Ljava/util/ArrayList;

    new-array v4, v9, [I

    aput v0, v4, v6

    aput v1, v4, v7

    aput v6, v4, v8

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v0    # "bbBlock":I
    :cond_1
    mul-int/lit8 v3, v2, 0x8

    add-int/lit8 v3, v3, 0x4

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/MemDisk;->access$100(Lcom/mob/tools/virtualdisk/MemDisk;)Landroid/os/MemoryFile;

    move-result-object v4

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/MemDisk;->access$200(Lcom/mob/tools/virtualdisk/MemDisk;)[B

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->readInt(ILandroid/os/MemoryFile;[B)I

    move-result v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method synthetic constructor <init>(Lcom/mob/tools/virtualdisk/MemDisk;ILcom/mob/tools/virtualdisk/MemDisk$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mob/tools/virtualdisk/MemDisk;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/mob/tools/virtualdisk/MemDisk$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/virtualdisk/MemDisk$MDFileInputStream;-><init>(Lcom/mob/tools/virtualdisk/MemDisk;I)V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v5, 0x2

    iget-object v3, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileInputStream;->bbs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileInputStream;->bbs:Ljava/util/ArrayList;

    iget v4, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileInputStream;->offset:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .local v0, "bb":[I
    :goto_1
    aget v3, v0, v5

    const/4 v4, 0x1

    aget v4, v0, v4

    if-lt v3, v4, :cond_2

    iget v3, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileInputStream;->offset:I

    iget-object v4, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileInputStream;->bbs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileInputStream;->offset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileInputStream;->offset:I

    iget-object v3, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileInputStream;->bbs:Ljava/util/ArrayList;

    iget v4, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileInputStream;->offset:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bb":[I
    check-cast v0, [I

    .restart local v0    # "bb":[I
    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    aget v2, v0, v2

    aget v3, v0, v5

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileInputStream;->disk:Lcom/mob/tools/virtualdisk/MemDisk;

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;
    invoke-static {v3}, Lcom/mob/tools/virtualdisk/MemDisk;->access$100(Lcom/mob/tools/virtualdisk/MemDisk;)Landroid/os/MemoryFile;

    move-result-object v3

    iget-object v4, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileInputStream;->disk:Lcom/mob/tools/virtualdisk/MemDisk;

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B
    invoke-static {v4}, Lcom/mob/tools/virtualdisk/MemDisk;->access$200(Lcom/mob/tools/virtualdisk/MemDisk;)[B

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->readByte(ILandroid/os/MemoryFile;[B)B

    move-result v1

    .local v1, "ret":B
    aget v2, v0, v5

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v5

    and-int/lit16 v2, v1, 0xff

    goto :goto_0
.end method
