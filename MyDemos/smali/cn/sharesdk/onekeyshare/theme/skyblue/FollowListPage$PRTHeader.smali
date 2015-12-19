.class Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;
.super Landroid/widget/LinearLayout;
.source "FollowListPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PRTHeader"
.end annotation


# instance fields
.field private ivArrow:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$RotateImageView;

.field private pbRefreshing:Landroid/widget/ProgressBar;

.field private tvHeader:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v11, 0x10

    const/4 v10, 0x1

    const/4 v9, -0x2

    .line 361
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 362
    invoke-virtual {p0, v10}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;->setOrientation(I)V

    .line 364
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 365
    .local v2, "llInner":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 367
    .local v3, "lpInner":Landroid/widget/LinearLayout$LayoutParams;
    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 368
    invoke-virtual {p0, v2, v3}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    new-instance v7, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$RotateImageView;

    invoke-direct {v7, p1}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$RotateImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;->ivArrow:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$RotateImageView;

    .line 371
    const-string v7, "ssdk_oks_ptr_ptr"

    invoke-static {p1, v7}, Lcn/sharesdk/framework/utils/ShareSDKR;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 372
    .local v6, "resId":I
    if-lez v6, :cond_0

    .line 373
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;->ivArrow:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$RotateImageView;

    invoke-virtual {v7, v6}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$RotateImageView;->setImageResource(I)V

    .line 375
    :cond_0
    const/16 v7, 0x20

    invoke-static {p1, v7}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v1

    .line 376
    .local v1, "dp_32":I
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 377
    .local v4, "lpIv":Landroid/widget/LinearLayout$LayoutParams;
    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 378
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;->ivArrow:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$RotateImageView;

    invoke-virtual {v2, v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    new-instance v7, Landroid/widget/ProgressBar;

    invoke-direct {v7, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;->pbRefreshing:Landroid/widget/ProgressBar;

    .line 381
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;->pbRefreshing:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;->pbRefreshing:Landroid/widget/ProgressBar;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 384
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;->tvHeader:Landroid/widget/TextView;

    .line 385
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;->tvHeader:Landroid/widget/TextView;

    const/high16 v8, 0x41900000

    invoke-virtual {v7, v10, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 386
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;->tvHeader:Landroid/widget/TextView;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 387
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;->getContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0xa

    invoke-static {v7, v8}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 388
    .local v0, "dp_10":I
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;->tvHeader:Landroid/widget/TextView;

    invoke-virtual {v7, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 389
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;->tvHeader:Landroid/widget/TextView;

    const/high16 v8, -0x1000000

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 390
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 392
    .local v5, "lpTv":Landroid/widget/LinearLayout$LayoutParams;
    iput v11, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 393
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;->tvHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    return-void
.end method


# virtual methods
.method public onPullDown(I)V
    .locals 5
    .param p1, "percent"    # I

    .prologue
    const/16 v4, 0x64

    .line 397
    if-le p1, v4, :cond_3

    .line 398
    add-int/lit8 v2, p1, -0x64

    mul-int/lit16 v2, v2, 0xb4

    div-int/lit8 v0, v2, 0x14

    .line 399
    .local v0, "degree":I
    const/16 v2, 0xb4

    if-le v0, v2, :cond_0

    .line 400
    const/16 v0, 0xb4

    .line 402
    :cond_0
    if-gez v0, :cond_1

    .line 403
    const/4 v0, 0x0

    .line 405
    :cond_1
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;->ivArrow:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$RotateImageView;

    invoke-virtual {v2, v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$RotateImageView;->setRotation(I)V

    .line 410
    .end local v0    # "degree":I
    :goto_0
    if-ge p1, v4, :cond_4

    .line 411
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ssdk_oks_pull_to_refresh"

    invoke-static {v2, v3}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 412
    .local v1, "resId":I
    if-lez v1, :cond_2

    .line 413
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;->tvHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 421
    :cond_2
    :goto_1
    return-void

    .line 407
    .end local v1    # "resId":I
    :cond_3
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;->ivArrow:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$RotateImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$RotateImageView;->setRotation(I)V

    goto :goto_0

    .line 416
    :cond_4
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ssdk_oks_release_to_refresh"

    invoke-static {v2, v3}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 417
    .restart local v1    # "resId":I
    if-lez v1, :cond_2

    .line 418
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;->tvHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public onRequest()V
    .locals 3

    .prologue
    .line 424
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;->ivArrow:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$RotateImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$RotateImageView;->setVisibility(I)V

    .line 425
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;->pbRefreshing:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 426
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ssdk_oks_refreshing"

    invoke-static {v1, v2}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 427
    .local v0, "resId":I
    if-lez v0, :cond_0

    .line 428
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;->tvHeader:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 430
    :cond_0
    return-void
.end method

.method public reverse()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;->pbRefreshing:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;->ivArrow:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$RotateImageView;

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$RotateImageView;->setRotation(I)V

    .line 435
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;->ivArrow:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$RotateImageView;->setVisibility(I)V

    .line 436
    return-void
.end method
