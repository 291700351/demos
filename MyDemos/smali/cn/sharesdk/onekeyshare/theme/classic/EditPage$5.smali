.class Lcn/sharesdk/onekeyshare/theme/classic/EditPage$5;
.super Ljava/lang/Object;
.source "EditPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getAtLine(Ljava/lang/String;)Landroid/widget/LinearLayout;
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
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$5;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 409
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$5;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;
    invoke-static {v2}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$12(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$5;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;
    invoke-static {v2}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$12(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 410
    new-instance v1, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage;

    invoke-direct {v1}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage;-><init>()V

    .line 411
    .local v1, "subPage":Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage;
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$5;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;
    invoke-static {v2}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$12(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/sharesdk/framework/Platform;

    invoke-virtual {v1, v2}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage;->setPlatform(Lcn/sharesdk/framework/Platform;)V

    .line 412
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$5;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;
    invoke-static {v2}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$3(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$5;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-virtual {v1, v2, v3, v4}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage;->showForResult(Landroid/content/Context;Landroid/content/Intent;Lcom/mob/tools/FakeActivity;)V

    .line 421
    .end local v1    # "subPage":Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage;
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$5;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;
    invoke-static {v2}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$3(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/app/Activity;

    move-result-object v2

    .line 415
    const-string v3, "ssdk_oks_select_one_plat_at_least"

    .line 414
    invoke-static {v2, v3}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 416
    .local v0, "resId":I
    if-lez v0, :cond_0

    .line 417
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$5;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-virtual {v2}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 418
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
