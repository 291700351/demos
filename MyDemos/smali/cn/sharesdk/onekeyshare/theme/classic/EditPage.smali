.class public Lcn/sharesdk/onekeyshare/theme/classic/EditPage;
.super Lcn/sharesdk/onekeyshare/EditPageFakeActivity;
.source "EditPage.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DIM_COLOR:I = 0x7f323232

.field private static final MAX_TEXT_COUNT:I = 0x8c


# instance fields
.field private background:Landroid/graphics/drawable/Drawable;

.field private etContent:Landroid/widget/EditText;

.field private image:Landroid/graphics/Bitmap;

.field private imgInfo:Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

.field private ivImage:Landroid/widget/ImageView;

.field private ivPin:Landroid/widget/ImageView;

.field private llBody:Landroid/widget/LinearLayout;

.field private llPlat:Landroid/widget/LinearLayout;

.field private llTitle:Lcn/sharesdk/framework/TitleLayout;

.field private platformList:[Lcn/sharesdk/framework/Platform;

.field private progressBar:Landroid/widget/ProgressBar;

.field private rlPage:Landroid/widget/RelativeLayout;

.field private rlThumb:Landroid/widget/RelativeLayout;

.field private tvCounter:Landroid/widget/TextView;

.field private views:[Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;[Lcn/sharesdk/framework/Platform;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    return-void
.end method

.method static synthetic access$1(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)[Lcn/sharesdk/framework/Platform;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method static synthetic access$10(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$11(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$12(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Ljava/util/List;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$13(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llPlat:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$14(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V
    .locals 0

    .prologue
    .line 523
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getBackground()V

    return-void
.end method

.method static synthetic access$15(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$16(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->background:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$4(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$5(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivPin:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->imgInfo:Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

    return-object v0
.end method

.method static synthetic access$7(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->removeImage(Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;)V

    return-void
.end method

.method static synthetic access$8(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->imgInfo:Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

    return-void
.end method

.method static synthetic access$9(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->image:Landroid/graphics/Bitmap;

    return-void
.end method

.method private getAtLine(Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 13
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 397
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->isShowAtUserLayout(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 398
    const/4 v2, 0x0

    .line 452
    :goto_0
    return-object v2

    .line 400
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 401
    .local v2, "llAt":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    .line 402
    const/4 v10, -0x2

    .line 401
    invoke-direct {v3, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 403
    .local v3, "lpAt":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x4

    invoke-static {v9, v10}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v9

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 404
    const/16 v9, 0x53

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 405
    const/high16 v9, 0x3f800000

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 406
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    new-instance v9, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$5;

    invoke-direct {v9, p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$5;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 425
    .local v7, "tvAt":Landroid/widget/TextView;
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v10, "ssdk_oks_btn_back_nor"

    invoke-static {v9, v10}, Lcn/sharesdk/framework/utils/ShareSDKR;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 426
    .local v5, "resId":I
    if-lez v5, :cond_1

    .line 427
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 429
    :cond_1
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v9

    const/16 v10, 0x20

    invoke-static {v9, v10}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v1

    .line 430
    .local v1, "dp_32":I
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    const/4 v9, 0x1

    const/high16 v10, 0x41900000

    invoke-virtual {v7, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 432
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getAtUserButtonText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x2

    invoke-static {v9, v10}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 434
    .local v0, "dp_2":I
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 435
    sget-object v9, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 436
    const/high16 v9, -0x1000000

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 437
    const/16 v9, 0x11

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 438
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 440
    new-instance v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 441
    .local v8, "tvName":Landroid/widget/TextView;
    const/4 v9, 0x1

    const/high16 v10, 0x41900000

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 442
    const/high16 v9, -0x1000000

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 443
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v10, "ssdk_oks_list_friends"

    invoke-static {v9, v10}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 444
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v9, v5, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 445
    .local v6, "text":Ljava/lang/String;
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    .line 447
    const/4 v10, -0x2

    .line 446
    invoke-direct {v4, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 448
    .local v4, "lpName":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v9, 0x10

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 449
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private getBackground()V
    .locals 7

    .prologue
    .line 524
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, 0x7f323232

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->background:Landroid/graphics/drawable/Drawable;

    .line 525
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->backgroundView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 527
    :try_start_0
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->backgroundView:Landroid/view/View;

    .line 528
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->backgroundView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->backgroundView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 527
    invoke-static {v3, v4, v5}, Lcom/mob/tools/utils/BitmapHelper;->captureView(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 529
    .local v0, "bgBm":Landroid/graphics/Bitmap;
    const/16 v3, 0x14

    const/16 v4, 0x8

    invoke-static {v0, v3, v4}, Lcom/mob/tools/utils/BitmapHelper;->blur(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 530
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 531
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 530
    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 532
    .local v1, "blurBm":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    .line 533
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->background:Landroid/graphics/drawable/Drawable;

    aput-object v6, v4, v5

    invoke-direct {v3, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 532
    iput-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->background:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    .end local v0    # "bgBm":Landroid/graphics/Bitmap;
    .end local v1    # "blurBm":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    :goto_0
    return-void

    .line 534
    :catch_0
    move-exception v2

    .line 535
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private getBodyBottom()Landroid/widget/LinearLayout;
    .locals 7

    .prologue
    const/4 v6, -0x2

    .line 369
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 370
    .local v1, "llBottom":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    .line 371
    invoke-direct {v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 370
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/sharesdk/framework/Platform;

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getAtLine(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 374
    .local v0, "line":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 379
    :cond_0
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    .line 380
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    const/16 v4, 0x8c

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    const v4, -0x303031

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 382
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    const/4 v4, 0x1

    const/high16 v5, 0x41900000

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 383
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 384
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 386
    .local v2, "lpCounter":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x10

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 387
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 390
    return-object v1
.end method

.method private getImagePin()Landroid/widget/ImageView;
    .locals 7

    .prologue
    const/4 v6, 0x6

    .line 505
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivPin:Landroid/widget/ImageView;

    .line 506
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v5, "ssdk_oks_pin"

    invoke-static {v4, v5}, Lcn/sharesdk/framework/utils/ShareSDKR;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 507
    .local v3, "resId":I
    if-lez v3, :cond_0

    .line 508
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivPin:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 510
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x50

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v1

    .line 511
    .local v1, "dp_80":I
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x24

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 512
    .local v0, "dp_36":I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 514
    .local v2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 515
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getId()I

    move-result v4

    invoke-virtual {v2, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 516
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 517
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivPin:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 518
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivPin:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 520
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivPin:Landroid/widget/ImageView;

    return-object v4
.end method

.method private getMainBody()Landroid/widget/LinearLayout;
    .locals 11

    .prologue
    const/4 v8, -0x1

    const/high16 v10, 0x3f800000

    const/4 v9, -0x2

    .line 245
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 246
    .local v2, "llMainBody":Landroid/widget/LinearLayout;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 247
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 249
    .local v5, "lpMain":Landroid/widget/LinearLayout$LayoutParams;
    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 250
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 251
    .local v0, "dp_4":I
    invoke-virtual {v5, v0, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 252
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 255
    .local v1, "llContent":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 257
    .local v3, "lpContent":Landroid/widget/LinearLayout$LayoutParams;
    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 258
    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    new-instance v6, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    .line 262
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    const/16 v7, 0x33

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setGravity(I)V

    .line 263
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    iget-object v7, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->shareParamMap:Ljava/util/HashMap;

    const-string v8, "text"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 266
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 268
    .local v4, "lpEt":Landroid/widget/LinearLayout$LayoutParams;
    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 269
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 272
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getThumbView()Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 273
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getBodyBottom()Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 275
    return-object v2
.end method

.method private getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "platform"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 542
    if-nez p1, :cond_0

    .line 543
    const-string v1, ""

    .line 547
    :goto_0
    return-object v1

    .line 546
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ssdk_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 547
    .local v0, "resId":I
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getPageBody()Landroid/widget/LinearLayout;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, -0x2

    .line 217
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    .line 218
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setId(I)V

    .line 219
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v4, "ssdk_oks_edittext_back"

    invoke-static {v3, v4}, Lcn/sharesdk/framework/utils/ShareSDKR;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 220
    .local v2, "resId":I
    if-lez v2, :cond_0

    .line 221
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 223
    :cond_0
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 224
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 226
    .local v1, "lpBody":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x5

    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v4}, Lcn/sharesdk/framework/TitleLayout;->getId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 227
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v3}, Lcn/sharesdk/framework/TitleLayout;->getId()I

    move-result v3

    invoke-virtual {v1, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 228
    const/4 v3, 0x7

    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v4}, Lcn/sharesdk/framework/TitleLayout;->getId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 229
    iget-boolean v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->dialogMode:Z

    if-nez v3, :cond_1

    .line 230
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 232
    :cond_1
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 233
    .local v0, "dp_3":I
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 234
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getMainBody()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getSep()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getPlatformList()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 240
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llBody:Landroid/widget/LinearLayout;

    return-object v3
.end method

.method private getPageTitle()Lcn/sharesdk/framework/TitleLayout;
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 188
    new-instance v2, Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/sharesdk/framework/TitleLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    .line 189
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/TitleLayout;->setId(I)V

    .line 194
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v2}, Lcn/sharesdk/framework/TitleLayout;->getBtnBack()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v3, "ssdk_oks_multi_share"

    invoke-static {v2, v3}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 196
    .local v1, "resId":I
    if-lez v1, :cond_0

    .line 197
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v2}, Lcn/sharesdk/framework/TitleLayout;->getTvTitle()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 199
    :cond_0
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v2}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v3, "ssdk_oks_share"

    invoke-static {v2, v3}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 201
    if-lez v1, :cond_1

    .line 202
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v2}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 204
    :cond_1
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v2}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 207
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 208
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 209
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 210
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v2, v0}, Lcn/sharesdk/framework/TitleLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    return-object v2
.end method

.method private getPageView()Landroid/widget/RelativeLayout;
    .locals 6

    .prologue
    .line 160
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    .line 161
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    iget-boolean v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->dialogMode:Z

    if-eqz v4, :cond_0

    .line 163
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 164
    .local v2, "rlDialog":Landroid/widget/RelativeLayout;
    const v4, -0x3fcdcdce

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 165
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 166
    .local v0, "dp_8":I
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/R;->getScreenWidth(Landroid/content/Context;)I

    move-result v4

    mul-int/lit8 v5, v0, 0x2

    sub-int v3, v4, v5

    .line 167
    .local v3, "width":I
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 168
    const/4 v4, -0x2

    .line 167
    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 169
    .local v1, "lpDialog":Landroid/widget/RelativeLayout$LayoutParams;
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 170
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 171
    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 172
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 175
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getPageTitle()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 176
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getPageBody()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 177
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getImagePin()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 183
    .end local v0    # "dp_8":I
    .end local v1    # "lpDialog":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "rlDialog":Landroid/widget/RelativeLayout;
    .end local v3    # "width":I
    :goto_0
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    return-object v4

    .line 179
    :cond_0
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getPageTitle()Lcn/sharesdk/framework/TitleLayout;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 180
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getPageBody()Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 181
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getImagePin()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private getPlatLogo(Lcn/sharesdk/framework/Platform;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "plat"    # Lcn/sharesdk/framework/Platform;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 660
    if-nez p1, :cond_1

    .line 674
    :cond_0
    :goto_0
    return-object v3

    .line 664
    :cond_1
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v0

    .line 665
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 669
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ssdk_oks_logo_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 670
    .local v2, "resName":Ljava/lang/String;
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/sharesdk/framework/utils/ShareSDKR;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 671
    .local v1, "resId":I
    if-lez v1, :cond_0

    .line 672
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method private getPlatformList()Landroid/widget/LinearLayout;
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x0

    const/4 v10, -0x2

    .line 466
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 467
    .local v1, "llToolBar":Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 469
    .local v4, "lpTb":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 472
    .local v7, "tvShareTo":Landroid/widget/TextView;
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v9, "ssdk_oks_share_to"

    invoke-static {v8, v9}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 473
    .local v5, "resId":I
    if-lez v5, :cond_0

    .line 474
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(I)V

    .line 476
    :cond_0
    const v8, -0x303031

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 477
    const/4 v8, 0x1

    const/high16 v9, 0x41900000

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 478
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v8

    const/16 v9, 0x9

    invoke-static {v8, v9}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 479
    .local v0, "dp_9":I
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 481
    .local v2, "lpShareTo":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v8, 0x10

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 482
    invoke-virtual {v2, v0, v11, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 483
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 484
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 486
    new-instance v6, Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 487
    .local v6, "sv":Landroid/widget/HorizontalScrollView;
    invoke-virtual {v6, v11}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 488
    invoke-virtual {v6, v11}, Landroid/widget/HorizontalScrollView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 489
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 491
    .local v3, "lpSv":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 492
    invoke-virtual {v6, v3}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 493
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 495
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llPlat:Landroid/widget/LinearLayout;

    .line 496
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llPlat:Landroid/widget/LinearLayout;

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 497
    invoke-direct {v9, v10, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 496
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 498
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llPlat:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 500
    return-object v1
.end method

.method private getSep()Landroid/view/View;
    .locals 5

    .prologue
    .line 456
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 457
    .local v2, "vSep":Landroid/view/View;
    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 458
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 459
    .local v0, "dp_1":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 460
    .local v1, "lpSep":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 461
    return-object v2
.end method

.method private getThumbView()Landroid/widget/RelativeLayout;
    .locals 17

    .prologue
    .line 280
    new-instance v15, Landroid/widget/RelativeLayout;

    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    .line 281
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x52

    invoke-static/range {v15 .. v16}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v8

    .line 283
    .local v8, "dp_82":I
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x62

    invoke-static/range {v15 .. v16}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v9

    .line 284
    .local v9, "dp_98":I
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 285
    .local v12, "lpThumb":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    invoke-virtual {v15, v12}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    new-instance v15, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    .line 288
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v16, "ssdk_oks_btn_back_nor"

    invoke-static/range {v15 .. v16}, Lcn/sharesdk/framework/utils/ShareSDKR;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    .line 289
    .local v14, "resId":I
    if-lez v14, :cond_0

    .line 290
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {v15, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 292
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    sget-object v16, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->image:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x4

    invoke-static/range {v15 .. v16}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v5

    .line 296
    .local v5, "dp_4":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {v15, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x4a

    invoke-static/range {v15 .. v16}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v6

    .line 298
    .local v6, "dp_74":I
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 300
    .local v11, "lpImage":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v2

    .line 301
    .local v2, "dp_16":I
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x8

    invoke-static/range {v15 .. v16}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v7

    .line 302
    .local v7, "dp_8":I
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v15, v2, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 303
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {v15, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    new-instance v16, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$2;

    invoke-direct/range {v16 .. v17}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$2;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivImage:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 315
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x18

    invoke-static/range {v15 .. v16}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v4

    .line 316
    .local v4, "dp_24":I
    new-instance v15, Landroid/widget/ProgressBar;

    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->progressBar:Landroid/widget/ProgressBar;

    .line 317
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v15, v4, v4, v4, v4}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    .line 318
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v13, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 320
    .local v13, "pb":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v15, v2, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 321
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v15, v13}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->progressBar:Landroid/widget/ProgressBar;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 324
    new-instance v1, Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v1, v15}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 325
    .local v1, "btn":Landroid/widget/Button;
    new-instance v15, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$3;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V

    invoke-virtual {v1, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    const-string v16, "ssdk_oks_img_cancel"

    invoke-static/range {v15 .. v16}, Lcn/sharesdk/framework/utils/ShareSDKR;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    .line 334
    if-lez v14, :cond_1

    .line 335
    invoke-virtual {v1, v14}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 337
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x14

    invoke-static/range {v15 .. v16}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v3

    .line 338
    .local v3, "dp_20":I
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v10, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 340
    .local v10, "lpBtn":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v15, 0xb

    invoke-virtual {v10, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 341
    const/16 v15, 0xc

    invoke-virtual {v10, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 342
    invoke-virtual {v1, v10}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    invoke-virtual {v15, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->haveImage()Z

    move-result v15

    if-nez v15, :cond_2

    .line 346
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 348
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    return-object v15
.end method

.method private hideSoftInput()V
    .locals 4

    .prologue
    .line 701
    :try_start_0
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    .line 702
    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 701
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 703
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 704
    :catch_0
    move-exception v1

    .line 705
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private showThumb()V
    .locals 1

    .prologue
    .line 352
    new-instance v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$4;

    invoke-direct {v0, p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$4;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->initImageList(Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageListResultsCallback;)Z

    .line 366
    return-void
.end method


# virtual methods
.method public afterPlatformListGot()V
    .locals 18

    .prologue
    .line 606
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    if-nez v14, :cond_0

    const/4 v13, 0x0

    .line 607
    .local v13, "size":I
    :goto_0
    new-array v14, v13, [Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    .line 609
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v14

    const/16 v15, 0x18

    invoke-static {v14, v15}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v2

    .line 610
    .local v2, "dp_24":I
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 611
    .local v7, "lpItem":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v14

    const/16 v15, 0x9

    invoke-static {v14, v15}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v3

    .line 612
    .local v3, "dp_9":I
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v14, v15, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 613
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 614
    const/4 v14, -0x1

    const/4 v15, -0x1

    .line 613
    invoke-direct {v8, v14, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 615
    .local v8, "lpMask":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v14, 0x33

    iput v14, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 616
    const/4 v12, 0x0

    .line 617
    .local v12, "selection":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-lt v5, v13, :cond_1

    .line 647
    move v11, v12

    .line 648
    .local v11, "postSel":I
    const/4 v14, 0x0

    const-wide/16 v15, 0x14d

    new-instance v17, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v2, v3}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$6;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;III)V

    invoke-static/range {v14 .. v17}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessageDelayed(IJLandroid/os/Handler$Callback;)Z

    .line 656
    return-void

    .line 606
    .end local v2    # "dp_24":I
    .end local v3    # "dp_9":I
    .end local v5    # "i":I
    .end local v7    # "lpItem":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "lpMask":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "postSel":I
    .end local v12    # "selection":I
    .end local v13    # "size":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    array-length v13, v14

    goto :goto_0

    .line 618
    .restart local v2    # "dp_24":I
    .restart local v3    # "dp_9":I
    .restart local v5    # "i":I
    .restart local v7    # "lpItem":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v8    # "lpMask":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v12    # "selection":I
    .restart local v13    # "size":I
    :cond_1
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v4, v14}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 619
    .local v4, "fl":Landroid/widget/FrameLayout;
    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 620
    add-int/lit8 v14, v13, -0x1

    if-lt v5, v14, :cond_2

    .line 621
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v14}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 623
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llPlat:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 624
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 626
    new-instance v6, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v6, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 627
    .local v6, "iv":Landroid/widget/ImageView;
    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 628
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    aget-object v14, v14, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getPlatLogo(Lcn/sharesdk/framework/Platform;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 629
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 630
    const/4 v15, -0x1

    const/16 v16, -0x1

    invoke-direct/range {v14 .. v16}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 629
    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 631
    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 633
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    new-instance v15, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    aput-object v15, v14, v5

    .line 634
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    aget-object v14, v14, v5

    const v15, -0x30000001

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackgroundColor(I)V

    .line 635
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    aget-object v14, v14, v5

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 636
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    aget-object v14, v14, v5

    invoke-virtual {v14}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v10

    .line 637
    .local v10, "platformName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_4

    .line 643
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    aget-object v14, v14, v5

    invoke-virtual {v14, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 644
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    aget-object v14, v14, v5

    invoke-virtual {v4, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 617
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 637
    :cond_4
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/sharesdk/framework/Platform;

    .line 638
    .local v9, "plat":Lcn/sharesdk/framework/Platform;
    invoke-virtual {v9}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 639
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    aget-object v15, v15, v5

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 640
    move v12, v5

    goto :goto_2
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 690
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 680
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 551
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v4}, Lcn/sharesdk/framework/TitleLayout;->getBtnBack()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 552
    const/4 v1, 0x0

    .line 553
    .local v1, "plat":Lcn/sharesdk/framework/Platform;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    array-length v4, v4

    if-lt v0, v4, :cond_2

    .line 561
    :goto_1
    if-eqz v1, :cond_0

    .line 562
    const/4 v4, 0x5

    invoke-static {v4, v1}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    .line 564
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->finish()V

    .line 602
    .end local v0    # "i":I
    .end local v1    # "plat":Lcn/sharesdk/framework/Platform;
    .end local p1    # "v":Landroid/view/View;
    :cond_1
    :goto_2
    return-void

    .line 554
    .restart local v0    # "i":I
    .restart local v1    # "plat":Lcn/sharesdk/framework/Platform;
    .restart local p1    # "v":Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v5, :cond_3

    .line 555
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    aget-object v1, v4, v0

    .line 556
    goto :goto_1

    .line 553
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 568
    .end local v0    # "i":I
    .end local v1    # "plat":Lcn/sharesdk/framework/Platform;
    :cond_4
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v4}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 569
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 570
    .local v3, "text":Ljava/lang/String;
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->shareParamMap:Ljava/util/HashMap;

    const-string v5, "text"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 573
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    array-length v4, v4

    if-lt v0, v4, :cond_5

    .line 579
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 580
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->setResultAndFinish()V

    goto :goto_2

    .line 574
    :cond_5
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->views:[Landroid/view/View;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_6

    .line 575
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;

    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;

    aget-object v5, v5, v0

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 582
    :cond_7
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    .line 583
    const-string v5, "ssdk_oks_select_one_plat_at_least"

    .line 582
    invoke-static {v4, v5}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 584
    .local v2, "resId":I
    if-lez v2, :cond_1

    .line 585
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 586
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 592
    .end local v0    # "i":I
    .end local v2    # "resId":I
    .end local v3    # "text":Ljava/lang/String;
    :cond_8
    instance-of v4, p1, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_9

    .line 593
    check-cast p1, Landroid/widget/FrameLayout;

    .end local p1    # "v":Landroid/view/View;
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->performClick()Z

    goto/16 :goto_2

    .line 597
    .restart local p1    # "v":Landroid/view/View;
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v5, :cond_a

    .line 598
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 600
    :cond_a
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const-wide/16 v4, 0x3e8

    const v3, 0x7f323232

    .line 715
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 716
    .local v0, "orientation":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 717
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->hideSoftInput()V

    .line 718
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 719
    .local v1, "win":Landroid/view/Window;
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 721
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 722
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    new-instance v3, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$7;

    invoke-direct {v3, p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$7;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 743
    :goto_0
    return-void

    .line 730
    .end local v1    # "win":Landroid/view/Window;
    :cond_0
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->hideSoftInput()V

    .line 731
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 732
    .restart local v1    # "win":Landroid/view/Window;
    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 734
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 735
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;

    new-instance v3, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$8;

    invoke-direct {v3, p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$8;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->shareParamMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->finish()V

    .line 156
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getBackground()V

    .line 118
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getPageView()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 119
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {p0, v0, v2, v1, v2}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 120
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->showThumb()V

    .line 123
    new-instance v0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;

    invoke-direct {v0, p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V

    .line 155
    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;->start()V

    goto :goto_0
.end method

.method public onFinish()Z
    .locals 1

    .prologue
    .line 710
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->hideSoftInput()V

    .line 711
    invoke-super {p0}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->onFinish()Z

    move-result v0

    return v0
.end method

.method public onResult(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 693
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getJoinSelectedUser(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 694
    .local v0, "atText":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 695
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 697
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 683
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    rsub-int v0, v1, 0x8c

    .line 684
    .local v0, "remain":I
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->tvCounter:Landroid/widget/TextView;

    if-lez v0, :cond_0

    const v1, -0x303031

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 686
    return-void

    .line 685
    :cond_0
    const/high16 v1, -0x10000

    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->setActivity(Landroid/app/Activity;)V

    .line 100
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 101
    .local v1, "win":Landroid/view/Window;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 102
    .local v0, "orientation":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 103
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 109
    :goto_0
    return-void

    .line 106
    :cond_0
    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method
