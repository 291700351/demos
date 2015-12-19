.class public Lcom/lb/libexplosion/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final DENSITY:F

.field private static final sCanvas:Landroid/graphics/Canvas;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 16
    sput v0, Lcom/lb/libexplosion/util/Utils;->DENSITY:F

    .line 18
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/lb/libexplosion/util/Utils;->sCanvas:Landroid/graphics/Canvas;

    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static createBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 32
    instance-of v3, p0, Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    move-object v3, p0

    .line 46
    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 47
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    .line 48
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 62
    :cond_0
    :goto_0
    return-object v0

    .line 51
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 53
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    .line 52
    invoke-static {v3, v4, v5, v6}, Lcom/lb/libexplosion/util/Utils;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 54
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 55
    sget-object v4, Lcom/lb/libexplosion/util/Utils;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v4

    .line 56
    :try_start_0
    sget-object v1, Lcom/lb/libexplosion/util/Utils;->sCanvas:Landroid/graphics/Canvas;

    .line 57
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 58
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 59
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 55
    monitor-exit v4

    goto :goto_0

    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static createBitmapSafely(IILandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;
    .param p3, "retryCount"    # I

    .prologue
    .line 78
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 85
    :goto_0
    return-object v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 81
    if-lez p3, :cond_0

    .line 82
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 83
    add-int/lit8 v1, p3, -0x1

    invoke-static {p0, p1, p2, v1}, Lcom/lb/libexplosion/util/Utils;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 85
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static dp2Px(I)I
    .locals 2
    .param p0, "dp"    # I

    .prologue
    .line 21
    int-to-float v0, p0

    sget v1, Lcom/lb/libexplosion/util/Utils;->DENSITY:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method
