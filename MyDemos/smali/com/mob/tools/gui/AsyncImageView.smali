.class public Lcom/mob/tools/gui/AsyncImageView;
.super Landroid/widget/ImageView;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;


# static fields
.field private static final MSG_IMG_GOT:I = 0x1

.field private static final rnd:Ljava/util/Random;


# instance fields
.field private defaultBm:Landroid/graphics/Bitmap;

.field private defaultRes:I

.field private rect:[F

.field private scaleToCrop:Z

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/mob/tools/gui/AsyncImageView;->rnd:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/mob/tools/gui/AsyncImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/mob/tools/gui/AsyncImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/mob/tools/gui/AsyncImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getSize()[I
    .locals 5

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/mob/tools/gui/AsyncImageView;->getWidth()I

    move-result v2

    .local v2, "width":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/AsyncImageView;->getHeight()I

    move-result v0

    .local v0, "height":I
    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/mob/tools/gui/AsyncImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_1

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    if-eqz v2, :cond_2

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0, v4, v4}, Lcom/mob/tools/gui/AsyncImageView;->measure(II)V

    invoke-virtual {p0}, Lcom/mob/tools/gui/AsyncImageView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/mob/tools/gui/AsyncImageView;->getMeasuredHeight()I

    move-result v0

    :cond_3
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    return-object v3
.end method

.method private goCrop(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v13, 0x2

    const/high16 v12, 0x40000000

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v7, v8

    .local v7, "width":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v1, v8

    .local v1, "height":F
    cmpl-float v8, v7, v9

    if-eqz v8, :cond_0

    cmpl-float v8, v1, v9

    if-nez v8, :cond_1

    :cond_0
    move-object v0, p1

    .end local p1    # "bm":Landroid/graphics/Bitmap;
    .local v0, "bm":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local p1    # "bm":Landroid/graphics/Bitmap;
    :cond_1
    invoke-direct {p0}, Lcom/mob/tools/gui/AsyncImageView;->getSize()[I

    move-result-object v5

    .local v5, "size":[I
    aget v8, v5, v10

    if-eqz v8, :cond_2

    aget v8, v5, v11

    if-nez v8, :cond_3

    :cond_2
    move-object v0, p1

    .end local p1    # "bm":Landroid/graphics/Bitmap;
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    goto :goto_0

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local p1    # "bm":Landroid/graphics/Bitmap;
    :cond_3
    aget v8, v5, v11

    int-to-float v8, v8

    mul-float/2addr v8, v7

    aget v9, v5, v10

    int-to-float v9, v9

    div-float v3, v8, v9

    .local v3, "respHeight":F
    cmpl-float v8, v3, v1

    if-nez v8, :cond_4

    move-object v0, p1

    .end local p1    # "bm":Landroid/graphics/Bitmap;
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    goto :goto_0

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local p1    # "bm":Landroid/graphics/Bitmap;
    :cond_4
    const/4 v8, 0x4

    new-array v2, v8, [I

    .local v2, "rect":[I
    cmpg-float v8, v3, v1

    if-gez v8, :cond_5

    sub-float v8, v1, v3

    div-float/2addr v8, v12

    float-to-int v8, v8

    aput v8, v2, v11

    const/4 v8, 0x3

    aget v9, v2, v11

    aput v9, v2, v8

    :goto_1
    const/4 v8, 0x0

    :try_start_0
    aget v8, v2, v8

    const/4 v9, 0x1

    aget v9, v2, v9

    const/4 v10, 0x2

    aget v10, v2, v10

    const/4 v11, 0x3

    aget v11, v2, v11

    invoke-static {p1, v8, v9, v10, v11}, Lcom/mob/tools/utils/BitmapHelper;->cropBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_2
    move-object v0, p1

    .end local p1    # "bm":Landroid/graphics/Bitmap;
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    goto :goto_0

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local p1    # "bm":Landroid/graphics/Bitmap;
    :cond_5
    aget v8, v5, v10

    int-to-float v8, v8

    mul-float/2addr v8, v1

    aget v9, v5, v11

    int-to-float v9, v9

    div-float v4, v8, v9

    .local v4, "respWidth":F
    sub-float v8, v7, v4

    div-float/2addr v8, v12

    float-to-int v8, v8

    aput v8, v2, v10

    aget v8, v2, v10

    aput v8, v2, v13

    goto :goto_1

    .end local v4    # "respWidth":F
    :catch_0
    move-exception v6

    .local v6, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private goRound(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/mob/tools/gui/AsyncImageView;->getSize()[I

    move-result-object v7

    .local v7, "size":[I
    const/4 v0, 0x0

    aget v1, v7, v0

    const/4 v0, 0x1

    aget v2, v7, v0

    iget-object v0, p0, Lcom/mob/tools/gui/AsyncImageView;->rect:[F

    const/4 v3, 0x0

    aget v3, v0, v3

    iget-object v0, p0, Lcom/mob/tools/gui/AsyncImageView;->rect:[F

    const/4 v4, 0x1

    aget v4, v0, v4

    iget-object v0, p0, Lcom/mob/tools/gui/AsyncImageView;->rect:[F

    const/4 v5, 0x2

    aget v5, v0, v5

    iget-object v0, p0, Lcom/mob/tools/gui/AsyncImageView;->rect:[F

    const/4 v6, 0x3

    aget v6, v0, v6

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/mob/tools/utils/BitmapHelper;->roundBitmap(Landroid/graphics/Bitmap;IIFFFF)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .end local v7    # "size":[I
    :goto_0
    return-object p1

    :catch_0
    move-exception v8

    .local v8, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p0}, Lcom/mob/tools/gui/AsyncImageView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/AsyncImageView;->setBackgroundColor(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/mob/tools/gui/BitmapProcessor;->prepare(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;I)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "defaultRes"    # I

    .prologue
    iput-object p1, p0, Lcom/mob/tools/gui/AsyncImageView;->url:Ljava/lang/String;

    iput p2, p0, Lcom/mob/tools/gui/AsyncImageView;->defaultRes:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/mob/tools/gui/AsyncImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/mob/tools/gui/BitmapProcessor;->getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/AsyncImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    if-lez p2, :cond_2

    invoke-virtual {p0, p2}, Lcom/mob/tools/gui/AsyncImageView;->setImageResource(I)V

    :cond_2
    invoke-static {p1, p0}, Lcom/mob/tools/gui/BitmapProcessor;->process(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;)V

    goto :goto_0
.end method

.method public execute(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "defaultBm"    # Landroid/graphics/Bitmap;

    .prologue
    iput-object p1, p0, Lcom/mob/tools/gui/AsyncImageView;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/mob/tools/gui/AsyncImageView;->defaultBm:Landroid/graphics/Bitmap;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/mob/tools/gui/AsyncImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/mob/tools/gui/BitmapProcessor;->getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/AsyncImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, p2}, Lcom/mob/tools/gui/AsyncImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    invoke-static {p1, p0}, Lcom/mob/tools/gui/BitmapProcessor;->process(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v4, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    aget-object v1, v2, v3

    .local v1, "url":Ljava/lang/Object;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    aget-object v0, v2, v4

    .local v0, "bm":Ljava/lang/Object;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/mob/tools/gui/AsyncImageView;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v0, Landroid/graphics/Bitmap;

    .end local v0    # "bm":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/AsyncImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .end local v1    # "url":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v3

    .restart local v0    # "bm":Ljava/lang/Object;
    .restart local v1    # "url":Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lcom/mob/tools/gui/AsyncImageView;->defaultBm:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mob/tools/gui/AsyncImageView;->defaultBm:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/mob/tools/gui/AsyncImageView;->defaultBm:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2}, Lcom/mob/tools/gui/AsyncImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/mob/tools/gui/AsyncImageView;->defaultRes:I

    invoke-virtual {p0, v2}, Lcom/mob/tools/gui/AsyncImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onImageGot(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .local v2, "shownImage":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/mob/tools/gui/AsyncImageView;->url:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, p2

    :cond_0
    if-eqz v2, :cond_2

    iget-boolean v3, p0, Lcom/mob/tools/gui/AsyncImageView;->scaleToCrop:Z

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lcom/mob/tools/gui/AsyncImageView;->goCrop(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_1
    iget-object v3, p0, Lcom/mob/tools/gui/AsyncImageView;->rect:[F

    if-eqz v3, :cond_2

    invoke-direct {p0, v2}, Lcom/mob/tools/gui/AsyncImageView;->goRound(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_2
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .local v1, "msg":Landroid/os/Message;
    iput v5, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object v2, v3, v5

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v3, Lcom/mob/tools/gui/AsyncImageView;->rnd:Ljava/util/Random;

    const/16 v4, 0x12c

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .local v0, "delay":I
    int-to-long v3, v0

    invoke-static {v1, v3, v4, p0}, Lcom/mob/tools/utils/UIHandler;->sendMessageDelayed(Landroid/os/Message;JLandroid/os/Handler$Callback;)Z

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    iget-boolean v0, p0, Lcom/mob/tools/gui/AsyncImageView;->scaleToCrop:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mob/tools/gui/AsyncImageView;->goCrop(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/mob/tools/gui/AsyncImageView;->rect:[F

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/mob/tools/gui/AsyncImageView;->goRound(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/mob/tools/gui/AsyncImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setRound(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/mob/tools/gui/AsyncImageView;->setRound(FFFF)V

    return-void
.end method

.method public setRound(FFFF)V
    .locals 2
    .param p1, "leftTop"    # F
    .param p2, "rightTop"    # F
    .param p3, "rightBottom"    # F
    .param p4, "leftBottom"    # F

    .prologue
    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    const/4 v1, 0x3

    aput p4, v0, v1

    iput-object v0, p0, Lcom/mob/tools/gui/AsyncImageView;->rect:[F

    return-void
.end method

.method public setScaleToCropCenter(Z)V
    .locals 0
    .param p1, "scaleToCrop"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/mob/tools/gui/AsyncImageView;->scaleToCrop:Z

    return-void
.end method
