.class public Lcom/mob/tools/utils/LocalDB;
.super Ljava/lang/Object;


# instance fields
.field private dbFile:Ljava/io/File;

.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private commit()V
    .locals 5

    .prologue
    iget-object v3, p0, Lcom/mob/tools/utils/LocalDB;->map:Ljava/util/HashMap;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/mob/tools/utils/LocalDB;->dbFile:Ljava/io/File;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/mob/tools/utils/LocalDB;->dbFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/mob/tools/utils/LocalDB;->dbFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_2
    iget-object v4, p0, Lcom/mob/tools/utils/LocalDB;->map:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/mob/tools/utils/LocalDB;->dbFile:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v0, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v1, "oos":Ljava/io/ObjectOutputStream;
    iget-object v3, p0, Lcom/mob/tools/utils/LocalDB;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    :goto_1
    monitor-exit v4

    goto :goto_0

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v2

    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v2    # "t":Ljava/lang/Throwable;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/mob/tools/utils/LocalDB;->map:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mob/tools/utils/LocalDB;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/mob/tools/utils/LocalDB;->map:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/utils/LocalDB;->map:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/mob/tools/utils/LocalDB;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/LocalDB;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_1

    .end local v0    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/LocalDB;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_1

    .end local v0    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    check-cast v0, Ljava/lang/Float;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/LocalDB;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_1

    .end local v0    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const-wide/16 v1, 0x0

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/LocalDB;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_1

    .end local v0    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-wide v1

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v3, v0, Ljava/lang/Long;

    if-eqz v3, :cond_0

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mob/tools/utils/LocalDB;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "base64":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v5, v6

    .end local v1    # "base64":Ljava/lang/String;
    :goto_0
    return-object v5

    .restart local v1    # "base64":Ljava/lang/String;
    :cond_0
    const/4 v7, 0x2

    invoke-static {v1, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .local v2, "data":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .local v3, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    .local v5, "value":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "base64":Ljava/lang/String;
    .end local v2    # "data":[B
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .end local v5    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move-object v5, v6

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/LocalDB;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public open(Ljava/lang/String;)V
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/mob/tools/utils/LocalDB;->dbFile:Ljava/io/File;

    iget-object v3, p0, Lcom/mob/tools/utils/LocalDB;->dbFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/mob/tools/utils/LocalDB;->dbFile:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v0, "fis":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .local v1, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iput-object v3, p0, Lcom/mob/tools/utils/LocalDB;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v2

    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/utils/LocalDB;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/mob/tools/utils/LocalDB;->commit()V

    return-void
.end method

.method public putFloat(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Float;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/utils/LocalDB;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/mob/tools/utils/LocalDB;->commit()V

    return-void
.end method

.method public putInt(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/utils/LocalDB;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/mob/tools/utils/LocalDB;->commit()V

    return-void
.end method

.method public putLong(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Long;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/utils/LocalDB;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/mob/tools/utils/LocalDB;->commit()V

    return-void
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v3, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .local v2, "data":[B
    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .local v1, "base64":Ljava/lang/String;
    invoke-virtual {p0, p1, v1}, Lcom/mob/tools/utils/LocalDB;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "base64":Ljava/lang/String;
    .end local v2    # "data":[B
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v4

    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/utils/LocalDB;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/mob/tools/utils/LocalDB;->commit()V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/mob/tools/utils/LocalDB;->map:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/utils/LocalDB;->map:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/mob/tools/utils/LocalDB;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/mob/tools/utils/LocalDB;->commit()V

    return-void
.end method
