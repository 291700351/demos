.class public Lcom/mob/tools/utils/Data;
.super Ljava/lang/Object;


# static fields
.field private static final CHAT_SET:Ljava/lang/String; = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AES128Decode(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "cipherText"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, "keyBytes":[B
    invoke-static {v0, p1}, Lcom/mob/tools/utils/Data;->AES128Decode([B[B)[B

    move-result-object v1

    .local v1, "plainText":[B
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public static AES128Decode([B[B)[B
    .locals 9
    .param p0, "keyBytes"    # [B
    .param p1, "cipherText"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_1
    new-array v6, v3, [B

    .local v6, "keyBytes16":[B
    array-length v1, p0

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v6, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v7, v6, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .local v7, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v1, "AES/ECB/NoPadding"

    const-string v3, "BC"

    invoke-static {v1, v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v1

    new-array v4, v1, [B

    .local v4, "plainText":[B
    array-length v3, p1

    move-object v1, p1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v8

    .local v8, "ptLength":I
    invoke-virtual {v0, v4, v8}, Ljavax/crypto/Cipher;->doFinal([BI)I

    move-result v1

    add-int/2addr v8, v1

    goto :goto_0
.end method

.method public static AES128Encode(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 10
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v5, 0x10

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_1
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .local v7, "keyBytes":[B
    new-array v8, v5, [B

    .local v8, "keyBytes16":[B
    array-length v3, v7

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v7, v2, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .local v1, "data":[B
    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v9, v8, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .local v9, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES/ECB/PKCS7Padding"

    const-string v5, "BC"

    invoke-static {v3, v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    array-length v3, v1

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v3

    new-array v4, v3, [B

    .local v4, "cipherText":[B
    array-length v3, v1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v6

    .local v6, "ctLength":I
    invoke-virtual {v0, v4, v6}, Ljavax/crypto/Cipher;->doFinal([BI)I

    goto :goto_0
.end method

.method public static AES128Encode([BLjava/lang/String;)[B
    .locals 8
    .param p0, "key"    # [B
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_1
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .local v1, "data":[B
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v7, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .local v7, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES/ECB/PKCS7Padding"

    const-string v5, "BC"

    invoke-static {v3, v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    array-length v3, v1

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v3

    new-array v4, v3, [B

    .local v4, "cipherText":[B
    array-length v3, v1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v6

    .local v6, "ctLength":I
    invoke-virtual {v0, v4, v6}, Ljavax/crypto/Cipher;->doFinal([BI)I

    goto :goto_0
.end method

.method public static Base64AES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {p1, p0}, Lcom/mob/tools/utils/Data;->AES128Encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static CRC32([B)Ljava/lang/String;
    .locals 11
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v10, 0x30

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .local v1, "crc":Ljava/util/zip/CRC32;
    invoke-virtual {v1, p0}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    .local v3, "value":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, "sb":Ljava/lang/StringBuilder;
    const/16 v5, 0x38

    ushr-long v5, v3, v5

    long-to-int v5, v5

    int-to-byte v0, v5

    .local v0, "b":B
    const-string v5, "%02x"

    new-array v6, v9, [Ljava/lang/Object;

    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    ushr-long v5, v3, v10

    long-to-int v5, v5

    int-to-byte v0, v5

    const-string v5, "%02x"

    new-array v6, v9, [Ljava/lang/Object;

    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x28

    ushr-long v5, v3, v5

    long-to-int v5, v5

    int-to-byte v0, v5

    const-string v5, "%02x"

    new-array v6, v9, [Ljava/lang/Object;

    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    ushr-long v5, v3, v5

    long-to-int v5, v5

    int-to-byte v0, v5

    const-string v5, "%02x"

    new-array v6, v9, [Ljava/lang/Object;

    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x18

    ushr-long v5, v3, v5

    long-to-int v5, v5

    int-to-byte v0, v5

    const-string v5, "%02x"

    new-array v6, v9, [Ljava/lang/Object;

    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x10

    ushr-long v5, v3, v5

    long-to-int v5, v5

    int-to-byte v0, v5

    const-string v5, "%02x"

    new-array v6, v9, [Ljava/lang/Object;

    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x8

    ushr-long v5, v3, v5

    long-to-int v5, v5

    int-to-byte v0, v5

    const-string v5, "%02x"

    new-array v6, v9, [Ljava/lang/Object;

    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v5, v3

    int-to-byte v0, v5

    const-string v5, "%02x"

    new-array v6, v9, [Ljava/lang/Object;

    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v10, :cond_0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static MD5(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v2, 0x0

    .local v2, "md5":[B
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-static {v1}, Lcom/mob/tools/utils/Data;->rawMD5(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/mob/tools/utils/HEX;->toHex([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .end local v1    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {p0}, Lcom/mob/tools/utils/Data;->rawMD5(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, "tmp":[B
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/mob/tools/utils/HEX;->toHex([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static MD5([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {p0}, Lcom/mob/tools/utils/Data;->rawMD5([B)[B

    move-result-object v0

    .local v0, "tmp":[B
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/mob/tools/utils/HEX;->toHex([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static SHA1(Ljava/io/File;)[B
    .locals 4
    .param p0, "data"    # Ljava/io/File;

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    .local v2, "sha":[B
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-static {v1}, Lcom/mob/tools/utils/Data;->SHA1(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static SHA1(Ljava/io/InputStream;)[B
    .locals 6
    .param p0, "data"    # Ljava/io/InputStream;

    .prologue
    if-nez p0, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    .local v3, "sha":[B
    const/16 v5, 0x400

    :try_start_0
    new-array v0, v5, [B

    .local v0, "buf":[B
    const-string v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .local v2, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    :goto_1
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v1}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .end local v0    # "buf":[B
    .end local v1    # "len":I
    .end local v2    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v4

    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static SHA1(Ljava/lang/String;)[B
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "utf-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, "data":[B
    invoke-static {v0}, Lcom/mob/tools/utils/Data;->SHA1([B)[B

    move-result-object v1

    goto :goto_0
.end method

.method public static SHA1([B)[B
    .locals 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1
.end method

.method public static base62(J)Ljava/lang/String;
    .locals 8
    .param p0, "value"    # J

    .prologue
    const-wide/16 v6, 0x3e

    const-wide/16 v4, 0x0

    cmp-long v2, p0, v4

    if-nez v2, :cond_0

    const-string v0, "0"

    .local v0, "result":Ljava/lang/String;
    :goto_0
    cmp-long v2, p0, v4

    if-lez v2, :cond_1

    rem-long v2, p0, v6

    long-to-int v1, v2

    .local v1, "v":I
    div-long/2addr p0, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "v":I
    :cond_0
    const-string v0, ""

    goto :goto_0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static byteToHex([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/mob/tools/utils/Data;->byteToHex([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static byteToHex([BII)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .local v0, "buffer":Ljava/lang/StringBuffer;
    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    move v1, p1

    .local v1, "i":I
    :goto_1
    if-ge v1, p2, :cond_1

    const-string v2, "%02x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p0, v1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static rawMD5(Ljava/io/InputStream;)[B
    .locals 6
    .param p0, "data"    # Ljava/io/InputStream;

    .prologue
    if-nez p0, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    .local v3, "md5":[B
    const/16 v5, 0x400

    :try_start_0
    new-array v0, v5, [B

    .local v0, "buf":[B
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .local v2, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    :goto_1
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v1}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .end local v0    # "buf":[B
    .end local v1    # "len":I
    .end local v2    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v4

    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static rawMD5(Ljava/lang/String;)[B
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    .local v1, "md5":[B
    :try_start_0
    const-string v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/Data;->rawMD5([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static rawMD5([B)[B
    .locals 4
    .param p0, "data"    # [B

    .prologue
    if-nez p0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    .local v2, "md5":[B
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lcom/mob/tools/utils/Data;->rawMD5(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static rawRSADecode([B[BI)[B
    .locals 11
    .param p0, "data"    # [B
    .param p1, "privateKey"    # [B
    .param p2, "keySize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-string v9, "RSA"

    invoke-static {v9}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .local v4, "factory":Ljava/security/KeyFactory;
    new-instance v8, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v8, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .local v8, "pkeySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    const-string v9, "RSA"

    invoke-static {v9}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v6

    check-cast v6, Ljava/security/interfaces/RSAPrivateKey;

    .local v6, "key":Ljava/security/interfaces/RSAPrivateKey;
    const-string v9, "RSA/None/PKCS1Padding"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .local v3, "cipher":Ljavax/crypto/Cipher;
    const/4 v9, 0x2

    invoke-virtual {v3, v9, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/4 v7, 0x0

    .local v7, "offSet":I
    div-int/lit8 v1, p2, 0x8

    .local v1, "blockSize":I
    new-instance v0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    invoke-direct {v0}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;-><init>()V

    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    array-length v9, p0

    sub-int/2addr v9, v7

    if-lez v9, :cond_0

    array-length v9, p0

    sub-int/2addr v9, v7

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .local v5, "inputLen":I
    invoke-virtual {v3, p0, v7, v5}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v2

    .local v2, "cache":[B
    const/4 v9, 0x0

    array-length v10, v2

    invoke-virtual {v0, v2, v9, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v7, v1

    goto :goto_0

    .end local v2    # "cache":[B
    .end local v5    # "inputLen":I
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    return-object v9
.end method

.method public static rawRSAEncode([B[BI)[B
    .locals 11
    .param p0, "data"    # [B
    .param p1, "publicKey"    # [B
    .param p2, "keySize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    div-int/lit8 v9, p2, 0x8

    add-int/lit8 v1, v9, -0xb

    .local v1, "blockSize":I
    new-instance v8, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v8, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .local v8, "spec":Ljava/security/spec/X509EncodedKeySpec;
    const-string v9, "RSA"

    invoke-static {v9}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .local v4, "factory":Ljava/security/KeyFactory;
    invoke-virtual {v4, v8}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v6

    check-cast v6, Ljava/security/interfaces/RSAPublicKey;

    .local v6, "key":Ljava/security/interfaces/RSAPublicKey;
    const-string v9, "RSA/None/PKCS1Padding"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .local v3, "cipher":Ljavax/crypto/Cipher;
    const/4 v9, 0x1

    invoke-virtual {v3, v9, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .local v7, "offSet":I
    :goto_0
    array-length v9, p0

    sub-int/2addr v9, v7

    if-lez v9, :cond_0

    array-length v9, p0

    sub-int/2addr v9, v7

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .local v5, "inputLen":I
    invoke-virtual {v3, p0, v7, v5}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v2

    .local v2, "cache":[B
    const/4 v9, 0x0

    array-length v10, v2

    invoke-virtual {v0, v2, v9, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v7, v1

    goto :goto_0

    .end local v2    # "cache":[B
    .end local v5    # "inputLen":I
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    return-object v9
.end method

.method public static urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    :try_start_0
    const-string v1, "utf-8"

    invoke-static {p0, v1}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0    # "text":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "text":Ljava/lang/String;
    :cond_0
    const-string v1, "+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
