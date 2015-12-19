.class public Lcom/mob/tools/virtualdisk/FileDisk;
.super Lcom/mob/tools/virtualdisk/VirtualDisk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/virtualdisk/FileDisk$1;,
        Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;,
        Lcom/mob/tools/virtualdisk/FileDisk$FDFileInputStream;
    }
.end annotation


# instance fields
.field private bbNode:Ljava/nio/MappedByteBuffer;

.field private dataOffset:I

.field private raf:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/mob/tools/virtualdisk/VirtualDisk;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/mob/tools/virtualdisk/FileDisk;)Ljava/io/RandomAccessFile;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/virtualdisk/FileDisk;

    .prologue
    iget-object v0, p0, Lcom/mob/tools/virtualdisk/FileDisk;->raf:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mob/tools/virtualdisk/FileDisk;)Ljava/nio/MappedByteBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/virtualdisk/FileDisk;

    .prologue
    iget-object v0, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mob/tools/virtualdisk/FileDisk;)I
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/virtualdisk/FileDisk;

    .prologue
    iget v0, p0, Lcom/mob/tools/virtualdisk/FileDisk;->dataOffset:I

    return v0
.end method


# virtual methods
.method protected addFileToDirectory(ILjava/lang/String;I)V
    .locals 7
    .param p1, "parentId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "fid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Lcom/mob/tools/virtualdisk/FileDisk;->readDirectoryData(I)[B

    move-result-object v2

    .local v2, "data":[B
    new-instance v4, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;

    invoke-direct {v4, p0, p1}, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;-><init>(Lcom/mob/tools/virtualdisk/FileDisk;I)V

    .local v4, "fos":Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v3, "dos":Ljava/io/DataOutputStream;
    if-nez v2, :cond_0

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_0
    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    return-void

    :cond_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .local v1, "count":I
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v6, v5}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_0
.end method

.method public declared-synchronized create(Ljava/lang/String;I)V
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "size"    # I
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

    if-eqz v1, :cond_0

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

    .end local v9    # "file":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .restart local v9    # "file":Ljava/io/File;
    :cond_0
    :try_start_1
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mob/tools/virtualdisk/FileDisk;->raf:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/mob/tools/virtualdisk/FileDisk;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .local v0, "fc":Ljava/nio/channels/FileChannel;
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .local v6, "bbSize":Ljava/nio/MappedByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v1}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v6, v1, p2}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    add-int/lit8 v8, p2, -0x4

    .local v8, "dataSize":I
    div-int/lit16 v7, v8, 0x408

    .local v7, "bbc":I
    mul-int/lit8 v10, v7, 0x8

    .local v10, "nodeSize":I
    add-int/lit8 v1, v10, 0x4

    iput v1, p0, Lcom/mob/tools/virtualdisk/FileDisk;->dataOffset:I

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x4

    int-to-long v4, v10

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    iget-object v1, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized exists(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mob/tools/virtualdisk/FileDisk;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "fsPath":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mob/tools/virtualdisk/FileDisk;->pathToId(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .local v1, "id":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .end local v0    # "fsPath":Ljava/lang/String;
    .end local v1    # "id":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized format()V
    .locals 5
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
    iget-object v2, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->limit()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/nio/MappedByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;
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
    .locals 6
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
    invoke-virtual {p0, p1}, Lcom/mob/tools/virtualdisk/FileDisk;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "fsPath":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mob/tools/virtualdisk/FileDisk;->pathToId(Ljava/lang/String;)I
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
    :try_start_1
    iget-object v4, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/nio/MappedByteBuffer;->get(I)B

    move-result v2

    .local v2, "type":I
    if-eqz v2, :cond_0

    new-instance v3, Lcom/mob/tools/virtualdisk/FileDisk$FDFileInputStream;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v4}, Lcom/mob/tools/virtualdisk/FileDisk$FDFileInputStream;-><init>(Lcom/mob/tools/virtualdisk/FileDisk;ILcom/mob/tools/virtualdisk/FileDisk$1;)V
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
    .locals 6
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
    invoke-virtual {p0, p1}, Lcom/mob/tools/virtualdisk/FileDisk;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "fsPath":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mob/tools/virtualdisk/FileDisk;->pathToId(Ljava/lang/String;)I
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
    :try_start_1
    iget-object v4, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/nio/MappedByteBuffer;->get(I)B

    move-result v2

    .local v2, "type":I
    if-eqz v2, :cond_0

    new-instance v3, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;

    invoke-direct {v3, p0, v1}, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;-><init>(Lcom/mob/tools/virtualdisk/FileDisk;I)V
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
    invoke-virtual {p0, p1}, Lcom/mob/tools/virtualdisk/FileDisk;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "fsPath":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mob/tools/virtualdisk/FileDisk;->pathToId(Ljava/lang/String;)I

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
    :try_start_1
    iget-object v2, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v3, v1, 0x8

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/MappedByteBuffer;->get(I)B
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
    .locals 13
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
    invoke-virtual {p0, p1}, Lcom/mob/tools/virtualdisk/FileDisk;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "fsPath":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mob/tools/virtualdisk/FileDisk;->pathToId(Ljava/lang/String;)I
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
    :try_start_1
    iget-object v11, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v12, v3, 0x8

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/nio/MappedByteBuffer;->get(I)B

    move-result v9

    .local v9, "type":I
    const/4 v4, 0x0

    .local v4, "len":I
    if-nez v9, :cond_4

    invoke-virtual {p0, v1}, Lcom/mob/tools/virtualdisk/FileDisk;->list(Ljava/lang/String;)[Ljava/lang/String;

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

    invoke-virtual {p0, v10}, Lcom/mob/tools/virtualdisk/FileDisk;->length(Ljava/lang/String;)I

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
    iget-object v10, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v11, v3, 0x8

    add-int/lit8 v11, v11, 0x2

    invoke-virtual {v10, v11}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v4

    iget-object v10, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v11, v3, 0x8

    add-int/lit8 v11, v11, 0x4

    invoke-virtual {v10, v11}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v8

    .local v8, "nextId":I
    :goto_2
    if-eqz v8, :cond_0

    iget-object v10, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v11, v8, 0x8

    add-int/lit8 v11, v11, 0x2

    invoke-virtual {v10, v11}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v10

    add-int/2addr v4, v10

    iget-object v10, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v11, v8, 0x8

    add-int/lit8 v11, v11, 0x4

    invoke-virtual {v10, v11}, Ljava/nio/MappedByteBuffer;->getInt(I)I
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
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mob/tools/virtualdisk/FileDisk;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "fixPath":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/mob/tools/virtualdisk/FileDisk;->pathToId(Ljava/lang/String;)I
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
    :try_start_1
    iget-object v9, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v10, v6, 0x8

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/nio/MappedByteBuffer;->get(I)B

    move-result v8

    .local v8, "type":I
    if-nez v8, :cond_0

    invoke-virtual {p0, v6}, Lcom/mob/tools/virtualdisk/FileDisk;->readDirectoryData(I)[B

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

.method public declared-synchronized mkdir(Ljava/lang/String;)Z
    .locals 13
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mob/tools/virtualdisk/FileDisk;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "fsPath":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/mob/tools/virtualdisk/FileDisk;->splitPath(Ljava/lang/String;)[Ljava/lang/String;

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

    invoke-virtual {p0, v10}, Lcom/mob/tools/virtualdisk/FileDisk;->readDirectoryData(I)[B

    move-result-object v1

    .local v1, "data":[B
    if-nez v1, :cond_0

    iget-object v10, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Ljava/nio/MappedByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v10, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Ljava/nio/MappedByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v10, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Ljava/nio/MappedByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    iget-object v10, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

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

    invoke-virtual {p0, v9, v7}, Lcom/mob/tools/virtualdisk/FileDisk;->nameToId(ILjava/lang/String;)I

    move-result v5

    .local v5, "id":I
    const/4 v10, -0x1

    if-ne v5, v10, :cond_4

    invoke-virtual {p0}, Lcom/mob/tools/virtualdisk/FileDisk;->nextFreeId()I

    move-result v2

    .local v2, "freeId":I
    const/4 v10, -0x1

    if-eq v2, v10, :cond_3

    iget-object v10, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v11, v2, 0x8

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Ljava/nio/MappedByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v10, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v11, v2, 0x8

    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Ljava/nio/MappedByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v10, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v11, v2, 0x8

    add-int/lit8 v11, v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Ljava/nio/MappedByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    iget-object v10, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v11, v2, 0x8

    add-int/lit8 v11, v11, 0x4

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v9, v7, v2}, Lcom/mob/tools/virtualdisk/FileDisk;->addFileToDirectory(ILjava/lang/String;I)V

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

    iget-object v10, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v10}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public declared-synchronized mount(Ljava/lang/String;)V
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
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mob/tools/virtualdisk/FileDisk;->raf:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/mob/tools/virtualdisk/FileDisk;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .local v0, "fc":Ljava/nio/channels/FileChannel;
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .local v6, "bbSize":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v11

    .local v11, "size":I
    add-int/lit8 v8, v11, -0x4

    .local v8, "dataSize":I
    div-int/lit16 v7, v8, 0x408

    .local v7, "bbc":I
    mul-int/lit8 v10, v7, 0x8

    .local v10, "nodeSize":I
    add-int/lit8 v1, v10, 0x4

    iput v1, p0, Lcom/mob/tools/virtualdisk/FileDisk;->dataOffset:I

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x4

    int-to-long v4, v10

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    iget-object v1, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized mount(Ljava/lang/String;I)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/mob/tools/virtualdisk/FileDisk;->mount(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/mob/tools/virtualdisk/FileDisk;->create(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
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
    invoke-virtual {p0, p1}, Lcom/mob/tools/virtualdisk/FileDisk;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

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
    invoke-virtual {p0, v4}, Lcom/mob/tools/virtualdisk/FileDisk;->pathToId(Ljava/lang/String;)I

    move-result v2

    .local v2, "fromId":I
    const/4 v11, -0x1

    if-ne v2, v11, :cond_1

    const/4 v11, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/mob/tools/virtualdisk/FileDisk;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "fsToPath":Ljava/lang/String;
    const-string v11, "/"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v6}, Lcom/mob/tools/virtualdisk/FileDisk;->pathToId(Ljava/lang/String;)I

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
    invoke-virtual {p0, v9}, Lcom/mob/tools/virtualdisk/FileDisk;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "fsToDirPath":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/mob/tools/virtualdisk/FileDisk;->pathToId(Ljava/lang/String;)I

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
    invoke-virtual {p0, v1}, Lcom/mob/tools/virtualdisk/FileDisk;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "fsFromDirPath":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/mob/tools/virtualdisk/FileDisk;->pathToId(Ljava/lang/String;)I

    move-result v0

    .local v0, "fromDirId":I
    invoke-virtual {p0, v0, v2}, Lcom/mob/tools/virtualdisk/FileDisk;->removeFileFromDirectory(II)V

    invoke-virtual {p0, v8, v10, v2}, Lcom/mob/tools/virtualdisk/FileDisk;->addFileToDirectory(ILjava/lang/String;I)V

    iget-object v11, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v11}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;
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
    invoke-virtual {p0, v1}, Lcom/mob/tools/virtualdisk/FileDisk;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "fsDirPath":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/mob/tools/virtualdisk/FileDisk;->mkdir(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0, v4}, Lcom/mob/tools/virtualdisk/FileDisk;->pathToId(Ljava/lang/String;)I

    move-result v0

    .local v0, "dirId":I
    invoke-virtual {p0, v0, v3}, Lcom/mob/tools/virtualdisk/FileDisk;->nameToId(ILjava/lang/String;)I

    move-result v2

    .local v2, "fileId":I
    if-ne v2, v10, :cond_0

    invoke-virtual {p0}, Lcom/mob/tools/virtualdisk/FileDisk;->nextFreeId()I

    move-result v2

    if-eq v2, v10, :cond_0

    iget-object v6, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v8, v2, 0x8

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/nio/MappedByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v8, v2, 0x8

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/nio/MappedByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v8, v2, 0x8

    add-int/lit8 v8, v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/nio/MappedByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v8, v2, 0x8

    add-int/lit8 v8, v8, 0x4

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0, v3, v2}, Lcom/mob/tools/virtualdisk/FileDisk;->addFileToDirectory(ILjava/lang/String;I)V

    iget-object v6, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v6}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;
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
    .locals 3

    .prologue
    const/4 v1, -0x1

    .local v1, "id":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->limit()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/MappedByteBuffer;->get(I)B

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
    .locals 9
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
    iget-object v7, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/MappedByteBuffer;->get(I)B

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    iget-object v7, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v8}, Ljava/nio/MappedByteBuffer;->get(I)B

    move-result v7

    if-nez v7, :cond_0

    new-instance v3, Lcom/mob/tools/virtualdisk/FileDisk$FDFileInputStream;

    invoke-direct {v3, p0, p1, v6}, Lcom/mob/tools/virtualdisk/FileDisk$FDFileInputStream;-><init>(Lcom/mob/tools/virtualdisk/FileDisk;ILcom/mob/tools/virtualdisk/FileDisk$1;)V

    .local v3, "fis":Lcom/mob/tools/virtualdisk/FileDisk$FDFileInputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x400

    new-array v1, v7, [B

    .local v1, "buf":[B
    invoke-virtual {v3, v1}, Lcom/mob/tools/virtualdisk/FileDisk$FDFileInputStream;->read([B)I

    move-result v4

    .local v4, "len":I
    :goto_1
    if-lez v4, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v3, v1}, Lcom/mob/tools/virtualdisk/FileDisk$FDFileInputStream;->read([B)I

    move-result v4

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/mob/tools/virtualdisk/FileDisk$FDFileInputStream;->close()V

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
    invoke-virtual {p0, p1}, Lcom/mob/tools/virtualdisk/FileDisk;->readDirectoryData(I)[B

    move-result-object v2

    .local v2, "data":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .local v3, "dis":Ljava/io/DataInputStream;
    new-instance v7, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;

    invoke-direct {v7, p0, p1}, Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;-><init>(Lcom/mob/tools/virtualdisk/FileDisk;I)V

    .local v7, "fos":Lcom/mob/tools/virtualdisk/FileDisk$FDFileOutputStream;
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
    invoke-virtual {p0, p1}, Lcom/mob/tools/virtualdisk/FileDisk;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "fsPath":Ljava/lang/String;
    const-string v11, "/"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    new-instance v11, Ljava/lang/Throwable;

    const-string v12, "can not remove directory \"/\""

    invoke-direct {v11, v12}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v6    # "fsPath":Ljava/lang/String;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .restart local v6    # "fsPath":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {p0, v6}, Lcom/mob/tools/virtualdisk/FileDisk;->pathToId(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    .local v7, "id":I
    const/4 v11, -0x1

    if-ne v7, v11, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-object v11, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v12, v7, 0x8

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/nio/MappedByteBuffer;->get(I)B

    move-result v10

    .local v10, "type":I
    if-nez v10, :cond_3

    invoke-virtual {p0, v7}, Lcom/mob/tools/virtualdisk/FileDisk;->readDirectoryData(I)[B

    move-result-object v2

    .local v2, "data":[B
    if-eqz v2, :cond_3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .local v5, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .local v1, "count":I
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    if-lez v1, :cond_3

    new-instance v11, Ljava/lang/Throwable;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "directory \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\" is not empty"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v11

    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "count":I
    .end local v2    # "data":[B
    .end local v5    # "dis":Ljava/io/DataInputStream;
    :cond_3
    iget-object v11, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v12, v7, 0x8

    add-int/lit8 v12, v12, 0x4

    invoke-virtual {v11, v12}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v9

    .local v9, "nextId":I
    iget-object v11, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v12, v7, 0x8

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Ljava/nio/MappedByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v11, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v12, v7, 0x8

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Ljava/nio/MappedByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v11, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v12, v7, 0x8

    add-int/lit8 v12, v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Ljava/nio/MappedByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    iget-object v11, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v12, v7, 0x8

    add-int/lit8 v12, v12, 0x4

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    :goto_1
    if-eqz v9, :cond_4

    iget-object v11, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v12, v9, 0x8

    add-int/lit8 v12, v12, 0x4

    invoke-virtual {v11, v12}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v9

    iget-object v11, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v12, v9, 0x8

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Ljava/nio/MappedByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v11, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v12, v9, 0x8

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Ljava/nio/MappedByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v11, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v12, v9, 0x8

    add-int/lit8 v12, v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Ljava/nio/MappedByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    iget-object v11, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v12, v9, 0x8

    add-int/lit8 v12, v12, 0x4

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_4
    const/16 v11, 0x2f

    invoke-virtual {v6, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .local v8, "ind":I
    if-ltz v8, :cond_1

    if-nez v8, :cond_5

    const-string v4, "/"

    .local v4, "dirPath":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0, v4}, Lcom/mob/tools/virtualdisk/FileDisk;->pathToId(Ljava/lang/String;)I

    move-result v3

    .local v3, "dirId":I
    const/4 v11, -0x1

    if-eq v3, v11, :cond_1

    invoke-virtual {p0, v3, v7}, Lcom/mob/tools/virtualdisk/FileDisk;->removeFileFromDirectory(II)V

    iget-object v11, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v11}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    goto/16 :goto_0

    .end local v3    # "dirId":I
    .end local v4    # "dirPath":Ljava/lang/String;
    :cond_5
    const/4 v11, 0x0

    invoke-virtual {v6, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    goto :goto_2
.end method

.method public declared-synchronized unmount()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/virtualdisk/FileDisk;->bbNode:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    iget-object v0, p0, Lcom/mob/tools/virtualdisk/FileDisk;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
