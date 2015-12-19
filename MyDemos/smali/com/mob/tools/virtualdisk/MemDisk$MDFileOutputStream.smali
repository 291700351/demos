.class Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;
.super Ljava/io/OutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/virtualdisk/MemDisk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MDFileOutputStream"
.end annotation


# instance fields
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

.field private disk:Lcom/mob/tools/virtualdisk/MemDisk;

.field private fid:I

.field private pos:I


# direct methods
.method public constructor <init>(Lcom/mob/tools/virtualdisk/MemDisk;I)V
    .locals 4
    .param p1, "disk"    # Lcom/mob/tools/virtualdisk/MemDisk;
    .param p2, "fid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/MemDisk;

    iput p2, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->fid:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->bbNextIds:Ljava/util/ArrayList;

    mul-int/lit8 v1, p2, 0x8

    add-int/lit8 v1, v1, 0x4

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/MemDisk;->access$100(Lcom/mob/tools/virtualdisk/MemDisk;)Landroid/os/MemoryFile;

    move-result-object v2

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/MemDisk;->access$200(Lcom/mob/tools/virtualdisk/MemDisk;)[B

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->readInt(ILandroid/os/MemoryFile;[B)I

    move-result v0

    .local v0, "nextId":I
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->bbNextIds:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x4

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/MemDisk;->access$100(Lcom/mob/tools/virtualdisk/MemDisk;)Landroid/os/MemoryFile;

    move-result-object v2

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B
    invoke-static {p1}, Lcom/mob/tools/virtualdisk/MemDisk;->access$200(Lcom/mob/tools/virtualdisk/MemDisk;)[B

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->readInt(ILandroid/os/MemoryFile;[B)I

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 8
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    iget-object v3, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->bbNextIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->bbNextIds:Ljava/util/ArrayList;

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
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/MemDisk;

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;
    invoke-static {v4}, Lcom/mob/tools/virtualdisk/MemDisk;->access$100(Lcom/mob/tools/virtualdisk/MemDisk;)Landroid/os/MemoryFile;

    move-result-object v4

    iget-object v5, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/MemDisk;

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B
    invoke-static {v5}, Lcom/mob/tools/virtualdisk/MemDisk;->access$200(Lcom/mob/tools/virtualdisk/MemDisk;)[B

    move-result-object v5

    invoke-static {v3, v7, v4, v5}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->writeByte(IBLandroid/os/MemoryFile;[B)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/MemDisk;

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;
    invoke-static {v4}, Lcom/mob/tools/virtualdisk/MemDisk;->access$100(Lcom/mob/tools/virtualdisk/MemDisk;)Landroid/os/MemoryFile;

    move-result-object v4

    iget-object v5, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/MemDisk;

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B
    invoke-static {v5}, Lcom/mob/tools/virtualdisk/MemDisk;->access$200(Lcom/mob/tools/virtualdisk/MemDisk;)[B

    move-result-object v5

    invoke-static {v3, v7, v4, v5}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->writeByte(IBLandroid/os/MemoryFile;[B)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/MemDisk;

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;
    invoke-static {v4}, Lcom/mob/tools/virtualdisk/MemDisk;->access$100(Lcom/mob/tools/virtualdisk/MemDisk;)Landroid/os/MemoryFile;

    move-result-object v4

    iget-object v5, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/MemDisk;

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B
    invoke-static {v5}, Lcom/mob/tools/virtualdisk/MemDisk;->access$200(Lcom/mob/tools/virtualdisk/MemDisk;)[B

    move-result-object v5

    invoke-static {v3, v7, v4, v5}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->writeShort(ISLandroid/os/MemoryFile;[B)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0x4

    iget-object v4, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/MemDisk;

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;
    invoke-static {v4}, Lcom/mob/tools/virtualdisk/MemDisk;->access$100(Lcom/mob/tools/virtualdisk/MemDisk;)Landroid/os/MemoryFile;

    move-result-object v4

    iget-object v5, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/MemDisk;

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B
    invoke-static {v5}, Lcom/mob/tools/virtualdisk/MemDisk;->access$200(Lcom/mob/tools/virtualdisk/MemDisk;)[B

    move-result-object v5

    invoke-static {v3, v7, v4, v5}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->writeInt(IILandroid/os/MemoryFile;[B)V

    goto :goto_0

    .end local v1    # "id":Ljava/lang/Integer;
    :cond_0
    iget-object v3, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->bbNextIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget v3, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->fid:I

    mul-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/MemDisk;

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;
    invoke-static {v4}, Lcom/mob/tools/virtualdisk/MemDisk;->access$100(Lcom/mob/tools/virtualdisk/MemDisk;)Landroid/os/MemoryFile;

    move-result-object v4

    iget-object v5, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/MemDisk;

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B
    invoke-static {v5}, Lcom/mob/tools/virtualdisk/MemDisk;->access$200(Lcom/mob/tools/virtualdisk/MemDisk;)[B

    move-result-object v5

    invoke-static {v3, v7, v4, v5}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->writeShort(ISLandroid/os/MemoryFile;[B)V

    iget v3, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->fid:I

    mul-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0x4

    iget-object v4, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/MemDisk;

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;
    invoke-static {v4}, Lcom/mob/tools/virtualdisk/MemDisk;->access$100(Lcom/mob/tools/virtualdisk/MemDisk;)Landroid/os/MemoryFile;

    move-result-object v4

    iget-object v5, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/MemDisk;

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B
    invoke-static {v5}, Lcom/mob/tools/virtualdisk/MemDisk;->access$200(Lcom/mob/tools/virtualdisk/MemDisk;)[B

    move-result-object v5

    invoke-static {v3, v7, v4, v5}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->writeInt(IILandroid/os/MemoryFile;[B)V

    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    iget v3, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->pos:I

    const/16 v4, 0x400

    if-lt v3, v4, :cond_3

    iget-object v3, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/MemDisk;

    invoke-virtual {v3}, Lcom/mob/tools/virtualdisk/MemDisk;->nextFreeId()I

    move-result v2

    .local v2, "nextId":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Out of storage"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    mul-int/lit8 v3, v2, 0x8

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/MemDisk;

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;
    invoke-static {v5}, Lcom/mob/tools/virtualdisk/MemDisk;->access$100(Lcom/mob/tools/virtualdisk/MemDisk;)Landroid/os/MemoryFile;

    move-result-object v5

    iget-object v6, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/MemDisk;

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B
    invoke-static {v6}, Lcom/mob/tools/virtualdisk/MemDisk;->access$200(Lcom/mob/tools/virtualdisk/MemDisk;)[B

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->writeByte(IBLandroid/os/MemoryFile;[B)V

    iget v3, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->fid:I

    mul-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0x4

    iget-object v4, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/MemDisk;

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;
    invoke-static {v4}, Lcom/mob/tools/virtualdisk/MemDisk;->access$100(Lcom/mob/tools/virtualdisk/MemDisk;)Landroid/os/MemoryFile;

    move-result-object v4

    iget-object v5, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/MemDisk;

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B
    invoke-static {v5}, Lcom/mob/tools/virtualdisk/MemDisk;->access$200(Lcom/mob/tools/virtualdisk/MemDisk;)[B

    move-result-object v5

    invoke-static {v3, v2, v4, v5}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->writeInt(IILandroid/os/MemoryFile;[B)V

    iput v2, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->fid:I

    iput v7, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->pos:I

    .end local v2    # "nextId":I
    :cond_3
    iget-object v3, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/MemDisk;

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->dataOffset:I
    invoke-static {v3}, Lcom/mob/tools/virtualdisk/MemDisk;->access$300(Lcom/mob/tools/virtualdisk/MemDisk;)I

    move-result v3

    iget v4, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->fid:I

    mul-int/lit16 v4, v4, 0x400

    add-int/2addr v3, v4

    iget v4, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->pos:I

    add-int/2addr v3, v4

    int-to-byte v4, p1

    iget-object v5, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/MemDisk;

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;
    invoke-static {v5}, Lcom/mob/tools/virtualdisk/MemDisk;->access$100(Lcom/mob/tools/virtualdisk/MemDisk;)Landroid/os/MemoryFile;

    move-result-object v5

    iget-object v6, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/MemDisk;

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B
    invoke-static {v6}, Lcom/mob/tools/virtualdisk/MemDisk;->access$200(Lcom/mob/tools/virtualdisk/MemDisk;)[B

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->writeByte(IBLandroid/os/MemoryFile;[B)V

    iget v3, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->pos:I

    iget v3, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->fid:I

    mul-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->pos:I

    int-to-short v4, v4

    iget-object v5, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/MemDisk;

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;
    invoke-static {v5}, Lcom/mob/tools/virtualdisk/MemDisk;->access$100(Lcom/mob/tools/virtualdisk/MemDisk;)Landroid/os/MemoryFile;

    move-result-object v5

    iget-object v6, p0, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;->disk:Lcom/mob/tools/virtualdisk/MemDisk;

    # getter for: Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B
    invoke-static {v6}, Lcom/mob/tools/virtualdisk/MemDisk;->access$200(Lcom/mob/tools/virtualdisk/MemDisk;)[B

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->writeShort(ISLandroid/os/MemoryFile;[B)V

    return-void
.end method
