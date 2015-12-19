.class public Lcom/lb/myapidemo/wechatshare/MD5Utils;
.super Ljava/lang/Object;
.source "MD5Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static digestPassWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .local v6, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 25
    .local v4, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 26
    .local v0, "digest":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v0

    if-lt v3, v7, :cond_0

    .line 38
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 42
    .end local v0    # "digest":[B
    .end local v3    # "i":I
    .end local v4    # "messageDigest":Ljava/security/MessageDigest;
    :goto_1
    return-object v7

    .line 27
    .restart local v0    # "digest":[B
    .restart local v3    # "i":I
    .restart local v4    # "messageDigest":Ljava/security/MessageDigest;
    :cond_0
    aget-byte v7, v0, v3

    and-int/lit16 v5, v7, 0xff

    .line 29
    .local v5, "result":I
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "hexString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_1

    .line 34
    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    :cond_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 39
    .end local v0    # "digest":[B
    .end local v2    # "hexString":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "messageDigest":Ljava/security/MessageDigest;
    .end local v5    # "result":I
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 42
    const/4 v7, 0x0

    goto :goto_1
.end method
