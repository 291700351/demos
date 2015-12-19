.class public Lcom/mob/tools/SSDKWebViewClient;
.super Landroid/webkit/WebViewClient;


# static fields
.field public static final ERROR_AUTHENTICATION:I = -0x4

.field public static final ERROR_BAD_URL:I = -0xc

.field public static final ERROR_CONNECT:I = -0x6

.field public static final ERROR_FAILED_SSL_HANDSHAKE:I = -0xb

.field public static final ERROR_FILE:I = -0xd

.field public static final ERROR_FILE_NOT_FOUND:I = -0xe

.field public static final ERROR_HOST_LOOKUP:I = -0x2

.field public static final ERROR_IO:I = -0x7

.field public static final ERROR_PROXY_AUTHENTICATION:I = -0x5

.field public static final ERROR_REDIRECT_LOOP:I = -0x9

.field public static final ERROR_TIMEOUT:I = -0x8

.field public static final ERROR_TOO_MANY_REQUESTS:I = -0xf

.field public static final ERROR_UNKNOWN:I = -0x1

.field public static final ERROR_UNSUPPORTED_AUTH_SCHEME:I = -0x3

.field public static final ERROR_UNSUPPORTED_SCHEME:I = -0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .prologue
    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "dontResend"    # Landroid/os/Message;
    .param p3, "resend"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p2}, Landroid/webkit/HttpAuthHandler;->cancel()V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v7

    instance-of v7, v7, Landroid/app/Activity;

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mob/tools/utils/DeviceHelper;->getOSLanguage()Ljava/lang/String;

    move-result-object v4

    .local v4, "lang":Ljava/lang/String;
    const-string v7, "zh"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x5

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v8, 0xe

    new-array v8, v8, [C

    fill-array-data v8, :array_0

    invoke-static {v8}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const/16 v8, 0xc

    new-array v8, v8, [C

    fill-array-data v8, :array_1

    invoke-static {v8}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x2

    const/16 v8, 0xe

    new-array v8, v8, [C

    fill-array-data v8, :array_2

    invoke-static {v8}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x3

    const/16 v8, 0xd

    new-array v8, v8, [C

    fill-array-data v8, :array_3

    invoke-static {v8}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x4

    const/16 v8, 0xb

    new-array v8, v8, [C

    fill-array-data v8, :array_4

    invoke-static {v8}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    .local v5, "msg":[Ljava/lang/String;
    const/4 v7, 0x4

    new-array v7, v7, [C

    fill-array-data v7, :array_5

    invoke-static {v7}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v6

    .local v6, "title":Ljava/lang/String;
    const/4 v7, 0x2

    new-array v7, v7, [C

    fill-array-data v7, :array_6

    invoke-static {v7}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    .local v2, "btnOk":Ljava/lang/String;
    const/4 v7, 0x2

    new-array v7, v7, [C

    fill-array-data v7, :array_7

    invoke-static {v7}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    .local v1, "btnCan":Ljava/lang/String;
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    const/4 v7, 0x4

    aget-object v7, v5, v7

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_1
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/mob/tools/SSDKWebViewClient$1;

    invoke-direct {v7, p0, p2}, Lcom/mob/tools/SSDKWebViewClient$1;-><init>(Lcom/mob/tools/SSDKWebViewClient;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v3, v2, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/mob/tools/SSDKWebViewClient$2;

    invoke-direct {v7, p0, p2}, Lcom/mob/tools/SSDKWebViewClient$2;-><init>(Lcom/mob/tools/SSDKWebViewClient;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v3, v1, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "btnCan":Ljava/lang/String;
    .end local v2    # "btnOk":Ljava/lang/String;
    .end local v3    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "lang":Ljava/lang/String;
    .end local v5    # "msg":[Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    :goto_2
    return-void

    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v4    # "lang":Ljava/lang/String;
    :cond_0
    const/4 v7, 0x5

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Certificate is untrusted. Do you want to continue anyway?"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-string v8, "Certificate has expired. Do you want to continue anyway?"

    aput-object v8, v5, v7

    const/4 v7, 0x2

    const-string v8, "Certificate ID is mismatched. Do you want to continue anyway?"

    aput-object v8, v5, v7

    const/4 v7, 0x3

    const-string v8, "Certificate is not yet valid. Do you want to continue anyway?"

    aput-object v8, v5, v7

    const/4 v7, 0x4

    const-string v8, "Certificate error. Do you want to continue anyway?"

    aput-object v8, v5, v7

    .restart local v5    # "msg":[Ljava/lang/String;
    const-string v6, "SSL Certificate Error"

    .restart local v6    # "title":Ljava/lang/String;
    const-string v2, "Yes"

    .restart local v2    # "btnOk":Ljava/lang/String;
    const-string v1, "No"

    .restart local v1    # "btnCan":Ljava/lang/String;
    goto :goto_0

    .restart local v3    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_0
    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :pswitch_1
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :pswitch_2
    const/4 v7, 0x2

    aget-object v7, v5, v7

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :pswitch_3
    const/4 v7, 0x3

    aget-object v7, v5, v7

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "btnCan":Ljava/lang/String;
    .end local v2    # "btnOk":Ljava/lang/String;
    .end local v3    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "lang":Ljava/lang/String;
    .end local v5    # "msg":[Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    goto :goto_2

    nop

    :array_0
    .array-data 2
        0x4e0ds
        0x53d7s
        0x4fe1s
        0x4efbs
        0x7684s
        -0x743fs
        0x4e66s
        0x3002s
        0x4f60s
        -0x767fs
        0x7ee7s
        0x7eeds
        0x5417s
        -0xe1s
    .end array-data

    :array_1
    .array-data 2
        -0x743fs
        0x4e66s
        0x5df2s
        -0x7039s
        0x671fs
        0x3002s
        0x4f60s
        -0x767fs
        0x7ee7s
        0x7eeds
        0x5417s
        -0xe1s
    .end array-data

    :array_2
    .array-data 2
        -0x743fs
        0x4e66s
        0x49s
        0x44s
        0x4e0ds
        0x5339s
        -0x6eb3s
        0x3002s
        0x4f60s
        -0x767fs
        0x7ee7s
        0x7eeds
        0x5417s
        -0xe1s
    .end array-data

    :array_3
    .array-data 2
        -0x743fs
        0x4e66s
        0x5c1as
        0x672as
        0x751fs
        0x6548s
        0x3002s
        0x4f60s
        -0x767fs
        0x7ee7s
        0x7eeds
        0x5417s
        -0xe1s
    .end array-data

    nop

    :array_4
    .array-data 2
        -0x743fs
        0x4e66s
        -0x6ae7s
        -0x7411s
        0x3002s
        0x4f60s
        -0x767fs
        0x7ee7s
        0x7eeds
        0x5417s
        -0xe1s
    .end array-data

    nop

    :array_5
    .array-data 2
        -0x743fs
        0x4e66s
        -0x6ae7s
        -0x7411s
    .end array-data

    :array_6
    .array-data 2
        0x7ee7s
        0x7eeds
    .end array-data

    :array_7
    .array-data 2
        0x505cs
        0x6b62s
    .end array-data

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F

    .prologue
    return-void
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "cancelMsg"    # Landroid/os/Message;
    .param p3, "continueMsg"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    return-void
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return v0
.end method
