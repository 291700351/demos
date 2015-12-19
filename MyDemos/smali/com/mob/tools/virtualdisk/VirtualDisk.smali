.class public abstract Lcom/mob/tools/virtualdisk/VirtualDisk;
.super Ljava/lang/Object;


# static fields
.field protected static final BLOCK_SIZE:I = 0x400

.field protected static final NODE_SIZE:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract addFileToDirectory(ILjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
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
    invoke-virtual {p0, p1}, Lcom/mob/tools/virtualdisk/VirtualDisk;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "fsPath":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mob/tools/virtualdisk/VirtualDisk;->pathToId(Ljava/lang/String;)I
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

.method protected fixSlashes(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "origPath"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x2f

    const/4 v2, 0x0

    .local v2, "lastWasSlash":Z
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .local v6, "newPath":[C
    array-length v3, v6

    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "newLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v5, v4

    .end local v4    # "newLength":I
    .local v5, "newLength":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-char v0, v6, v1

    .local v0, "ch":C
    if-ne v0, v7, :cond_0

    if-nez v2, :cond_4

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "newLength":I
    .restart local v4    # "newLength":I
    aput-char v7, v6, v5

    const/4 v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    .end local v4    # "newLength":I
    .restart local v5    # "newLength":I
    goto :goto_0

    :cond_0
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "newLength":I
    .restart local v4    # "newLength":I
    aput-char v0, v6, v5

    const/4 v2, 0x0

    goto :goto_1

    .end local v0    # "ch":C
    .end local v4    # "newLength":I
    .restart local v5    # "newLength":I
    :cond_1
    if-eqz v2, :cond_3

    const/4 v7, 0x1

    if-le v5, v7, :cond_3

    add-int/lit8 v4, v5, -0x1

    .end local v5    # "newLength":I
    .restart local v4    # "newLength":I
    :goto_2
    if-eq v4, v3, :cond_2

    new-instance p1, Ljava/lang/String;

    .end local p1    # "origPath":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-direct {p1, v6, v7, v4}, Ljava/lang/String;-><init>([CII)V

    :cond_2
    return-object p1

    .end local v4    # "newLength":I
    .restart local v5    # "newLength":I
    .restart local p1    # "origPath":Ljava/lang/String;
    :cond_3
    move v4, v5

    .end local v5    # "newLength":I
    .restart local v4    # "newLength":I
    goto :goto_2

    .end local v4    # "newLength":I
    .restart local v0    # "ch":C
    .restart local v5    # "newLength":I
    :cond_4
    move v4, v5

    .end local v5    # "newLength":I
    .restart local v4    # "newLength":I
    goto :goto_1
.end method

.method public abstract format()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract getOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract isFile(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract length(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract list(Ljava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract mkdir(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract mv(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method protected nameToId(ILjava/lang/String;)I
    .locals 8
    .param p1, "parent"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .local v6, "id":I
    invoke-virtual {p0, p1}, Lcom/mob/tools/virtualdisk/VirtualDisk;->readDirectoryData(I)[B

    move-result-object v2

    .local v2, "data":[B
    if-eqz v2, :cond_1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .local v3, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .local v1, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_0

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .local v4, "fileName":Ljava/lang/String;
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .end local v4    # "fileName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "count":I
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .end local v5    # "i":I
    :cond_1
    return v6

    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "count":I
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "fileName":Ljava/lang/String;
    .restart local v5    # "i":I
    :cond_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public abstract newFile(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method protected abstract nextFreeId()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method protected pathToId(Ljava/lang/String;)I
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/mob/tools/virtualdisk/VirtualDisk;->splitPath(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, "names":[Ljava/lang/String;
    const/4 v3, -0x1

    .local v3, "id":I
    if-eqz v6, :cond_0

    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .local v5, "name":Ljava/lang/String;
    const-string v7, "/"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/mob/tools/virtualdisk/VirtualDisk;->readDirectoryData(I)[B

    move-result-object v1

    .local v1, "data":[B
    if-nez v1, :cond_1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "data":[B
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "name":Ljava/lang/String;
    :cond_0
    :goto_1
    return v3

    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "data":[B
    .restart local v2    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "name":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .end local v1    # "data":[B
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3, v5}, Lcom/mob/tools/virtualdisk/VirtualDisk;->nameToId(ILjava/lang/String;)I

    move-result v3

    const/4 v7, -0x1

    if-ne v3, v7, :cond_2

    goto :goto_1
.end method

.method protected abstract readDirectoryData(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method protected abstract removeFileFromDirectory(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract rm(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method protected splitPath(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    return-object v0

    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v6, 0x0

    .local v6, "start":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_5

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, "c":C
    const/16 v7, 0x2f

    if-ne v1, v7, :cond_3

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    if-nez v2, :cond_4

    const-string v4, "/"

    :cond_2
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v2, 0x1

    .end local v4    # "name":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .restart local v4    # "name":Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v2, 0x1

    goto :goto_0

    .end local v1    # "c":C
    .end local v4    # "name":Ljava/lang/String;
    :cond_5
    if-ge v6, v2, :cond_6

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "name":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v4    # "name":Ljava/lang/String;
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v0, v7, [Ljava/lang/String;

    .local v0, "aNames":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_1
    array-length v7, v0

    if-ge v3, v7, :cond_0

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
