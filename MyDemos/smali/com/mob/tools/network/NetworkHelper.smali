.class public Lcom/mob/tools/network/NetworkHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    }
.end annotation


# static fields
.field public static connectionTimeout:I

.field public static readTimout:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;
    .locals 16
    .param p1, "urlStr"    # Ljava/lang/String;
    .param p2, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    new-instance v8, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .local v8, "ourl":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .local v1, "conn":Ljava/net/HttpURLConnection;
    const-string v3, "methodTokens"

    .local v3, "filedName":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "staticType":Z
    const/4 v6, 0x0

    .local v6, "methods":Ljava/lang/Object;
    if-eqz v11, :cond_5

    :try_start_0
    const-string v12, "HttpURLConnection"

    invoke-static {v12, v3}, Lcom/mob/tools/utils/ReflectHelper;->getStaticField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .end local v6    # "methods":Ljava/lang/Object;
    :goto_0
    if-nez v6, :cond_a

    const-string v3, "PERMITTED_USER_METHODS"

    const/4 v11, 0x1

    if-eqz v11, :cond_6

    :try_start_1
    const-string v12, "HttpURLConnection"

    invoke-static {v12, v3}, Lcom/mob/tools/utils/ReflectHelper;->getStaticField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .restart local v6    # "methods":Ljava/lang/Object;
    :goto_1
    move-object v12, v6

    .end local v6    # "methods":Ljava/lang/Object;
    :goto_2
    if-eqz v12, :cond_0

    check-cast v12, [Ljava/lang/String;

    move-object v5, v12

    check-cast v5, [Ljava/lang/String;

    .local v5, "methodTokens":[Ljava/lang/String;
    array-length v12, v5

    add-int/lit8 v12, v12, 0x1

    new-array v7, v12, [Ljava/lang/String;

    .local v7, "myMethodTokens":[Ljava/lang/String;
    const/4 v12, 0x0

    const/4 v13, 0x0

    array-length v14, v5

    invoke-static {v5, v12, v7, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v12, v5

    const-string v13, "PATCH"

    aput-object v13, v7, v12

    if-eqz v11, :cond_7

    const-string v12, "HttpURLConnection"

    invoke-static {v12, v3, v7}, Lcom/mob/tools/utils/ReflectHelper;->setStaticField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .end local v5    # "methodTokens":[Ljava/lang/String;
    .end local v7    # "myMethodTokens":[Ljava/lang/String;
    :cond_0
    :goto_3
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x8

    if-ge v12, v13, :cond_1

    const-string v12, "http.keepAlive"

    const-string v13, "false"

    invoke-static {v12, v13}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    instance-of v12, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v12, :cond_2

    move-object v4, v1

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    .local v4, "httpsConn":Ljavax/net/ssl/HttpsURLConnection;
    const-string v12, "TLS"

    invoke-static {v12}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v10

    .local v10, "sc":Ljavax/net/ssl/SSLContext;
    const/4 v12, 0x0

    const/4 v13, 0x1

    new-array v13, v13, [Ljavax/net/ssl/X509TrustManager;

    const/4 v14, 0x0

    new-instance v15, Lcom/mob/tools/network/NetworkHelper$2;

    invoke-direct/range {v15 .. v16}, Lcom/mob/tools/network/NetworkHelper$2;-><init>(Lcom/mob/tools/network/NetworkHelper;)V

    aput-object v15, v13, v14

    new-instance v14, Ljava/security/SecureRandom;

    invoke-direct {v14}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v10, v12, v13, v14}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v10}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v12

    invoke-static {v12}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v12, Lcom/mob/tools/network/NetworkHelper$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/mob/tools/network/NetworkHelper$3;-><init>(Lcom/mob/tools/network/NetworkHelper;)V

    invoke-virtual {v4, v12}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .end local v4    # "httpsConn":Ljavax/net/ssl/HttpsURLConnection;
    .end local v10    # "sc":Ljavax/net/ssl/SSLContext;
    :cond_2
    if-nez p2, :cond_8

    sget v2, Lcom/mob/tools/network/NetworkHelper;->connectionTimeout:I

    .local v2, "connectionTimeout":I
    :goto_4
    if-lez v2, :cond_3

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    :cond_3
    if-nez p2, :cond_9

    sget v9, Lcom/mob/tools/network/NetworkHelper;->readTimout:I

    .local v9, "readTimout":I
    :goto_5
    if-lez v9, :cond_4

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :cond_4
    return-object v1

    .end local v2    # "connectionTimeout":I
    .end local v9    # "readTimout":I
    .restart local v6    # "methods":Ljava/lang/Object;
    :cond_5
    :try_start_2
    invoke-static {v1, v3}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    goto/16 :goto_0

    .end local v6    # "methods":Ljava/lang/Object;
    :cond_6
    :try_start_3
    invoke-static {v1, v3}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v6

    goto :goto_1

    :catch_0
    move-exception v12

    move-object v12, v6

    goto :goto_2

    .restart local v5    # "methodTokens":[Ljava/lang/String;
    .restart local v7    # "myMethodTokens":[Ljava/lang/String;
    :cond_7
    invoke-static {v1, v3, v7}, Lcom/mob/tools/utils/ReflectHelper;->setInstanceField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .end local v5    # "methodTokens":[Ljava/lang/String;
    .end local v7    # "myMethodTokens":[Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p2

    iget v2, v0, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    goto :goto_4

    .restart local v2    # "connectionTimeout":I
    :cond_9
    move-object/from16 v0, p2

    iget v9, v0, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    goto :goto_5

    .end local v2    # "connectionTimeout":I
    .restart local v6    # "methods":Ljava/lang/Object;
    :catch_1
    move-exception v12

    goto/16 :goto_0

    .end local v6    # "methods":Ljava/lang/Object;
    :cond_a
    move-object v12, v6

    goto/16 :goto_2
.end method

.method private getFilePostHTTPPart(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/mob/tools/network/HTTPPart;
    .locals 13
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/mob/tools/network/HTTPPart;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p4, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "boundary":Ljava/lang/String;
    const-string v10, "Content-Type"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "multipart/form-data; boundary="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/mob/tools/network/MultiPart;

    invoke-direct {v7}, Lcom/mob/tools/network/MultiPart;-><init>()V

    .local v7, "mp":Lcom/mob/tools/network/MultiPart;
    new-instance v8, Lcom/mob/tools/network/StringPart;

    invoke-direct {v8}, Lcom/mob/tools/network/StringPart;-><init>()V

    .local v8, "sp":Lcom/mob/tools/network/StringPart;
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mob/tools/network/KVPair;

    .local v9, "value":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    const-string v10, "--"

    invoke-virtual {v8, v10}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v10

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    const-string v10, "Content-Disposition: form-data; name=\""

    invoke-virtual {v8, v10}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v10

    iget-object v11, v9, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v10

    const-string v11, "\"\r\n\r\n"

    invoke-virtual {v10, v11}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    iget-object v10, v9, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v10

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    goto :goto_0

    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v9    # "value":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v7, v8}, Lcom/mob/tools/network/MultiPart;->append(Lcom/mob/tools/network/HTTPPart;)Lcom/mob/tools/network/MultiPart;

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/tools/network/KVPair;

    .local v1, "file":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    new-instance v8, Lcom/mob/tools/network/StringPart;

    .end local v8    # "sp":Lcom/mob/tools/network/StringPart;
    invoke-direct {v8}, Lcom/mob/tools/network/StringPart;-><init>()V

    .restart local v8    # "sp":Lcom/mob/tools/network/StringPart;
    new-instance v5, Ljava/io/File;

    iget-object v10, v1, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v5, "imageFile":Ljava/io/File;
    const-string v10, "--"

    invoke-virtual {v8, v10}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v10

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    const-string v10, "Content-Disposition: form-data; name=\""

    invoke-virtual {v8, v10}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v10

    iget-object v11, v1, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v10

    const-string v11, "\"; filename=\""

    invoke-virtual {v10, v11}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v10

    const-string v11, "\"\r\n"

    invoke-virtual {v10, v11}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v11

    iget-object v10, v1, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-interface {v11, v10}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "mime":Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_3

    :cond_1
    iget-object v10, v1, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "jpg"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v1, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "jpeg"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_2
    const-string v6, "image/jpeg"

    :cond_3
    :goto_2
    const-string v10, "Content-Type: "

    invoke-virtual {v8, v10}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v10

    const-string v11, "\r\n\r\n"

    invoke-virtual {v10, v11}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    invoke-virtual {v7, v8}, Lcom/mob/tools/network/MultiPart;->append(Lcom/mob/tools/network/HTTPPart;)Lcom/mob/tools/network/MultiPart;

    new-instance v3, Lcom/mob/tools/network/FilePart;

    invoke-direct {v3}, Lcom/mob/tools/network/FilePart;-><init>()V

    .local v3, "fp":Lcom/mob/tools/network/FilePart;
    iget-object v10, v1, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v3, v10}, Lcom/mob/tools/network/FilePart;->setFile(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Lcom/mob/tools/network/MultiPart;->append(Lcom/mob/tools/network/HTTPPart;)Lcom/mob/tools/network/MultiPart;

    new-instance v8, Lcom/mob/tools/network/StringPart;

    .end local v8    # "sp":Lcom/mob/tools/network/StringPart;
    invoke-direct {v8}, Lcom/mob/tools/network/StringPart;-><init>()V

    .restart local v8    # "sp":Lcom/mob/tools/network/StringPart;
    const-string v10, "\r\n"

    invoke-virtual {v8, v10}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    invoke-virtual {v7, v8}, Lcom/mob/tools/network/MultiPart;->append(Lcom/mob/tools/network/HTTPPart;)Lcom/mob/tools/network/MultiPart;

    goto/16 :goto_1

    .end local v3    # "fp":Lcom/mob/tools/network/FilePart;
    :cond_4
    iget-object v10, v1, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "png"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v6, "image/png"

    goto :goto_2

    :cond_5
    iget-object v10, v1, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "gif"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v6, "image/gif"

    goto :goto_2

    :cond_6
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v10, v1, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-direct {v2, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .local v2, "fis":Ljava/io/FileInputStream;
    invoke-static {v2}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_3

    :cond_7
    const-string v6, "application/octet-stream"

    goto :goto_2

    .end local v1    # "file":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "imageFile":Ljava/io/File;
    .end local v6    # "mime":Ljava/lang/String;
    :cond_8
    new-instance v8, Lcom/mob/tools/network/StringPart;

    .end local v8    # "sp":Lcom/mob/tools/network/StringPart;
    invoke-direct {v8}, Lcom/mob/tools/network/StringPart;-><init>()V

    .restart local v8    # "sp":Lcom/mob/tools/network/StringPart;
    const-string v10, "--"

    invoke-virtual {v8, v10}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v10

    const-string v11, "--\r\n"

    invoke-virtual {v10, v11}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    invoke-virtual {v7, v8}, Lcom/mob/tools/network/MultiPart;->append(Lcom/mob/tools/network/HTTPPart;)Lcom/mob/tools/network/MultiPart;

    return-object v7
.end method

.method private getTextPostHTTPPart(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/mob/tools/network/HTTPPart;
    .locals 3
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/mob/tools/network/HTTPPart;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mob/tools/network/StringPart;

    invoke-direct {v0}, Lcom/mob/tools/network/StringPart;-><init>()V

    .local v0, "sp":Lcom/mob/tools/network/StringPart;
    if-eqz p3, :cond_0

    invoke-direct {p0, p3}, Lcom/mob/tools/network/NetworkHelper;->kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    :cond_0
    return-object v0
.end method

.method private httpPatchImpl(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;JLjava/util/ArrayList;Lcom/mob/tools/network/OnReadListener;Lcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .locals 32
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "offset"    # J
    .param p7, "listener"    # Lcom/mob/tools/network/OnReadListener;
    .param p8, "callback"    # Lcom/mob/tools/network/HttpResponseCallback;
    .param p9, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/OnReadListener;",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, "file":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .local p6, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .local v25, "time":J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "httpPatch: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-virtual/range {v28 .. v30}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/mob/tools/network/NetworkHelper;->kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v18

    .local v18, "param":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "?"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local v18    # "param":Ljava/lang/String;
    :cond_0
    new-instance v20, Lcom/mob/tools/network/HttpPatch;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/mob/tools/network/HttpPatch;-><init>(Ljava/lang/String;)V

    .local v20, "patch":Lcom/mob/tools/network/HttpPatch;
    if-eqz p6, :cond_1

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mob/tools/network/KVPair;

    .local v10, "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v0, v10, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    iget-object v0, v10, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/network/HttpPatch;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v10    # "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_1
    new-instance v9, Lcom/mob/tools/network/FilePart;

    invoke-direct {v9}, Lcom/mob/tools/network/FilePart;-><init>()V

    .local v9, "fp":Lcom/mob/tools/network/FilePart;
    move-object/from16 v0, p7

    invoke-virtual {v9, v0}, Lcom/mob/tools/network/FilePart;->setOnReadListener(Lcom/mob/tools/network/OnReadListener;)V

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/mob/tools/network/FilePart;->setFile(Ljava/lang/String;)V

    move-wide/from16 v0, p4

    invoke-virtual {v9, v0, v1}, Lcom/mob/tools/network/FilePart;->setOffset(J)V

    invoke-virtual {v9}, Lcom/mob/tools/network/FilePart;->toInputStream()Ljava/io/InputStream;

    move-result-object v15

    .local v15, "is":Ljava/io/InputStream;
    invoke-virtual {v9}, Lcom/mob/tools/network/FilePart;->length()J

    move-result-wide v28

    sub-long v16, v28, p4

    .local v16, "length":J
    new-instance v8, Lorg/apache/http/entity/InputStreamEntity;

    move-wide/from16 v0, v16

    invoke-direct {v8, v15, v0, v1}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .local v8, "entity":Lorg/apache/http/entity/InputStreamEntity;
    const-string v28, "application/offset+octet-stream"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lorg/apache/http/entity/InputStreamEntity;->setContentEncoding(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/mob/tools/network/HttpPatch;->setEntity(Lorg/apache/http/HttpEntity;)V

    new-instance v11, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v11}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .local v11, "httpParams":Lorg/apache/http/params/BasicHttpParams;
    if-nez p9, :cond_4

    sget v7, Lcom/mob/tools/network/NetworkHelper;->connectionTimeout:I

    .local v7, "connectionTimeout":I
    :goto_1
    if-lez v7, :cond_2

    invoke-static {v11, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    :cond_2
    if-nez p9, :cond_5

    sget v21, Lcom/mob/tools/network/NetworkHelper;->readTimout:I

    .local v21, "readTimout":I
    :goto_2
    if-lez v21, :cond_3

    move/from16 v0, v21

    invoke-static {v11, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    :cond_3
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/mob/tools/network/HttpPatch;->setParams(Lorg/apache/http/params/HttpParams;)V

    const/4 v6, 0x0

    .local v6, "client":Lorg/apache/http/client/HttpClient;
    const-string v28, "https://"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_6

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v27

    .local v27, "trustStore":Ljava/security/KeyStore;
    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    new-instance v23, Lcom/mob/tools/network/SSLSocketFactoryEx;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/mob/tools/network/SSLSocketFactoryEx;-><init>(Ljava/security/KeyStore;)V

    .local v23, "sf":Lcom/mob/tools/network/SSLSocketFactoryEx;
    invoke-virtual/range {v23 .. v23}, Lcom/mob/tools/network/SSLSocketFactoryEx;->allowAllHostnameVerifier()V

    new-instance v19, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct/range {v19 .. v19}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .local v19, "params":Lorg/apache/http/params/BasicHttpParams;
    sget-object v4, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    .local v4, "HTTP_1_1":Lorg/apache/http/HttpVersion;
    move-object/from16 v0, v19

    invoke-static {v0, v4}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v28, "UTF-8"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    new-instance v22, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct/range {v22 .. v22}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .local v22, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v13

    .local v13, "httpSf":Lorg/apache/http/conn/scheme/PlainSocketFactory;
    new-instance v28, Lorg/apache/http/conn/scheme/Scheme;

    const-string v29, "http"

    const/16 v30, 0x50

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v13, v2}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v28, Lorg/apache/http/conn/scheme/Scheme;

    const-string v29, "https"

    const/16 v30, 0x1bb

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v23

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v5, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v5, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .local v5, "ccm":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v6    # "client":Lorg/apache/http/client/HttpClient;
    move-object/from16 v0, v19

    invoke-direct {v6, v5, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .end local v4    # "HTTP_1_1":Lorg/apache/http/HttpVersion;
    .end local v5    # "ccm":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    .end local v13    # "httpSf":Lorg/apache/http/conn/scheme/PlainSocketFactory;
    .end local v19    # "params":Lorg/apache/http/params/BasicHttpParams;
    .end local v22    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v23    # "sf":Lcom/mob/tools/network/SSLSocketFactoryEx;
    .end local v27    # "trustStore":Ljava/security/KeyStore;
    .restart local v6    # "client":Lorg/apache/http/client/HttpClient;
    :goto_3
    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .local v12, "httpResponse":Lorg/apache/http/HttpResponse;
    if-eqz p8, :cond_7

    :try_start_0
    new-instance v28, Lcom/mob/tools/network/HttpConnectionImpl;

    move-object/from16 v0, v28

    invoke-direct {v0, v12}, Lcom/mob/tools/network/HttpConnectionImpl;-><init>(Lorg/apache/http/HttpResponse;)V

    move-object/from16 v0, p8

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :goto_4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "use time: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    sub-long v30, v30, v25

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-virtual/range {v28 .. v30}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void

    .end local v6    # "client":Lorg/apache/http/client/HttpClient;
    .end local v7    # "connectionTimeout":I
    .end local v12    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v21    # "readTimout":I
    :cond_4
    move-object/from16 v0, p9

    iget v7, v0, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    goto/16 :goto_1

    .restart local v7    # "connectionTimeout":I
    :cond_5
    move-object/from16 v0, p9

    iget v0, v0, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    move/from16 v21, v0

    goto/16 :goto_2

    .restart local v6    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v21    # "readTimout":I
    :cond_6
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v6    # "client":Lorg/apache/http/client/HttpClient;
    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .restart local v6    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_3

    .restart local v12    # "httpResponse":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v24

    .local v24, "t":Ljava/lang/Throwable;
    :try_start_1
    throw v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v24    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v28

    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v28

    :cond_7
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_4
.end method

.method private kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mob/tools/network/KVPair;

    .local v4, "value":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v5, v4, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    const-string v6, "utf-8"

    invoke-static {v5, v6}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "encodedName":Ljava/lang/String;
    iget-object v5, v4, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    const-string v6, "utf-8"

    invoke-static {v5, v6}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "encodedValue":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    const/16 v5, 0x26

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v1    # "encodedValue":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_1

    .end local v0    # "encodedName":Ljava/lang/String;
    .end local v4    # "value":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public downloadCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .locals 36
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "cacheFolder"    # Ljava/lang/String;
    .param p4, "skipIfCached"    # Z
    .param p5, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    .local v27, "time":J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "downloading: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    invoke-virtual/range {v32 .. v34}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz p4, :cond_0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/mob/tools/utils/R;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .local v23, "path":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .local v20, "name":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v6, "cache":Ljava/io/File;
    if-eqz p4, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v32

    if-eqz v32, :cond_0

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "use time: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    sub-long v34, v34, v27

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    invoke-virtual/range {v32 .. v34}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    :goto_0
    return-object v32

    .end local v6    # "cache":Ljava/io/File;
    .end local v20    # "name":Ljava/lang/String;
    .end local v23    # "path":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object v7

    .local v7, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v25

    .local v25, "status":I
    const/16 v32, 0xc8

    move/from16 v0, v25

    move/from16 v1, v32

    if-ne v0, v1, :cond_d

    const/16 v20, 0x0

    .restart local v20    # "name":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v19

    .local v19, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v19, :cond_2

    const-string v32, "Content-Disposition"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .local v11, "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v11, :cond_2

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v32

    if-lez v32, :cond_2

    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .local v31, "value":Ljava/lang/String;
    const-string v32, ";"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .local v22, "parts":[Ljava/lang/String;
    move-object/from16 v3, v22

    .local v3, "arr$":[Ljava/lang/String;
    array-length v0, v3

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_1
    move/from16 v0, v18

    if-ge v12, v0, :cond_2

    aget-object v21, v3, v12

    .local v21, "part":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v32

    const-string v33, "filename"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_1

    const-string v32, "="

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x1

    aget-object v20, v32, v33

    const-string v32, "\""

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_1

    const-string v32, "\""

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_1

    const/16 v32, 0x1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v33

    add-int/lit8 v33, v33, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v11    # "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "i$":I
    .end local v18    # "len$":I
    .end local v21    # "part":Ljava/lang/String;
    .end local v22    # "parts":[Ljava/lang/String;
    .end local v31    # "value":Ljava/lang/String;
    :cond_2
    if-nez v20, :cond_4

    invoke-static/range {p2 .. p2}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v19, :cond_4

    const-string v32, "Content-Type"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .restart local v11    # "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v11, :cond_4

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v32

    if-lez v32, :cond_4

    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .restart local v31    # "value":Ljava/lang/String;
    if-nez v31, :cond_5

    const-string v31, ""

    :goto_2
    const-string v32, "image/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_6

    const-string v32, "image/"

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    .local v30, "type":Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "jpeg"

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_3

    const-string v30, "jpg"

    .end local v30    # "type":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .end local v11    # "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v31    # "value":Ljava/lang/String;
    :cond_4
    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/mob/tools/utils/R;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .restart local v23    # "path":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v6    # "cache":Ljava/io/File;
    if-eqz p4, :cond_8

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v32

    if-eqz v32, :cond_8

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "use time: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    sub-long v34, v34, v27

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    invoke-virtual/range {v32 .. v34}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_0

    .end local v6    # "cache":Ljava/io/File;
    .end local v23    # "path":Ljava/lang/String;
    .restart local v11    # "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v31    # "value":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_2

    :cond_6
    const/16 v32, 0x2f

    move-object/from16 v0, p2

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .local v13, "index":I
    const/16 v16, 0x0

    .local v16, "lastPart":Ljava/lang/String;
    if-lez v13, :cond_7

    add-int/lit8 v32, v13, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    :cond_7
    if-eqz v16, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v32

    if-lez v32, :cond_4

    const/16 v32, 0x2e

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .local v8, "dot":I
    if-lez v8, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v32

    sub-int v32, v32, v8

    const/16 v33, 0xa

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_4

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_3

    .end local v8    # "dot":I
    .end local v11    # "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "index":I
    .end local v16    # "lastPart":Ljava/lang/String;
    .end local v31    # "value":Ljava/lang/String;
    .restart local v6    # "cache":Ljava/io/File;
    .restart local v23    # "path":Ljava/lang/String;
    :cond_8
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->exists()Z

    move-result v32

    if-nez v32, :cond_9

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->mkdirs()Z

    :cond_9
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v32

    if-eqz v32, :cond_a

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_a
    :try_start_0
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    .local v14, "is":Ljava/io/InputStream;
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v10, "fos":Ljava/io/FileOutputStream;
    const/16 v32, 0x400

    move/from16 v0, v32

    new-array v5, v0, [B

    .local v5, "buf":[B
    invoke-virtual {v14, v5}, Ljava/io/InputStream;->read([B)I

    move-result v17

    .local v17, "len":I
    :goto_4
    if-lez v17, :cond_b

    const/16 v32, 0x0

    move/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v10, v5, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v14, v5}, Ljava/io/InputStream;->read([B)I

    move-result v17

    goto :goto_4

    :cond_b
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "use time: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    sub-long v34, v34, v27

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    invoke-virtual/range {v32 .. v34}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_0

    .end local v5    # "buf":[B
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "is":Ljava/io/InputStream;
    .end local v17    # "len":I
    :catch_0
    move-exception v26

    .local v26, "t":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v32

    if-eqz v32, :cond_c

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_c
    throw v26

    .end local v6    # "cache":Ljava/io/File;
    .end local v19    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v20    # "name":Ljava/lang/String;
    .end local v23    # "path":Ljava/lang/String;
    .end local v26    # "t":Ljava/lang/Throwable;
    :cond_d
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .local v24, "sb":Ljava/lang/StringBuilder;
    new-instance v15, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v32

    const-string v33, "utf-8"

    invoke-static/range {v33 .. v33}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-direct {v15, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .local v15, "isr":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v4, "br":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v29

    .local v29, "txt":Ljava/lang/String;
    :goto_5
    if-eqz v29, :cond_f

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->length()I

    move-result v32

    if-lez v32, :cond_e

    const/16 v32, 0xa

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_e
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v29

    goto :goto_5

    :cond_f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .local v9, "errMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v32, "error"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v32, "status"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v32, Ljava/lang/Throwable;

    new-instance v33, Lcom/mob/tools/utils/Hashon;

    invoke-direct/range {v33 .. v33}, Lcom/mob/tools/utils/Hashon;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v32
.end method

.method public getHttpPostResponse(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .locals 19
    .param p1, "url"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/mob/tools/network/HttpResponseCallback;
    .param p6, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, "file":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .local v13, "time":J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "httpPost: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .local v4, "conn":Ljava/net/HttpURLConnection;
    const/4 v15, 0x1

    invoke-virtual {v4, v15}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    if-eqz v15, :cond_0

    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v4, v1, v2, v5}, Lcom/mob/tools/network/NetworkHelper;->getFilePostHTTPPart(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/mob/tools/network/HTTPPart;

    move-result-object v11

    .end local v5    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local v11, "part":Lcom/mob/tools/network/HTTPPart;
    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mob/tools/network/KVPair;

    .local v6, "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v0, v6, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v15, v6, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v6    # "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v11    # "part":Lcom/mob/tools/network/HTTPPart;
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v4, v1, v2}, Lcom/mob/tools/network/NetworkHelper;->getTextPostHTTPPart(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/mob/tools/network/HTTPPart;

    move-result-object v11

    .restart local v11    # "part":Lcom/mob/tools/network/HTTPPart;
    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    .local v10, "os":Ljava/io/OutputStream;
    invoke-virtual {v11}, Lcom/mob/tools/network/HTTPPart;->toInputStream()Ljava/io/InputStream;

    move-result-object v8

    .local v8, "is":Ljava/io/InputStream;
    const/high16 v15, 0x10000

    new-array v3, v15, [B

    .local v3, "buf":[B
    invoke-virtual {v8, v3}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .local v9, "len":I
    :goto_2
    if-lez v9, :cond_2

    const/4 v15, 0x0

    invoke-virtual {v10, v3, v15, v9}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v8, v3}, Ljava/io/InputStream;->read([B)I

    move-result v9

    goto :goto_2

    :cond_2
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    if-eqz p5, :cond_3

    :try_start_0
    new-instance v15, Lcom/mob/tools/network/HttpConnectionImpl23;

    invoke-direct {v15, v4}, Lcom/mob/tools/network/HttpConnectionImpl23;-><init>(Ljava/net/HttpURLConnection;)V

    move-object/from16 v0, p5

    invoke-interface {v0, v15}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :goto_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "use time: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v13

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void

    :catch_0
    move-exception v12

    .local v12, "t":Ljava/lang/Throwable;
    :try_start_1
    throw v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v12    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v15

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v15

    :cond_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3
.end method

.method public httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .locals 20
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .local v13, "time":J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "httpGet: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/mob/tools/network/NetworkHelper;->kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v9

    .local v9, "param":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "?"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local v9    # "param":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .local v4, "conn":Ljava/net/HttpURLConnection;
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mob/tools/network/KVPair;

    .local v6, "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v0, v6, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v6, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v6    # "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    const/4 v10, 0x0

    .local v10, "resp":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    .local v12, "status":I
    const/16 v16, 0xc8

    move/from16 v0, v16

    if-ne v12, v0, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .local v11, "sb":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    const-string v17, "utf-8"

    invoke-static/range {v17 .. v17}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v8, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .local v8, "isr":Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v3, "br":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .local v15, "txt":Ljava/lang/String;
    :goto_1
    if-eqz v15, :cond_3

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    if-lez v16, :cond_2

    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "use time: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v13

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object v10

    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .end local v15    # "txt":Ljava/lang/String;
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v16

    const-string v17, "utf-8"

    invoke-static/range {v17 .. v17}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v8, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .restart local v3    # "br":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "txt":Ljava/lang/String;
    :goto_2
    if-eqz v15, :cond_6

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    if-lez v16, :cond_5

    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .local v5, "errMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v16, "error"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v16, "status"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Ljava/lang/Throwable;

    new-instance v17, Lcom/mob/tools/utils/Hashon;

    invoke-direct/range {v17 .. v17}, Lcom/mob/tools/utils/Hashon;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v16
.end method

.method public httpHead(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/util/ArrayList;
    .locals 19
    .param p1, "url"    # Ljava/lang/String;
    .param p5, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, "file":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .local v12, "time":J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "httpHead: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/mob/tools/network/NetworkHelper;->kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v11

    .local v11, "param":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "?"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local v11    # "param":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .local v3, "conn":Ljava/net/HttpURLConnection;
    const-string v15, "HEAD"

    invoke-virtual {v3, v15}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mob/tools/network/KVPair;

    .local v6, "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v0, v6, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v15, v6, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v6    # "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v10

    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .local v9, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<[Ljava/lang/String;>;>;"
    if-eqz v10, :cond_4

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .local v4, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .local v14, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v14, :cond_2

    new-instance v16, Lcom/mob/tools/network/KVPair;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    new-array v5, v15, [Ljava/lang/String;

    .local v5, "hds":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    array-length v15, v5

    if-ge v7, v15, :cond_3

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    aput-object v15, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    new-instance v16, Lcom/mob/tools/network/KVPair;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v15, v5}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v4    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v5    # "hds":[Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v14    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "use time: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v12

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object v9
.end method

.method public httpPatch(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;JLjava/util/ArrayList;Lcom/mob/tools/network/OnReadListener;Lcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "offset"    # J
    .param p7, "listener"    # Lcom/mob/tools/network/OnReadListener;
    .param p8, "callback"    # Lcom/mob/tools/network/HttpResponseCallback;
    .param p9, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/OnReadListener;",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, "file":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .local p6, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual/range {p0 .. p9}, Lcom/mob/tools/network/NetworkHelper;->httpPatchImpl23(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;JLjava/util/ArrayList;Lcom/mob/tools/network/OnReadListener;Lcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct/range {p0 .. p9}, Lcom/mob/tools/network/NetworkHelper;->httpPatchImpl(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;JLjava/util/ArrayList;Lcom/mob/tools/network/OnReadListener;Lcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    goto :goto_0
.end method

.method public httpPatchImpl23(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;JLjava/util/ArrayList;Lcom/mob/tools/network/OnReadListener;Lcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .locals 19
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "offset"    # J
    .param p7, "listener"    # Lcom/mob/tools/network/OnReadListener;
    .param p8, "callback"    # Lcom/mob/tools/network/HttpResponseCallback;
    .param p9, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/OnReadListener;",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, "file":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .local p6, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .local v13, "time":J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "httpPatch: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/mob/tools/network/NetworkHelper;->kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v11

    .local v11, "param":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "?"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local v11    # "param":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .local v4, "conn":Ljava/net/HttpURLConnection;
    const/4 v15, 0x1

    invoke-virtual {v4, v15}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    const-string v15, "PATCH"

    invoke-virtual {v4, v15}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v15, "Content-Type"

    const-string v16, "application/offset+octet-stream"

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_1

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mob/tools/network/KVPair;

    .local v6, "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v0, v6, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v15, v6, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v6    # "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    .local v10, "os":Ljava/io/OutputStream;
    new-instance v5, Lcom/mob/tools/network/FilePart;

    invoke-direct {v5}, Lcom/mob/tools/network/FilePart;-><init>()V

    .local v5, "fp":Lcom/mob/tools/network/FilePart;
    move-object/from16 v0, p7

    invoke-virtual {v5, v0}, Lcom/mob/tools/network/FilePart;->setOnReadListener(Lcom/mob/tools/network/OnReadListener;)V

    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v5, v15}, Lcom/mob/tools/network/FilePart;->setFile(Ljava/lang/String;)V

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Lcom/mob/tools/network/FilePart;->setOffset(J)V

    invoke-virtual {v5}, Lcom/mob/tools/network/FilePart;->toInputStream()Ljava/io/InputStream;

    move-result-object v8

    .local v8, "is":Ljava/io/InputStream;
    const/high16 v15, 0x10000

    new-array v3, v15, [B

    .local v3, "buf":[B
    invoke-virtual {v8, v3}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .local v9, "len":I
    :goto_1
    if-lez v9, :cond_2

    const/4 v15, 0x0

    invoke-virtual {v10, v3, v15, v9}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v8, v3}, Ljava/io/InputStream;->read([B)I

    move-result v9

    goto :goto_1

    :cond_2
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    if-eqz p8, :cond_3

    :try_start_0
    new-instance v15, Lcom/mob/tools/network/HttpConnectionImpl23;

    invoke-direct {v15, v4}, Lcom/mob/tools/network/HttpConnectionImpl23;-><init>(Ljava/net/HttpURLConnection;)V

    move-object/from16 v0, p8

    invoke-interface {v0, v15}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :goto_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "use time: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v13

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void

    :catch_0
    move-exception v12

    .local v12, "t":Ljava/lang/Throwable;
    :try_start_1
    throw v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v12    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v15

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v15

    :cond_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2
.end method

.method public httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p5, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, "file":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    if-eqz p3, :cond_0

    iget-object v0, p3, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v0, p3, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/network/NetworkHelper;->httpPostFiles(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public httpPost(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .locals 19
    .param p1, "url"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/mob/tools/network/HttpResponseCallback;
    .param p6, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p4, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .local v13, "time":J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "httpPost: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .local v5, "conn":Ljava/net/HttpURLConnection;
    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/mob/tools/network/NetworkHelper;->getFilePostHTTPPart(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/mob/tools/network/HTTPPart;

    move-result-object v11

    .local v11, "part":Lcom/mob/tools/network/HTTPPart;
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mob/tools/network/KVPair;

    .local v6, "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v0, v6, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v15, v6, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v6    # "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v11    # "part":Lcom/mob/tools/network/HTTPPart;
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v5, v1, v2}, Lcom/mob/tools/network/NetworkHelper;->getTextPostHTTPPart(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/mob/tools/network/HTTPPart;

    move-result-object v11

    .restart local v11    # "part":Lcom/mob/tools/network/HTTPPart;
    invoke-virtual {v11}, Lcom/mob/tools/network/HTTPPart;->length()J

    move-result-wide v15

    long-to-int v15, v15

    invoke-virtual {v5, v15}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    .local v10, "os":Ljava/io/OutputStream;
    invoke-virtual {v11}, Lcom/mob/tools/network/HTTPPart;->toInputStream()Ljava/io/InputStream;

    move-result-object v8

    .local v8, "is":Ljava/io/InputStream;
    const/high16 v15, 0x10000

    new-array v4, v15, [B

    .local v4, "buf":[B
    invoke-virtual {v8, v4}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .local v9, "len":I
    :goto_2
    if-lez v9, :cond_2

    const/4 v15, 0x0

    invoke-virtual {v10, v4, v15, v9}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v8, v4}, Ljava/io/InputStream;->read([B)I

    move-result v9

    goto :goto_2

    :cond_2
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    if-eqz p5, :cond_3

    :try_start_0
    new-instance v15, Lcom/mob/tools/network/HttpConnectionImpl23;

    invoke-direct {v15, v5}, Lcom/mob/tools/network/HttpConnectionImpl23;-><init>(Ljava/net/HttpURLConnection;)V

    move-object/from16 v0, p5

    invoke-interface {v0, v15}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :goto_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "use time: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v13

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void

    :catch_0
    move-exception v12

    .local v12, "t":Ljava/lang/Throwable;
    :try_start_1
    throw v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v12    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v15

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v15

    :cond_3
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3
.end method

.method public httpPostFiles(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p5, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p4, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .local v7, "tmpMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lcom/mob/tools/network/NetworkHelper$1;

    invoke-direct {v5, p0, v7}, Lcom/mob/tools/network/NetworkHelper$1;-><init>(Lcom/mob/tools/network/NetworkHelper;Ljava/util/HashMap;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    const-string v0, "resp"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public httpPut(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .locals 25
    .param p1, "url"    # Ljava/lang/String;
    .param p5, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, "file":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .local v18, "time":J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "httpPut: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/mob/tools/network/NetworkHelper;->kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v14

    .local v14, "param":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "?"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local v14    # "param":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .local v5, "conn":Ljava/net/HttpURLConnection;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    const-string v21, "PUT"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v21, "Content-Type"

    const-string v22, "application/octet-stream"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mob/tools/network/KVPair;

    .local v8, "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v0, v8, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    iget-object v0, v8, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v8    # "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    .local v13, "os":Ljava/io/OutputStream;
    new-instance v7, Lcom/mob/tools/network/FilePart;

    invoke-direct {v7}, Lcom/mob/tools/network/FilePart;-><init>()V

    .local v7, "fp":Lcom/mob/tools/network/FilePart;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/mob/tools/network/FilePart;->setFile(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/mob/tools/network/FilePart;->toInputStream()Ljava/io/InputStream;

    move-result-object v10

    .local v10, "is":Ljava/io/InputStream;
    const/high16 v21, 0x10000

    move/from16 v0, v21

    new-array v4, v0, [B

    .local v4, "buf":[B
    invoke-virtual {v10, v4}, Ljava/io/InputStream;->read([B)I

    move-result v12

    .local v12, "len":I
    :goto_1
    if-lez v12, :cond_2

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v4, v0, v12}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v10, v4}, Ljava/io/InputStream;->read([B)I

    move-result v12

    goto :goto_1

    :cond_2
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    .local v17, "status":I
    const/4 v15, 0x0

    .local v15, "resp":Ljava/lang/String;
    const/16 v21, 0xc8

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    const/16 v21, 0xc9

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    :cond_3
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .local v16, "sb":Ljava/lang/StringBuilder;
    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    const-string v22, "utf-8"

    invoke-static/range {v22 .. v22}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v11, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .local v11, "isr":Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v3, "br":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .local v20, "txt":Ljava/lang/String;
    :goto_2
    if-eqz v20, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    if-lez v21, :cond_4

    const/16 v21, 0xa

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "use time: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    sub-long v23, v23, v18

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object v15

    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v11    # "isr":Ljava/io/InputStreamReader;
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    .end local v20    # "txt":Ljava/lang/String;
    :cond_6
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v16    # "sb":Ljava/lang/StringBuilder;
    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v21

    const-string v22, "utf-8"

    invoke-static/range {v22 .. v22}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v11, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .restart local v11    # "isr":Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .restart local v3    # "br":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "txt":Ljava/lang/String;
    :goto_3
    if-eqz v20, :cond_8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    if-lez v21, :cond_7

    const/16 v21, 0xa

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    goto :goto_3

    :cond_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .local v6, "errMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v21, "error"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v21, "status"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v21, Ljava/lang/Throwable;

    new-instance v22, Lcom/mob/tools/utils/Hashon;

    invoke-direct/range {v22 .. v22}, Lcom/mob/tools/utils/Hashon;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v21
.end method

.method public jsonPost(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .locals 25
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .local v18, "time":J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "jsonPost: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .local v5, "conn":Ljava/net/HttpURLConnection;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    const-string v21, "content-type"

    const-string v22, "application/json"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mob/tools/network/KVPair;

    .local v7, "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v0, v7, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    iget-object v0, v7, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v7    # "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_0
    new-instance v16, Lcom/mob/tools/network/StringPart;

    invoke-direct/range {v16 .. v16}, Lcom/mob/tools/network/StringPart;-><init>()V

    .local v16, "sp":Lcom/mob/tools/network/StringPart;
    if-eqz p2, :cond_2

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .local v6, "errMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mob/tools/network/KVPair;

    .local v13, "p":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v0, v13, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v13, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v13    # "p":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    :cond_1
    new-instance v21, Lcom/mob/tools/utils/Hashon;

    invoke-direct/range {v21 .. v21}, Lcom/mob/tools/utils/Hashon;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    .end local v6    # "errMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    .local v12, "os":Ljava/io/OutputStream;
    invoke-virtual/range {v16 .. v16}, Lcom/mob/tools/network/StringPart;->toInputStream()Ljava/io/InputStream;

    move-result-object v9

    .local v9, "is":Ljava/io/InputStream;
    const/high16 v21, 0x10000

    move/from16 v0, v21

    new-array v4, v0, [B

    .local v4, "buf":[B
    invoke-virtual {v9, v4}, Ljava/io/InputStream;->read([B)I

    move-result v11

    .local v11, "len":I
    :goto_2
    if-lez v11, :cond_3

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v12, v4, v0, v11}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v9, v4}, Ljava/io/InputStream;->read([B)I

    move-result v11

    goto :goto_2

    :cond_3
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    const/4 v14, 0x0

    .local v14, "resp":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    .local v17, "status":I
    const/16 v21, 0xc8

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    const/16 v21, 0xc9

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    :cond_4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .local v15, "sb":Ljava/lang/StringBuilder;
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    const-string v22, "utf-8"

    invoke-static/range {v22 .. v22}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v10, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .local v10, "isr":Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v3, "br":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .local v20, "txt":Ljava/lang/String;
    :goto_3
    if-eqz v20, :cond_6

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    if-lez v21, :cond_5

    const/16 v21, 0xa

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "use time: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    sub-long v23, v23, v18

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object v14

    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v10    # "isr":Ljava/io/InputStreamReader;
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .end local v20    # "txt":Ljava/lang/String;
    :cond_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v21

    const-string v22, "utf-8"

    invoke-static/range {v22 .. v22}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v10, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .restart local v10    # "isr":Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .restart local v3    # "br":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "txt":Ljava/lang/String;
    :goto_4
    if-eqz v20, :cond_9

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    if-lez v21, :cond_8

    const/16 v21, 0xa

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    goto :goto_4

    :cond_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .restart local v6    # "errMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v21, "error"

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v21, "status"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v21, Ljava/lang/Throwable;

    new-instance v22, Lcom/mob/tools/utils/Hashon;

    invoke-direct/range {v22 .. v22}, Lcom/mob/tools/utils/Hashon;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v21
.end method

.method public rawGet(Ljava/lang/String;Lcom/mob/tools/network/RawNetworkCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .locals 14
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/mob/tools/network/RawNetworkCallback;
    .param p3, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .local v7, "time":J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "rawGet: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-object/from16 v0, p3

    invoke-direct {p0, p1, v0}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .local v2, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .local v6, "status":I
    const/16 v10, 0xc8

    if-ne v6, v10, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Lcom/mob/tools/network/RawNetworkCallback;->onResponse(Ljava/io/InputStream;)V

    :cond_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "use time: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v7

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .local v5, "sb":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v10

    const-string v11, "utf-8"

    invoke-static {v11}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-direct {v4, v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .local v4, "isr":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v1, "br":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, "txt":Ljava/lang/String;
    :goto_0
    if-eqz v9, :cond_3

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_2

    const/16 v10, 0xa

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .local v3, "errMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v10, "error"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "status"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Ljava/lang/Throwable;

    new-instance v11, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v11}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v11, v3}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public rawPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/HTTPPart;Lcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .locals 17
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "data"    # Lcom/mob/tools/network/HTTPPart;
    .param p4, "callback"    # Lcom/mob/tools/network/HttpResponseCallback;
    .param p5, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/HTTPPart;",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p2, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .local v11, "time":J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "rawpost: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v14, v15}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .local v4, "conn":Ljava/net/HttpURLConnection;
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mob/tools/network/KVPair;

    .local v5, "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v14, v5, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    iget-object v13, v5, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v4, v14, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v5    # "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .local v9, "os":Ljava/io/OutputStream;
    invoke-virtual/range {p3 .. p3}, Lcom/mob/tools/network/HTTPPart;->toInputStream()Ljava/io/InputStream;

    move-result-object v7

    .local v7, "is":Ljava/io/InputStream;
    const/high16 v13, 0x10000

    new-array v3, v13, [B

    .local v3, "buf":[B
    invoke-virtual {v7, v3}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, "len":I
    :goto_1
    if-lez v8, :cond_1

    const/4 v13, 0x0

    invoke-virtual {v9, v3, v13, v8}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v7, v3}, Ljava/io/InputStream;->read([B)I

    move-result v8

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    if-eqz p4, :cond_2

    :try_start_0
    new-instance v13, Lcom/mob/tools/network/HttpConnectionImpl23;

    invoke-direct {v13, v4}, Lcom/mob/tools/network/HttpConnectionImpl23;-><init>(Ljava/net/HttpURLConnection;)V

    move-object/from16 v0, p4

    invoke-interface {v0, v13}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :goto_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "use time: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v11

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v14, v15}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void

    :catch_0
    move-exception v10

    .local v10, "t":Ljava/lang/Throwable;
    :try_start_1
    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v10    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v13

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v13

    :cond_2
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2
.end method

.method public rawPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/HTTPPart;Lcom/mob/tools/network/RawNetworkCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .locals 24
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "data"    # Lcom/mob/tools/network/HTTPPart;
    .param p4, "callback"    # Lcom/mob/tools/network/RawNetworkCallback;
    .param p5, "timeout"    # Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/HTTPPart;",
            "Lcom/mob/tools/network/RawNetworkCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p2, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .local v17, "time":J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "rawpost: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .local v5, "conn":Ljava/net/HttpURLConnection;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mob/tools/network/KVPair;

    .local v7, "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v0, v7, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v7, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v7    # "header":Lcom/mob/tools/network/KVPair;, "Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    .local v13, "os":Ljava/io/OutputStream;
    invoke-virtual/range {p3 .. p3}, Lcom/mob/tools/network/HTTPPart;->toInputStream()Ljava/io/InputStream;

    move-result-object v10

    .local v10, "is":Ljava/io/InputStream;
    const/high16 v20, 0x10000

    move/from16 v0, v20

    new-array v4, v0, [B

    .local v4, "buf":[B
    invoke-virtual {v10, v4}, Ljava/io/InputStream;->read([B)I

    move-result v12

    .local v12, "len":I
    :goto_1
    if-lez v12, :cond_1

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v4, v0, v12}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v10, v4}, Ljava/io/InputStream;->read([B)I

    move-result v12

    goto :goto_1

    :cond_1
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v15

    .local v15, "status":I
    const/16 v20, 0xc8

    move/from16 v0, v20

    if-ne v15, v0, :cond_5

    if-eqz p4, :cond_4

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .local v9, "in":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p4

    invoke-interface {v0, v9}, Lcom/mob/tools/network/RawNetworkCallback;->onResponse(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_2

    :try_start_1
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_2
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .end local v9    # "in":Ljava/io/InputStream;
    :goto_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "use time: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v17

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void

    .restart local v9    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v16

    .local v16, "t":Ljava/lang/Throwable;
    :try_start_2
    throw v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v16    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v20

    if-eqz v9, :cond_3

    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_4
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v20

    .end local v9    # "in":Ljava/io/InputStream;
    :cond_4
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .local v14, "sb":Ljava/lang/StringBuilder;
    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v20

    const-string v21, "utf-8"

    invoke-static/range {v21 .. v21}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v11, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .local v11, "isr":Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v3, "br":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    .local v19, "txt":Ljava/lang/String;
    :goto_5
    if-eqz v19, :cond_7

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-lez v20, :cond_6

    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    goto :goto_5

    :cond_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .local v6, "errMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v20, "error"

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v20, "status"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v20, Ljava/lang/Throwable;

    new-instance v21, Lcom/mob/tools/utils/Hashon;

    invoke-direct/range {v21 .. v21}, Lcom/mob/tools/utils/Hashon;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v20

    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v6    # "errMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11    # "isr":Ljava/io/InputStreamReader;
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .end local v19    # "txt":Ljava/lang/String;
    .restart local v9    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v20

    goto/16 :goto_2

    :catch_2
    move-exception v21

    goto :goto_4
.end method
