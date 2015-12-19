.class public Lcom/mob/tools/virtualdisk/MemDisk;
.super Lcom/mob/tools/virtualdisk/VirtualDisk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/virtualdisk/MemDisk$1;,
        Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;,
        Lcom/mob/tools/virtualdisk/MemDisk$MDFileInputStream;,
        Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;
    }
.end annotation


# static fields
.field private static final BLOCK_SIZE:I = 0x400

.field private static final NODE_SIZE:I = 0x8


# instance fields
.field private buff:[B

.field private dataOffset:I

.field private mf:Landroid/os/MemoryFile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/mob/tools/virtualdisk/VirtualDisk;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/mob/tools/virtualdisk/MemDisk;)Landroid/os/MemoryFile;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/virtualdisk/MemDisk;

    .prologue
    iget-object v0, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mob/tools/virtualdisk/MemDisk;)[B
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/virtualdisk/MemDisk;

    .prologue
    iget-object v0, p0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    return-object v0
.end method

.method static synthetic access$300(Lcom/mob/tools/virtualdisk/MemDisk;)I
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/virtualdisk/MemDisk;

    .prologue
    iget v0, p0, Lcom/mob/tools/virtualdisk/MemDisk;->dataOffset:I

    return v0
.end method


# virtual methods
.method protected addFileToDirectory(ILjava/lang/String;I)V
    .locals 8
    .param p1, "parentId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "fid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/mob/tools/virtualdisk/MemDisk;->readDirectoryData(I)[B

    move-result-object v2

    .local v2, "data":[B
    new-instance v5, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;

    invoke-direct {v5, p0, p1}, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;-><init>(Lcom/mob/tools/virtualdisk/MemDisk;I)V

    .local v5, "fos":Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v4, "dos":Ljava/io/DataOutputStream;
    if-nez v2, :cond_0

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_0
    invoke-virtual {v4, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    return-void

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .local v3, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .local v1, "count":I
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v6, 0x4

    array-length v7, v2

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v4, v2, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized create(I)V
    .locals 5
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v1, Landroid/os/MemoryFile;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".md"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    div-int/lit16 v0, p1, 0x408

    .local v0, "bbc":I
    mul-int/lit8 v1, v0, 0x8

    iput v1, p0, Lcom/mob/tools/virtualdisk/MemDisk;->dataOffset:I

    const/16 v1, 0x400

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0    # "bbc":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dumpToFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/virtualdisk/MemDisk;->dumpToFile(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized dumpToFile(Ljava/lang/String;Z)V
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "replace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    new-instance v11, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v11, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v11, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .local v0, "fc":Ljava/nio/channels/FileChannel;
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .local v6, "bb":Ljava/nio/MappedByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v1}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    invoke-virtual {v1}, Landroid/os/MemoryFile;->length()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/nio/MappedByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x4

    iget v4, p0, Lcom/mob/tools/virtualdisk/MemDisk;->dataOffset:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    iget v1, p0, Lcom/mob/tools/virtualdisk/MemDisk;->dataOffset:I

    new-array v7, v1, [B

    .local v7, "bbn":[B
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    invoke-static {v1, v2, v7}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->readRaw(ILandroid/os/MemoryFile;[B)V

    invoke-virtual {v6, v7}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    const/4 v10, 0x0

    .local v10, "max":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget v1, p0, Lcom/mob/tools/virtualdisk/MemDisk;->dataOffset:I

    if-ge v9, v1, :cond_4

    iget-object v1, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    iget-object v2, p0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v9, v1, v2}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->readByte(ILandroid/os/MemoryFile;[B)B

    move-result v1

    if-eqz v1, :cond_2

    move v10, v9

    :cond_2
    add-int/lit8 v9, v9, 0x8

    goto :goto_0

    .end local v0    # "fc":Ljava/nio/channels/FileChannel;
    .end local v6    # "bb":Ljava/nio/MappedByteBuffer;
    .end local v7    # "bbn":[B
    .end local v9    # "i":I
    .end local v10    # "max":I
    .end local v11    # "raf":Ljava/io/RandomAccessFile;
    :cond_3
    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v8    # "file":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .restart local v0    # "fc":Ljava/nio/channels/FileChannel;
    .restart local v6    # "bb":Ljava/nio/MappedByteBuffer;
    .restart local v7    # "bbn":[B
    .restart local v8    # "file":Ljava/io/File;
    .restart local v9    # "i":I
    .restart local v10    # "max":I
    .restart local v11    # "raf":Ljava/io/RandomAccessFile;
    :cond_4
    const/4 v9, 0x0

    :try_start_1
    div-int/lit8 v10, v10, 0x8

    :goto_1
    if-gt v9, v10, :cond_5

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    iget v2, p0, Lcom/mob/tools/virtualdisk/MemDisk;->dataOffset:I

    add-int/lit8 v2, v2, 0x4

    mul-int/lit16 v3, v9, 0x400

    add-int/2addr v2, v3

    int-to-long v2, v2

    const-wide/16 v4, 0x400

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    iget v1, p0, Lcom/mob/tools/virtualdisk/MemDisk;->dataOffset:I

    mul-int/lit16 v2, v9, 0x400

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    iget-object v3, p0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v1, v2, v3}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->readRaw(ILandroid/os/MemoryFile;[B)V

    iget-object v1, p0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-virtual {v6, v1}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized format()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, "i":I
    const/16 v2, 0x8

    :try_start_0
    new-array v0, v2, [B

    .local v0, "data":[B
    :goto_0
    iget v2, p0, Lcom/mob/tools/virtualdisk/MemDisk;->dataOffset:I

    if-ge v1, v2, :cond_0

    const/4 v2, 0x0

    array-length v3, v0

    iget-object v4, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->writeRaw(I[BIILandroid/os/MemoryFile;)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    iget-object v5, p0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v2, v3, v4, v5}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->writeByte(IBLandroid/os/MemoryFile;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0    # "data":[B
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mob/tools/virtualdisk/MemDisk;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "fsPath":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mob/tools/virtualdisk/MemDisk;->pathToId(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .local v1, "id":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    :cond_1
    mul-int/lit8 v4, v1, 0x8

    add-int/lit8 v4, v4, 0x1

    :try_start_1
    iget-object v5, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    iget-object v6, p0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v4, v5, v6}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->readByte(ILandroid/os/MemoryFile;[B)B

    move-result v2

    .local v2, "type":I
    if-eqz v2, :cond_0

    new-instance v3, Lcom/mob/tools/virtualdisk/MemDisk$MDFileInputStream;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v4}, Lcom/mob/tools/virtualdisk/MemDisk$MDFileInputStream;-><init>(Lcom/mob/tools/virtualdisk/MemDisk;ILcom/mob/tools/virtualdisk/MemDisk$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "fsPath":Ljava/lang/String;
    .end local v1    # "id":I
    .end local v2    # "type":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mob/tools/virtualdisk/MemDisk;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "fsPath":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mob/tools/virtualdisk/MemDisk;->pathToId(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .local v1, "id":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    :cond_1
    mul-int/lit8 v4, v1, 0x8

    add-int/lit8 v4, v4, 0x1

    :try_start_1
    iget-object v5, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    iget-object v6, p0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v4, v5, v6}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->readByte(ILandroid/os/MemoryFile;[B)B

    move-result v2

    .local v2, "type":I
    if-eqz v2, :cond_0

    new-instance v3, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;

    invoke-direct {v3, p0, v1}, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;-><init>(Lcom/mob/tools/virtualdisk/MemDisk;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "fsPath":Ljava/lang/String;
    .end local v1    # "id":I
    .end local v2    # "type":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized isFile(Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mob/tools/virtualdisk/MemDisk;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "fsPath":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mob/tools/virtualdisk/MemDisk;->pathToId(Ljava/lang/String;)I

    move-result v1

    .local v1, "id":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" does not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "fsPath":Ljava/lang/String;
    .end local v1    # "id":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v0    # "fsPath":Ljava/lang/String;
    .restart local v1    # "id":I
    :cond_0
    mul-int/lit8 v2, v1, 0x8

    add-int/lit8 v2, v2, 0x1

    :try_start_1
    iget-object v3, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    iget-object v4, p0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v2, v3, v4}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->readByte(ILandroid/os/MemoryFile;[B)B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public declared-synchronized length(Ljava/lang/String;)I
    .locals 14
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mob/tools/virtualdisk/MemDisk;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "fsPath":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mob/tools/virtualdisk/MemDisk;->pathToId(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .local v3, "id":I
    const/4 v11, -0x1

    if-ne v3, v11, :cond_1

    move v4, v10

    :cond_0
    :goto_0
    monitor-exit p0

    return v4

    :cond_1
    mul-int/lit8 v11, v3, 0x8

    add-int/lit8 v11, v11, 0x1

    :try_start_1
    iget-object v12, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    iget-object v13, p0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v11, v12, v13}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->readByte(ILandroid/os/MemoryFile;[B)B

    move-result v9

    .local v9, "type":I
    const/4 v4, 0x0

    .local v4, "len":I
    if-nez v9, :cond_4

    invoke-virtual {p0, v1}, Lcom/mob/tools/virtualdisk/MemDisk;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, "list":[Ljava/lang/String;
    if-eqz v6, :cond_2

    array-length v11, v6

    if-nez v11, :cond_3

    :cond_2
    move v4, v10

    goto :goto_0

    :cond_3
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v5, :cond_0

    aget-object v7, v0, v2

    .local v7, "name":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/mob/tools/virtualdisk/MemDisk;->length(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v4, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "list":[Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    :cond_4
    mul-int/lit8 v10, v3, 0x8

    add-int/lit8 v10, v10, 0x2

    iget-object v11, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    iget-object v12, p0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v10, v11, v12}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->readShort(ILandroid/os/MemoryFile;[B)S

    move-result v4

    mul-int/lit8 v10, v3, 0x8

    add-int/lit8 v10, v10, 0x4

    iget-object v11, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    iget-object v12, p0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v10, v11, v12}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->readInt(ILandroid/os/MemoryFile;[B)I

    move-result v8

    .local v8, "nextId":I
    :goto_2
    if-eqz v8, :cond_0

    mul-int/lit8 v10, v8, 0x8

    add-int/lit8 v10, v10, 0x2

    iget-object v11, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    iget-object v12, p0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v10, v11, v12}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->readShort(ILandroid/os/MemoryFile;[B)S

    move-result v10

    add-int/2addr v4, v10

    mul-int/lit8 v10, v8, 0x8

    add-int/lit8 v10, v10, 0x4

    iget-object v11, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    iget-object v12, p0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v10, v11, v12}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->readInt(ILandroid/os/MemoryFile;[B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    goto :goto_2

    .end local v1    # "fsPath":Ljava/lang/String;
    .end local v3    # "id":I
    .end local v4    # "len":I
    .end local v8    # "nextId":I
    .end local v9    # "type":I
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method public declared-synchronized list(Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mob/tools/virtualdisk/MemDisk;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "fixPath":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/mob/tools/virtualdisk/MemDisk;->pathToId(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .local v6, "id":I
    const/4 v9, -0x1

    if-ne v6, v9, :cond_1

    const/4 v7, 0x0

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v7

    :cond_1
    const/4 v7, 0x0

    .local v7, "list":[Ljava/lang/String;
    mul-int/lit8 v9, v6, 0x8

    add-int/lit8 v9, v9, 0x1

    :try_start_1
    iget-object v10, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    iget-object v11, p0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v9, v10, v11}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->readByte(ILandroid/os/MemoryFile;[B)B

    move-result v8

    .local v8, "type":I
    if-nez v8, :cond_0

    invoke-virtual {p0, v6}, Lcom/mob/tools/virtualdisk/MemDisk;->readDirectoryData(I)[B

    move-result-object v2

    .local v2, "data":[B
    if-eqz v2, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .local v3, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .local v1, "count":I
    if-lez v1, :cond_2

    new-array v7, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v1, :cond_2

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v5

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v5    # "i":I
    :cond_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "count":I
    .end local v2    # "data":[B
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "fixPath":Ljava/lang/String;
    .end local v6    # "id":I
    .end local v7    # "list":[Ljava/lang/String;
    .end local v8    # "type":I
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public declared-synchronized loadFromFile(Ljava/lang/String;)V
    .locals 14
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v9    # "file":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .restart local v9    # "file":Ljava/io/File;
    :cond_0
    :try_start_1
    new-instance v12, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v12, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v12, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .local v0, "fc":Ljava/nio/channels/FileChannel;
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .local v6, "bbSize":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v13

    .local v13, "size":I
    new-instance v1, Landroid/os/MemoryFile;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".md"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v13}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    div-int/lit16 v7, v13, 0x408

    .local v7, "bbc":I
    mul-int/lit8 v1, v7, 0x8

    iput v1, p0, Lcom/mob/tools/virtualdisk/MemDisk;->dataOffset:I

    const/16 v1, 0x400

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    iget v1, p0, Lcom/mob/tools/virtualdisk/MemDisk;->dataOffset:I

    new-array v8, v1, [B

    .local v8, "buf":[B
    const-wide/16 v1, 0x4

    invoke-virtual {v12, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v12, v8}, Ljava/io/RandomAccessFile;->readFully([B)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/mob/tools/virtualdisk/MemDisk;->dataOffset:I

    iget-object v4, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    invoke-static {v1, v8, v2, v3, v4}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->writeRaw(I[BIILandroid/os/MemoryFile;)V

    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget v1, p0, Lcom/mob/tools/virtualdisk/MemDisk;->dataOffset:I

    if-ge v10, v1, :cond_2

    iget-object v1, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    iget-object v2, p0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v10, v1, v2}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->readByte(ILandroid/os/MemoryFile;[B)B

    move-result v1

    if-eqz v1, :cond_1

    div-int/lit8 v11, v10, 0x8

    .local v11, "j":I
    iget v1, p0, Lcom/mob/tools/virtualdisk/MemDisk;->dataOffset:I

    add-int/lit8 v1, v1, 0x4

    mul-int/lit16 v2, v11, 0x400

    add-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v12, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v1, p0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-virtual {v12, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    iget v1, p0, Lcom/mob/tools/virtualdisk/MemDisk;->dataOffset:I

    mul-int/lit16 v2, v11, 0x400

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    const/4 v3, 0x0

    const/16 v4, 0x400

    iget-object v5, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->writeRaw(I[BIILandroid/os/MemoryFile;)V

    .end local v11    # "j":I
    :cond_1
    add-int/lit8 v10, v10, 0x8

    goto :goto_0

    :cond_2
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized mkdir(Ljava/lang/String;)Z
    .locals 14
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mob/tools/virtualdisk/MemDisk;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "fsPath":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/mob/tools/virtualdisk/MemDisk;->splitPath(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .local v8, "names":[Ljava/lang/String;
    const/4 v9, -0x1

    .local v9, "parentId":I
    if-eqz v8, :cond_5

    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_5

    aget-object v7, v0, v4

    .local v7, "name":Ljava/lang/String;
    const-string v10, "/"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/mob/tools/virtualdisk/MemDisk;->readDirectoryData(I)[B

    move-result-object v1

    .local v1, "data":[B
    if-nez v1, :cond_0

    const/4 v10, 0x0

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    iget-object v13, p0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v10, v11, v12, v13}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->writeByte(IBLandroid/os/MemoryFile;[B)V

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    iget-object v13, p0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v10, v11, v12, v13}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->writeByte(IBLandroid/os/MemoryFile;[B)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    iget-object v13, p0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v10, v11, v12, v13}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->writeShort(ISLandroid/os/MemoryFile;[B)V

    const/4 v10, 0x4

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    iget-object v13, p0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v10, v11, v12, v13}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->writeInt(IILandroid/os/MemoryFile;[B)V

    :cond_0
    const/4 v9, 0x0

    .end local v1    # "data":[B
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    invoke-virtual {p0, v9, v7}, Lcom/mob/tools/virtualdisk/MemDisk;->nameToId(ILjava/lang/String;)I

    move-result v5

    .local v5, "id":I
    const/4 v10, -0x1

    if-ne v5, v10, :cond_4

    invoke-virtual {p0}, Lcom/mob/tools/virtualdisk/MemDisk;->nextFreeId()I

    move-result v2

    .local v2, "freeId":I
    const/4 v10, -0x1

    if-eq v2, v10, :cond_3

    mul-int/lit8 v10, v2, 0x8

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    iget-object v13, p0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v10, v11, v12, v13}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->writeByte(IBLandroid/os/MemoryFile;[B)V

    mul-int/lit8 v10, v2, 0x8

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    iget-object v13, p0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v10, v11, v12, v13}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->writeByte(IBLandroid/os/MemoryFile;[B)V

    mul-int/lit8 v10, v2, 0x8

    add-int/lit8 v10, v10, 0x2

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    iget-object v13, p0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v10, v11, v12, v13}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->writeShort(ISLandroid/os/MemoryFile;[B)V

    mul-int/lit8 v10, v2, 0x8

    add-int/lit8 v10, v10, 0x4

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    iget-object v13, p0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v10, v11, v12, v13}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->writeInt(IILandroid/os/MemoryFile;[B)V

    invoke-virtual {p0, v9, v7, v2}, Lcom/mob/tools/virtualdisk/MemDisk;->addFileToDirectory(ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v9, v2

    goto :goto_1

    :cond_3
    const/4 v9, -0x1

    goto :goto_1

    .end local v2    # "freeId":I
    :cond_4
    move v9, v5

    goto :goto_1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "id":I
    .end local v6    # "len$":I
    .end local v7    # "name":Ljava/lang/String;
    :cond_5
    const/4 v10, -0x1

    if-eq v9, v10, :cond_6

    const/4 v10, 0x1

    :goto_2
    monitor-exit p0

    return v10

    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .end local v3    # "fsPath":Ljava/lang/String;
    .end local v8    # "names":[Ljava/lang/String;
    .end local v9    # "parentId":I
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method public declared-synchronized mv(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p1, "fromPath"    # Ljava/lang/String;
    .param p2, "toPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mob/tools/virtualdisk/MemDisk;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "fsFromPath":Ljava/lang/String;
    const-string v11, "/"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x0

    :goto_0
    monitor-exit p0

    return v11

    :cond_0
    :try_start_1
    invoke-virtual {p0, v4}, Lcom/mob/tools/virtualdisk/MemDisk;->pathToId(Ljava/lang/String;)I

    move-result v2

    .local v2, "fromId":I
    const/4 v11, -0x1

    if-ne v2, v11, :cond_1

    const/4 v11, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/mob/tools/virtualdisk/MemDisk;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "fsToPath":Ljava/lang/String;
    const-string v11, "/"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v6}, Lcom/mob/tools/virtualdisk/MemDisk;->pathToId(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_3

    const/4 v11, 0x0

    goto :goto_0

    :cond_3
    const/16 v11, 0x2f

    invoke-virtual {v6, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .local v7, "ind":I
    if-gez v7, :cond_4

    const/4 v11, 0x0

    goto :goto_0

    :cond_4
    const/4 v11, 0x0

    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .local v9, "toDirPath":Ljava/lang/String;
    invoke-virtual {p0, v9}, Lcom/mob/tools/virtualdisk/MemDisk;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "fsToDirPath":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/mob/tools/virtualdisk/MemDisk;->pathToId(Ljava/lang/String;)I

    move-result v8

    .local v8, "toDirId":I
    const/4 v11, -0x1

    if-ne v8, v11, :cond_5

    const/4 v11, 0x0

    goto :goto_0

    :cond_5
    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .local v10, "toFileName":Ljava/lang/String;
    const/16 v11, 0x2f

    invoke-virtual {v4, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    if-gez v7, :cond_6

    const/4 v11, 0x0

    goto :goto_0

    :cond_6
    const/4 v11, 0x0

    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .local v1, "fromDirPath":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mob/tools/virtualdisk/MemDisk;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "fsFromDirPath":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/mob/tools/virtualdisk/MemDisk;->pathToId(Ljava/lang/String;)I

    move-result v0

    .local v0, "fromDirId":I
    invoke-virtual {p0, v0, v2}, Lcom/mob/tools/virtualdisk/MemDisk;->removeFileFromDirectory(II)V

    invoke-virtual {p0, v8, v10, v2}, Lcom/mob/tools/virtualdisk/MemDisk;->addFileToDirectory(ILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v11, 0x1

    goto :goto_0

    .end local v0    # "fromDirId":I
    .end local v1    # "fromDirPath":Ljava/lang/String;
    .end local v2    # "fromId":I
    .end local v3    # "fsFromDirPath":Ljava/lang/String;
    .end local v4    # "fsFromPath":Ljava/lang/String;
    .end local v5    # "fsToDirPath":Ljava/lang/String;
    .end local v6    # "fsToPath":Ljava/lang/String;
    .end local v7    # "ind":I
    .end local v8    # "toDirId":I
    .end local v9    # "toDirPath":Ljava/lang/String;
    .end local v10    # "toFileName":Ljava/lang/String;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11
.end method

.method public declared-synchronized newFile(Ljava/lang/String;)Z
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    monitor-enter p0

    const/16 v8, 0x2f

    :try_start_0
    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .local v5, "ind":I
    if-gez v5, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v6

    :cond_1
    add-int/lit8 v8, v5, 0x1

    :try_start_1
    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "fileName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    const/4 v8, 0x0

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .local v1, "dirPath":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mob/tools/virtualdisk/MemDisk;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "fsDirPath":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/mob/tools/virtualdisk/MemDisk;->mkdir(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0, v4}, Lcom/mob/tools/virtualdisk/MemDisk;->pathToId(Ljava/lang/String;)I

    move-result v0

    .local v0, "dirId":I
    invoke-virtual {p0, v0, v3}, Lcom/mob/tools/virtualdisk/MemDisk;->nameToId(ILjava/lang/String;)I

    move-result v2

    .local v2, "fileId":I
    if-ne v2, v10, :cond_0

    invoke-virtual {p0}, Lcom/mob/tools/virtualdisk/MemDisk;->nextFreeId()I

    move-result v2

    if-eq v2, v10, :cond_0

    mul-int/lit8 v6, v2, 0x8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    iget-object v10, p0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v6, v8, v9, v10}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->writeByte(IBLandroid/os/MemoryFile;[B)V

    mul-int/lit8 v6, v2, 0x8

    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    iget-object v10, p0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v6, v8, v9, v10}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->writeByte(IBLandroid/os/MemoryFile;[B)V

    mul-int/lit8 v6, v2, 0x8

    add-int/lit8 v6, v6, 0x2

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    iget-object v10, p0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v6, v8, v9, v10}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->writeShort(ISLandroid/os/MemoryFile;[B)V

    mul-int/lit8 v6, v2, 0x8

    add-int/lit8 v6, v6, 0x4

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    iget-object v10, p0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v6, v8, v9, v10}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->writeInt(IILandroid/os/MemoryFile;[B)V

    invoke-virtual {p0, v0, v3, v2}, Lcom/mob/tools/virtualdisk/MemDisk;->addFileToDirectory(ILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v6, v7

    goto :goto_0

    .end local v0    # "dirId":I
    .end local v1    # "dirPath":Ljava/lang/String;
    .end local v2    # "fileId":I
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "fsDirPath":Ljava/lang/String;
    .end local v5    # "ind":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method protected nextFreeId()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .local v1, "id":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/mob/tools/virtualdisk/MemDisk;->dataOffset:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    iget-object v3, p0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v0, v2, v3}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->readByte(ILandroid/os/MemoryFile;[B)B

    move-result v2

    if-nez v2, :cond_1

    div-int/lit8 v1, v0, 0x8

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method

.method protected readDirectoryData(I)[B
    .locals 10
    .param p1, "did"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    mul-int/lit8 v5, p1, 0x8

    .local v5, "nPos":I
    iget-object v7, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    iget-object v8, p0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v5, v7, v8}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->readByte(ILandroid/os/MemoryFile;[B)B

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    add-int/lit8 v7, v5, 0x1

    iget-object v8, p0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    iget-object v9, p0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v7, v8, v9}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->readByte(ILandroid/os/MemoryFile;[B)B

    move-result v7

    if-nez v7, :cond_0

    new-instance v3, Lcom/mob/tools/virtualdisk/MemDisk$MDFileInputStream;

    invoke-direct {v3, p0, p1, v6}, Lcom/mob/tools/virtualdisk/MemDisk$MDFileInputStream;-><init>(Lcom/mob/tools/virtualdisk/MemDisk;ILcom/mob/tools/virtualdisk/MemDisk$1;)V

    .local v3, "fis":Lcom/mob/tools/virtualdisk/MemDisk$MDFileInputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x400

    new-array v1, v7, [B

    .local v1, "buf":[B
    invoke-virtual {v3, v1}, Lcom/mob/tools/virtualdisk/MemDisk$MDFileInputStream;->read([B)I

    move-result v4

    .local v4, "len":I
    :goto_1
    if-lez v4, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v3, v1}, Lcom/mob/tools/virtualdisk/MemDisk$MDFileInputStream;->read([B)I

    move-result v4

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/mob/tools/virtualdisk/MemDisk$MDFileInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .local v2, "data":[B
    array-length v7, v2

    if-nez v7, :cond_3

    move-object v2, v6

    .end local v2    # "data":[B
    :cond_3
    move-object v6, v2

    goto :goto_0
.end method

.method protected removeFileFromDirectory(II)V
    .locals 10
    .param p1, "parentId"    # I
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/mob/tools/virtualdisk/MemDisk;->readDirectoryData(I)[B

    move-result-object v2

    .local v2, "data":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .local v3, "dis":Ljava/io/DataInputStream;
    new-instance v7, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;

    invoke-direct {v7, p0, p1}, Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;-><init>(Lcom/mob/tools/virtualdisk/MemDisk;I)V

    .local v7, "fos":Lcom/mob/tools/virtualdisk/MemDisk$MDFileOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v4, "dos":Ljava/io/DataOutputStream;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .local v1, "count":I
    add-int/lit8 v9, v1, -0x1

    invoke-virtual {v4, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v1, :cond_1

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    .local v6, "fname":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .local v5, "fid":I
    if-eq v5, p2, :cond_0

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .end local v5    # "fid":I
    .end local v6    # "fname":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    return-void
.end method

.method public declared-synchronized rm(Ljava/lang/String;)V
    .locals 16
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/mob/tools/virtualdisk/MemDisk;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "fsPath":Ljava/lang/String;
    const-string v12, "/"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    new-instance v12, Ljava/lang/Throwable;

    const-string v13, "can not remove directory \"/\""

    invoke-direct {v12, v13}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v7    # "fsPath":Ljava/lang/String;
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .restart local v7    # "fsPath":Ljava/lang/String;
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/mob/tools/virtualdisk/MemDisk;->pathToId(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .local v8, "id":I
    const/4 v12, -0x1

    if-ne v8, v12, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    mul-int/lit8 v12, v8, 0x8

    add-int/lit8 v12, v12, 0x1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v12, v13, v14}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->readByte(ILandroid/os/MemoryFile;[B)B

    move-result v11

    .local v11, "type":I
    if-nez v11, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/mob/tools/virtualdisk/MemDisk;->readDirectoryData(I)[B

    move-result-object v3

    .local v3, "data":[B
    if-eqz v3, :cond_3

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .local v6, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .local v2, "count":I
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V

    if-lez v2, :cond_3

    new-instance v12, Ljava/lang/Throwable;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "directory \""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\" is not empty"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v12

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v2    # "count":I
    .end local v3    # "data":[B
    .end local v6    # "dis":Ljava/io/DataInputStream;
    :cond_3
    mul-int/lit8 v12, v8, 0x8

    add-int/lit8 v12, v12, 0x4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v12, v13, v14}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->readInt(ILandroid/os/MemoryFile;[B)I

    move-result v10

    .local v10, "nextId":I
    mul-int/lit8 v12, v8, 0x8

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v12, v13, v14, v15}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->writeByte(IBLandroid/os/MemoryFile;[B)V

    mul-int/lit8 v12, v8, 0x8

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v12, v13, v14, v15}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->writeByte(IBLandroid/os/MemoryFile;[B)V

    mul-int/lit8 v12, v8, 0x8

    add-int/lit8 v12, v12, 0x2

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v12, v13, v14, v15}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->writeShort(ISLandroid/os/MemoryFile;[B)V

    mul-int/lit8 v12, v8, 0x8

    add-int/lit8 v12, v12, 0x4

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v12, v13, v14, v15}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->writeInt(IILandroid/os/MemoryFile;[B)V

    :goto_1
    if-eqz v10, :cond_4

    mul-int/lit8 v12, v10, 0x8

    add-int/lit8 v12, v12, 0x4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v12, v13, v14}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->readInt(ILandroid/os/MemoryFile;[B)I

    mul-int/lit8 v12, v10, 0x8

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v12, v13, v14, v15}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->writeByte(IBLandroid/os/MemoryFile;[B)V

    mul-int/lit8 v12, v10, 0x8

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v12, v13, v14, v15}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->writeByte(IBLandroid/os/MemoryFile;[B)V

    mul-int/lit8 v12, v10, 0x8

    add-int/lit8 v12, v12, 0x2

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v12, v13, v14, v15}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->writeShort(ISLandroid/os/MemoryFile;[B)V

    mul-int/lit8 v12, v10, 0x8

    add-int/lit8 v12, v12, 0x4

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mob/tools/virtualdisk/MemDisk;->mf:Landroid/os/MemoryFile;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mob/tools/virtualdisk/MemDisk;->buff:[B

    invoke-static {v12, v13, v14, v15}, Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;->writeInt(IILandroid/os/MemoryFile;[B)V

    goto :goto_1

    :cond_4
    const/16 v12, 0x2f

    invoke-virtual {v7, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .local v9, "ind":I
    if-ltz v9, :cond_1

    if-nez v9, :cond_5

    const-string v5, "/"

    .local v5, "dirPath":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/mob/tools/virtualdisk/MemDisk;->pathToId(Ljava/lang/String;)I

    move-result v4

    .local v4, "dirId":I
    const/4 v12, -0x1

    if-eq v4, v12, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Lcom/mob/tools/virtualdisk/MemDisk;->removeFileFromDirectory(II)V

    goto/16 :goto_0

    .end local v4    # "dirId":I
    .end local v5    # "dirPath":Ljava/lang/String;
    :cond_5
    const/4 v12, 0x0

    invoke-virtual {v7, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    goto :goto_2
.end method
