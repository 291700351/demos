.class Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;
.super Landroid/widget/LinearLayout;
.source "PlatformGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GridView"
.end annotation


# instance fields
.field private beans:[Ljava/lang/Object;

.field private callback:Landroid/view/View$OnClickListener;

.field private lines:I

.field private platformAdapter:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;


# direct methods
.method public constructor <init>(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;)V
    .locals 1
    .param p1, "platformAdapter"    # Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;

    .prologue
    .line 363
    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->platformGridView:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;
    invoke-static {p1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->access$0(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;)Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 364
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->platformAdapter:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;

    .line 365
    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->callback:Landroid/view/View$OnClickListener;
    invoke-static {p1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->access$1(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->callback:Landroid/view/View$OnClickListener;

    .line 366
    return-void
.end method

.method private getIcon(Lcn/sharesdk/framework/Platform;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "plat"    # Lcn/sharesdk/framework/Platform;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 466
    if-nez p1, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-object v3

    .line 470
    :cond_1
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 475
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "logo_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 476
    .local v2, "resName":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/sharesdk/framework/utils/ShareSDKR;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 477
    .local v1, "resId":I
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method private getName(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;
    .locals 4
    .param p1, "plat"    # Lcn/sharesdk/framework/Platform;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 482
    if-nez p1, :cond_0

    .line 483
    const-string v2, ""

    .line 495
    :goto_0
    return-object v2

    .line 486
    :cond_0
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 488
    const-string v2, ""

    goto :goto_0

    .line 491
    :cond_1
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 492
    .local v1, "resId":I
    if-lez v1, :cond_2

    .line 493
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 495
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getView(ILandroid/view/View$OnClickListener;Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 11
    .param p1, "position"    # I
    .param p2, "ocL"    # Landroid/view/View$OnClickListener;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 421
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    aget-object v9, v9, p1

    instance-of v9, v9, Lcn/sharesdk/framework/Platform;

    if-eqz v9, :cond_0

    .line 422
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    aget-object v9, v9, p1

    check-cast v9, Lcn/sharesdk/framework/Platform;

    invoke-direct {p0, v9}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getIcon(Lcn/sharesdk/framework/Platform;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 423
    .local v5, "logo":Landroid/graphics/Bitmap;
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    aget-object v9, v9, p1

    check-cast v9, Lcn/sharesdk/framework/Platform;

    invoke-direct {p0, v9}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getName(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;

    move-result-object v2

    .line 424
    .local v2, "label":Ljava/lang/String;
    move-object v3, p2

    .line 431
    .local v3, "listener":Landroid/view/View$OnClickListener;
    :goto_0
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 432
    .local v4, "ll":Landroid/widget/LinearLayout;
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 434
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 435
    .local v1, "iv":Landroid/widget/ImageView;
    const/4 v9, 0x5

    invoke-static {p3, v9}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 436
    .local v0, "dp_5":I
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 437
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 438
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    .line 439
    const/4 v10, -0x2

    .line 438
    invoke-direct {v6, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 440
    .local v6, "lpIv":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v6, v0, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 441
    const/4 v9, 0x1

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 442
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 444
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 446
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 447
    .local v8, "tv":Landroid/widget/TextView;
    const/high16 v9, -0x1000000

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 448
    const/4 v9, 0x1

    const/high16 v10, 0x41600000

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 449
    invoke-virtual {v8}, Landroid/widget/TextView;->setSingleLine()V

    .line 450
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 451
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    .line 452
    const/4 v10, -0x2

    .line 451
    invoke-direct {v7, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 453
    .local v7, "lpTv":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v9, 0x1

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 454
    const/high16 v9, 0x3f800000

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 455
    const/4 v9, 0x0

    invoke-virtual {v7, v0, v9, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 456
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 459
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    return-object v4

    .line 426
    .end local v0    # "dp_5":I
    .end local v1    # "iv":Landroid/widget/ImageView;
    .end local v2    # "label":Ljava/lang/String;
    .end local v3    # "listener":Landroid/view/View$OnClickListener;
    .end local v4    # "ll":Landroid/widget/LinearLayout;
    .end local v5    # "logo":Landroid/graphics/Bitmap;
    .end local v6    # "lpIv":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "lpTv":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "tv":Landroid/widget/TextView;
    :cond_0
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    aget-object v9, v9, p1

    check-cast v9, Lcn/sharesdk/onekeyshare/CustomerLogo;

    iget-object v5, v9, Lcn/sharesdk/onekeyshare/CustomerLogo;->enableLogo:Landroid/graphics/Bitmap;

    .line 427
    .restart local v5    # "logo":Landroid/graphics/Bitmap;
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    aget-object v9, v9, p1

    check-cast v9, Lcn/sharesdk/onekeyshare/CustomerLogo;

    iget-object v2, v9, Lcn/sharesdk/onekeyshare/CustomerLogo;->label:Ljava/lang/String;

    .line 428
    .restart local v2    # "label":Ljava/lang/String;
    move-object v3, p2

    .restart local v3    # "listener":Landroid/view/View$OnClickListener;
    goto :goto_0
.end method

.method private init()V
    .locals 14

    .prologue
    const/4 v13, -0x1

    const/4 v10, 0x0

    .line 375
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x5

    invoke-static {v11, v12}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v1

    .line 376
    .local v1, "dp_5":I
    invoke-virtual {p0, v10, v1, v10, v1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->setPadding(IIII)V

    .line 377
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->setOrientation(I)V

    .line 379
    iget-object v11, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    if-nez v11, :cond_1

    move v9, v10

    .line 380
    .local v9, "size":I
    :goto_0
    iget-object v11, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->platformAdapter:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->platformGridView:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;
    invoke-static {v11}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;->access$0(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;)Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    move-result-object v11

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I
    invoke-static {v11}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$4(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)I

    move-result v0

    .line 381
    .local v0, "COLUMN_PER_LINE":I
    div-int v5, v9, v0

    .line 382
    .local v5, "lineSize":I
    rem-int v11, v9, v0

    if-lez v11, :cond_0

    .line 383
    add-int/lit8 v5, v5, 0x1

    .line 385
    :cond_0
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 387
    .local v8, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v11, 0x3f800000

    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 388
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v11, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->lines:I

    if-lt v2, v11, :cond_2

    .line 414
    return-void

    .line 379
    .end local v0    # "COLUMN_PER_LINE":I
    .end local v2    # "i":I
    .end local v5    # "lineSize":I
    .end local v8    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "size":I
    :cond_1
    iget-object v11, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    array-length v9, v11

    goto :goto_0

    .line 389
    .restart local v0    # "COLUMN_PER_LINE":I
    .restart local v2    # "i":I
    .restart local v5    # "lineSize":I
    .restart local v8    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v9    # "size":I
    :cond_2
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v7, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 390
    .local v7, "llLine":Landroid/widget/LinearLayout;
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    invoke-virtual {v7, v1, v10, v1, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 392
    invoke-virtual {p0, v7}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->addView(Landroid/view/View;)V

    .line 394
    if-lt v2, v5, :cond_4

    .line 388
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 398
    :cond_4
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v0, :cond_3

    .line 399
    mul-int v11, v2, v0

    add-int v3, v11, v4

    .line 400
    .local v3, "index":I
    if-lt v3, v9, :cond_5

    .line 401
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 402
    .local v6, "llItem":Landroid/widget/LinearLayout;
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 398
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 407
    .end local v6    # "llItem":Landroid/widget/LinearLayout;
    :cond_5
    iget-object v11, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->callback:Landroid/view/View$OnClickListener;

    .line 408
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 407
    invoke-direct {p0, v3, v11, v12}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->getView(ILandroid/view/View$OnClickListener;Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 409
    .restart local v6    # "llItem":Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    aget-object v11, v11, v3

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 410
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3
.end method


# virtual methods
.method public setData(I[Ljava/lang/Object;)V
    .locals 0
    .param p1, "lines"    # I
    .param p2, "beans"    # [Ljava/lang/Object;

    .prologue
    .line 369
    iput p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->lines:I

    .line 370
    iput-object p2, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->beans:[Ljava/lang/Object;

    .line 371
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;->init()V

    .line 372
    return-void
.end method
