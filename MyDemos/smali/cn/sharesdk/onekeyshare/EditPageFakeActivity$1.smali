.class Lcn/sharesdk/onekeyshare/EditPageFakeActivity$1;
.super Landroid/os/AsyncTask;
.source "EditPageFakeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->initImageList(Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageListResultsCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageListResultsCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/sharesdk/onekeyshare/EditPageFakeActivity;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/EditPageFakeActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$1;->this$0:Lcn/sharesdk/onekeyshare/EditPageFakeActivity;

    .line 166
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageListResultsCallback;
    .locals 6
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 168
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$1;->this$0:Lcn/sharesdk/onekeyshare/EditPageFakeActivity;

    # getter for: Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareImageList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->access$0(Lcn/sharesdk/onekeyshare/EditPageFakeActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 186
    const/4 v4, 0x0

    aget-object v4, p1, v4

    check-cast v4, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageListResultsCallback;

    return-object v4

    .line 168
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

    .line 169
    .local v2, "imageInfo":Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;
    iget-object v5, v2, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->bitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_0

    .line 172
    :try_start_0
    iget-object v3, v2, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->srcValue:Ljava/lang/String;

    .line 173
    .local v3, "uri":Ljava/lang/String;
    const-string v5, "http://"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "https://"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 174
    :cond_2
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$1;->this$0:Lcn/sharesdk/onekeyshare/EditPageFakeActivity;

    # getter for: Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->activity:Landroid/app/Activity;
    invoke-static {v5}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->access$1(Lcn/sharesdk/onekeyshare/EditPageFakeActivity;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 176
    :cond_3
    invoke-static {v3}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 177
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 180
    iput-object v0, v2, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$1;->doInBackground([Ljava/lang/Object;)Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageListResultsCallback;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageListResultsCallback;)V
    .locals 1
    .param p1, "callback1"    # Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageListResultsCallback;

    .prologue
    .line 190
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$1;->this$0:Lcn/sharesdk/onekeyshare/EditPageFakeActivity;

    # getter for: Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareImageList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->access$0(Lcn/sharesdk/onekeyshare/EditPageFakeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageListResultsCallback;->onFinish(Ljava/util/ArrayList;)V

    .line 191
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageListResultsCallback;

    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$1;->onPostExecute(Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageListResultsCallback;)V

    return-void
.end method
