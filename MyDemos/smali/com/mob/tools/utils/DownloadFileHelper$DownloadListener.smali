.class public interface abstract Lcom/mob/tools/utils/DownloadFileHelper$DownloadListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/utils/DownloadFileHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadListener"
.end annotation


# virtual methods
.method public abstract onComplete(Ljava/lang/String;)V
.end method

.method public abstract onDownloading(I)V
.end method

.method public abstract onError(Ljava/lang/Throwable;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onStart()V
.end method
