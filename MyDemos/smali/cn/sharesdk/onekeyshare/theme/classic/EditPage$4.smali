.class Lcn/sharesdk/onekeyshare/theme/classic/EditPage$4;
.super Ljava/lang/Object;
.source "EditPage.java"

# interfaces
.implements Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageListResultsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->showThumb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$4;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;>;"
    const/4 v2, 0x0

    .line 355
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$4;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

    invoke-static {v1, v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$8(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;)V

    .line 359
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$4;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$4;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->imgInfo:Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;
    invoke-static {v1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$6(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

    move-result-object v1

    iget-object v1, v1, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$9(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;Landroid/graphics/Bitmap;)V

    .line 360
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$4;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$4(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$4;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivPin:Landroid/widget/ImageView;
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$5(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$4;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$10(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$4;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$11(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$4;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->image:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$2(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
