.class public Lcom/lb/myapidemo/wechatshare/CommonUtil;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyImgFromDrawable(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawableId"    # I
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 90
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 95
    .local v5, "is":Ljava/io/InputStream;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 97
    .local v6, "rootFile":Ljava/io/File;
    invoke-static {p2}, Lcom/lb/myapidemo/wechatshare/MD5Utils;->digestPassWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 99
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    .local v4, "imgFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 102
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-static {v5}, Lcom/lb/myapidemo/wechatshare/CommonUtil;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 105
    .local v0, "byteArray":[B
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 106
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 111
    if-eqz v3, :cond_0

    .line 113
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 117
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 119
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_1
    move-object v2, v3

    .line 124
    .end local v0    # "byteArray":[B
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local p2    # "fileName":Ljava/lang/String;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    return-object p2

    .line 91
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "imgFile":Ljava/io/File;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "rootFile":Ljava/io/File;
    .restart local p2    # "fileName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e1":Landroid/content/res/Resources$NotFoundException;
    new-instance v7, Landroid/content/res/Resources$NotFoundException;

    const-string v8, "Can\'t find resources from Drawable"

    invoke-direct {v7, v8}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 108
    .end local v1    # "e1":Landroid/content/res/Resources$NotFoundException;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "imgFile":Ljava/io/File;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "rootFile":Ljava/io/File;
    :catch_1
    move-exception v7

    .line 111
    :goto_3
    if-eqz v2, :cond_2

    .line 113
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 117
    :cond_2
    :goto_4
    if-eqz v5, :cond_3

    .line 119
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 124
    :cond_3
    :goto_5
    const-string p2, ""

    goto :goto_2

    .line 110
    :catchall_0
    move-exception v7

    .line 111
    :goto_6
    if-eqz v2, :cond_4

    .line 113
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 117
    :cond_4
    :goto_7
    if-eqz v5, :cond_5

    .line 119
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 123
    :cond_5
    :goto_8
    throw v7

    .line 114
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "byteArray":[B
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v7

    goto :goto_0

    .line 120
    :catch_3
    move-exception v7

    goto :goto_1

    .line 114
    .end local v0    # "byteArray":[B
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v7

    goto :goto_4

    .line 120
    :catch_5
    move-exception v7

    goto :goto_5

    .line 114
    :catch_6
    move-exception v8

    goto :goto_7

    .line 120
    :catch_7
    move-exception v8

    goto :goto_8

    .line 110
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 108
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v7

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3
.end method

.method public static showShare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "imgUrl"    # Ljava/lang/String;
    .param p4, "shareUrl"    # Ljava/lang/String;
    .param p5, "callback"    # Lcn/sharesdk/framework/PlatformActionListener;

    .prologue
    .line 36
    invoke-static {p0}, Lcn/sharesdk/framework/ShareSDK;->initSDK(Landroid/content/Context;)V

    .line 37
    new-instance v2, Lcn/sharesdk/onekeyshare/OnekeyShare;

    invoke-direct {v2}, Lcn/sharesdk/onekeyshare/OnekeyShare;-><init>()V

    .line 39
    .local v2, "oks":Lcn/sharesdk/onekeyshare/OnekeyShare;
    invoke-virtual {v2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->disableSSOWhenAuthorize()V

    .line 42
    invoke-virtual {v2, p1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setTitle(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v2, p2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setText(Ljava/lang/String;)V

    .line 49
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 50
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 52
    .local v3, "rootFile":Ljava/io/File;
    const/high16 v4, 0x7f020000

    const-string v5, "ic_launcher"

    .line 51
    invoke-static {p0, v4, v5}, Lcom/lb/myapidemo/wechatshare/CommonUtil;->copyImgFromDrawable(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    .local v1, "imgFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setImagePath(Ljava/lang/String;)V

    .line 60
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "imgFile":Ljava/io/File;
    .end local v3    # "rootFile":Ljava/io/File;
    :goto_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 61
    const-string v4, "https://www.edianlicai.com"

    invoke-virtual {v2, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setUrl(Ljava/lang/String;)V

    .line 67
    :goto_1
    if-eqz p5, :cond_0

    .line 68
    invoke-virtual {v2, p5}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setCallback(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 72
    :cond_0
    invoke-virtual {v2, p0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->show(Landroid/content/Context;)V

    .line 74
    return-void

    .line 56
    :cond_1
    invoke-virtual {v2, p3}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setImageUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {v2, p4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 5
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 138
    .local v3, "output":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 139
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 140
    .local v2, "len":I
    :goto_0
    const/4 v4, -0x1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ne v4, v2, :cond_0

    .line 144
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 145
    .local v1, "byteArray":[B
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 146
    return-object v1

    .line 141
    .end local v1    # "byteArray":[B
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 142
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    goto :goto_0
.end method
