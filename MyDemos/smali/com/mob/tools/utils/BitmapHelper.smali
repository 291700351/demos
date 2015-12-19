.class public Lcom/mob/tools/utils/BitmapHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blur(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # I
    .param p2, "scale"    # I

    .prologue
    const/high16 v12, 0x3f800000

    const/4 v11, 0x0

    const/high16 v10, 0x3f000000

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .local v7, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .local v1, "height":I
    int-to-float v8, p1

    int-to-float v9, p2

    div-float/2addr v8, v9

    add-float/2addr v8, v10

    float-to-int v5, v8

    .local v5, "scaledRadius":I
    int-to-float v8, v7

    int-to-float v9, p2

    div-float/2addr v8, v9

    add-float/2addr v8, v10

    float-to-int v6, v8

    .local v6, "scaledWidth":I
    int-to-float v8, v1

    int-to-float v9, p2

    div-float/2addr v8, v9

    add-float/2addr v8, v10

    float-to-int v4, v8

    .local v4, "scaledHeight":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "overlay":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v0, "canvas":Landroid/graphics/Canvas;
    int-to-float v8, p2

    div-float v8, v12, v8

    int-to-float v9, p2

    div-float v9, v12, v9

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->scale(FF)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .local v3, "paint":Landroid/graphics/Paint;
    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setFlags(I)V

    invoke-virtual {v0, p0, v11, v11, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v8, 0x1

    invoke-static {v2, v5, v8}, Lcom/mob/tools/utils/BitmapHelper;->blur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    return-object v2
.end method

.method private static blur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 42
    .param p0, "sentBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # I
    .param p2, "canReuseInBitmap"    # Z

    .prologue
    if-eqz p2, :cond_0

    move-object/from16 v2, p0

    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ge v0, v4, :cond_1

    const/4 v2, 0x0

    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .local v5, "w":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .local v9, "h":I
    mul-int v4, v5, v9

    new-array v3, v4, [I

    .local v3, "pix":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v36, v5, -0x1

    .local v36, "wm":I
    add-int/lit8 v21, v9, -0x1

    .local v21, "hm":I
    mul-int v35, v5, v9

    .local v35, "wh":I
    add-int v4, p1, p1

    add-int/lit8 v14, v4, 0x1

    .local v14, "div":I
    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .local v24, "r":[I
    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .local v17, "g":[I
    move/from16 v0, v35

    new-array v10, v0, [I

    .local v10, "b":[I
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v34, v0

    .local v34, "vmin":[I
    add-int/lit8 v4, v14, 0x1

    shr-int/lit8 v15, v4, 0x1

    .local v15, "divsum":I
    mul-int/2addr v15, v15

    mul-int/lit16 v4, v15, 0x100

    new-array v0, v4, [I

    move-object/from16 v16, v0

    .local v16, "dv":[I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_2
    mul-int/lit16 v4, v15, 0x100

    move/from16 v0, v22

    if-ge v0, v4, :cond_2

    div-int v4, v22, v15

    aput v4, v16, v22

    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    :cond_2
    const/16 v39, 0x0

    .local v39, "yi":I
    move/from16 v41, v39

    .local v41, "yw":I
    const/4 v4, 0x3

    filled-new-array {v14, v4}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [[I

    .local v31, "stack":[[I
    add-int/lit8 v25, p1, 0x1

    .local v25, "r1":I
    const/16 v38, 0x0

    .local v38, "y":I
    :goto_3
    move/from16 v0, v38

    if-ge v0, v9, :cond_7

    const/4 v13, 0x0

    .local v13, "bsum":I
    move/from16 v20, v13

    .local v20, "gsum":I
    move/from16 v29, v13

    .local v29, "rsum":I
    move v12, v13

    .local v12, "boutsum":I
    move/from16 v19, v13

    .local v19, "goutsum":I
    move/from16 v28, v13

    .local v28, "routsum":I
    move v11, v13

    .local v11, "binsum":I
    move/from16 v18, v13

    .local v18, "ginsum":I
    move/from16 v27, v13

    .local v27, "rinsum":I
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v22, v0

    :goto_4
    move/from16 v0, v22

    move/from16 v1, p1

    if-gt v0, v1, :cond_4

    const/4 v4, 0x0

    move/from16 v0, v22

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v0, v36

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v39

    aget v23, v3, v4

    .local v23, "p":I
    add-int v4, v22, p1

    aget-object v30, v31, v4

    .local v30, "sir":[I
    const/4 v4, 0x0

    const/high16 v6, 0xff0000

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x10

    aput v6, v30, v4

    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x8

    aput v6, v30, v4

    const/4 v4, 0x2

    move/from16 v0, v23

    and-int/lit16 v6, v0, 0xff

    aput v6, v30, v4

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v26, v25, v4

    .local v26, "rbs":I
    const/4 v4, 0x0

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int v29, v29, v4

    const/4 v4, 0x1

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int v20, v20, v4

    const/4 v4, 0x2

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int/2addr v13, v4

    if-lez v22, :cond_3

    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    :goto_5
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    :cond_3
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    goto :goto_5

    .end local v23    # "p":I
    .end local v26    # "rbs":I
    .end local v30    # "sir":[I
    :cond_4
    move/from16 v32, p1

    .local v32, "stackpointer":I
    const/16 v37, 0x0

    .local v37, "x":I
    :goto_6
    move/from16 v0, v37

    if-ge v0, v5, :cond_6

    aget v4, v16, v29

    aput v4, v24, v39

    aget v4, v16, v20

    aput v4, v17, v39

    aget v4, v16, v13

    aput v4, v10, v39

    sub-int v29, v29, v28

    sub-int v20, v20, v19

    sub-int/2addr v13, v12

    sub-int v4, v32, p1

    add-int v33, v4, v14

    .local v33, "stackstart":I
    rem-int v4, v33, v14

    aget-object v30, v31, v4

    .restart local v30    # "sir":[I
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v28, v28, v4

    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v19, v19, v4

    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v12, v4

    if-nez v38, :cond_5

    add-int v4, v37, p1

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v36

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v34, v37

    :cond_5
    aget v4, v34, v37

    add-int v4, v4, v41

    aget v23, v3, v4

    .restart local v23    # "p":I
    const/4 v4, 0x0

    const/high16 v6, 0xff0000

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x10

    aput v6, v30, v4

    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x8

    aput v6, v30, v4

    const/4 v4, 0x2

    move/from16 v0, v23

    and-int/lit16 v6, v0, 0xff

    aput v6, v30, v4

    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    add-int v29, v29, v27

    add-int v20, v20, v18

    add-int/2addr v13, v11

    add-int/lit8 v4, v32, 0x1

    rem-int v32, v4, v14

    rem-int v4, v32, v14

    aget-object v30, v31, v4

    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v27, v27, v4

    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v18, v18, v4

    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v11, v4

    add-int/lit8 v39, v39, 0x1

    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_6

    .end local v23    # "p":I
    .end local v30    # "sir":[I
    .end local v33    # "stackstart":I
    :cond_6
    add-int v41, v41, v5

    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_3

    .end local v11    # "binsum":I
    .end local v12    # "boutsum":I
    .end local v13    # "bsum":I
    .end local v18    # "ginsum":I
    .end local v19    # "goutsum":I
    .end local v20    # "gsum":I
    .end local v27    # "rinsum":I
    .end local v28    # "routsum":I
    .end local v29    # "rsum":I
    .end local v32    # "stackpointer":I
    .end local v37    # "x":I
    :cond_7
    const/16 v37, 0x0

    .restart local v37    # "x":I
    :goto_7
    move/from16 v0, v37

    if-ge v0, v5, :cond_d

    const/4 v13, 0x0

    .restart local v13    # "bsum":I
    move/from16 v20, v13

    .restart local v20    # "gsum":I
    move/from16 v29, v13

    .restart local v29    # "rsum":I
    move v12, v13

    .restart local v12    # "boutsum":I
    move/from16 v19, v13

    .restart local v19    # "goutsum":I
    move/from16 v28, v13

    .restart local v28    # "routsum":I
    move v11, v13

    .restart local v11    # "binsum":I
    move/from16 v18, v13

    .restart local v18    # "ginsum":I
    move/from16 v27, v13

    .restart local v27    # "rinsum":I
    move/from16 v0, p1

    neg-int v4, v0

    mul-int v40, v4, v5

    .local v40, "yp":I
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v22, v0

    :goto_8
    move/from16 v0, v22

    move/from16 v1, p1

    if-gt v0, v1, :cond_a

    const/4 v4, 0x0

    move/from16 v0, v40

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v39, v4, v37

    add-int v4, v22, p1

    aget-object v30, v31, v4

    .restart local v30    # "sir":[I
    const/4 v4, 0x0

    aget v6, v24, v39

    aput v6, v30, v4

    const/4 v4, 0x1

    aget v6, v17, v39

    aput v6, v30, v4

    const/4 v4, 0x2

    aget v6, v10, v39

    aput v6, v30, v4

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v26, v25, v4

    .restart local v26    # "rbs":I
    aget v4, v24, v39

    mul-int v4, v4, v26

    add-int v29, v29, v4

    aget v4, v17, v39

    mul-int v4, v4, v26

    add-int v20, v20, v4

    aget v4, v10, v39

    mul-int v4, v4, v26

    add-int/2addr v13, v4

    if-lez v22, :cond_9

    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    :goto_9
    move/from16 v0, v22

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    add-int v40, v40, v5

    :cond_8
    add-int/lit8 v22, v22, 0x1

    goto :goto_8

    :cond_9
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    goto :goto_9

    .end local v26    # "rbs":I
    .end local v30    # "sir":[I
    :cond_a
    move/from16 v39, v37

    move/from16 v32, p1

    .restart local v32    # "stackpointer":I
    const/16 v38, 0x0

    :goto_a
    move/from16 v0, v38

    if-ge v0, v9, :cond_c

    const/high16 v4, -0x1000000

    aget v6, v3, v39

    and-int/2addr v4, v6

    aget v6, v16, v29

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    aget v6, v16, v20

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    aget v6, v16, v13

    or-int/2addr v4, v6

    aput v4, v3, v39

    sub-int v29, v29, v28

    sub-int v20, v20, v19

    sub-int/2addr v13, v12

    sub-int v4, v32, p1

    add-int v33, v4, v14

    .restart local v33    # "stackstart":I
    rem-int v4, v33, v14

    aget-object v30, v31, v4

    .restart local v30    # "sir":[I
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v28, v28, v4

    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v19, v19, v4

    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v12, v4

    if-nez v37, :cond_b

    add-int v4, v38, v25

    move/from16 v0, v21

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/2addr v4, v5

    aput v4, v34, v38

    :cond_b
    aget v4, v34, v38

    add-int v23, v37, v4

    .restart local v23    # "p":I
    const/4 v4, 0x0

    aget v6, v24, v23

    aput v6, v30, v4

    const/4 v4, 0x1

    aget v6, v17, v23

    aput v6, v30, v4

    const/4 v4, 0x2

    aget v6, v10, v23

    aput v6, v30, v4

    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    add-int v29, v29, v27

    add-int v20, v20, v18

    add-int/2addr v13, v11

    add-int/lit8 v4, v32, 0x1

    rem-int v32, v4, v14

    aget-object v30, v31, v32

    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v27, v27, v4

    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v18, v18, v4

    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v11, v4

    add-int v39, v39, v5

    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_a

    .end local v23    # "p":I
    .end local v30    # "sir":[I
    .end local v33    # "stackstart":I
    :cond_c
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_7

    .end local v11    # "binsum":I
    .end local v12    # "boutsum":I
    .end local v13    # "bsum":I
    .end local v18    # "ginsum":I
    .end local v19    # "goutsum":I
    .end local v20    # "gsum":I
    .end local v27    # "rinsum":I
    .end local v28    # "routsum":I
    .end local v29    # "rsum":I
    .end local v32    # "stackpointer":I
    .end local v40    # "yp":I
    :cond_d
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_1
.end method

.method private static bytesStartWith([B[B)Z
    .locals 5
    .param p0, "target"    # [B
    .param p1, "prefix"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    array-length v3, p0

    array-length v4, p1

    if-ge v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_0

    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static captureView(Landroid/view/View;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "orginal"    # Landroid/graphics/Bitmap;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v5, p1

    sub-int v4, v5, p3

    .local v4, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v5, p2

    sub-int v1, v5, p4

    .local v1, "height":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ne v1, v5, :cond_0

    .end local p0    # "orginal":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .restart local p0    # "orginal":Landroid/graphics/Bitmap;
    :cond_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .local v3, "paint":Landroid/graphics/Paint;
    neg-int v5, p1

    int-to-float v5, v5

    neg-int v6, p2

    int-to-float v6, v6

    invoke-virtual {v0, p0, v5, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object p0, v2

    goto :goto_0
.end method

.method public static downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    .local v0, "network":Lcom/mob/tools/network/NetworkHelper;
    const-string v3, "images"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/network/NetworkHelper;->downloadCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static fixRect([I[I)[I
    .locals 8
    .param p0, "src"    # [I
    .param p1, "target"    # [I

    .prologue
    const/high16 v7, 0x3f000000

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x2

    new-array v0, v3, [I

    .local v0, "dst":[I
    aget v3, p0, v5

    int-to-float v3, v3

    aget v4, p0, v6

    int-to-float v4, v4

    div-float v1, v3, v4

    .local v1, "rs":F
    aget v3, p1, v5

    int-to-float v3, v3

    aget v4, p1, v6

    int-to-float v4, v4

    div-float v2, v3, v4

    .local v2, "rt":F
    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    aget v3, p1, v5

    aput v3, v0, v5

    aget v3, p0, v6

    int-to-float v3, v3

    aget v4, p1, v5

    int-to-float v4, v4

    mul-float/2addr v3, v4

    aget v4, p0, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v3, v7

    float-to-int v3, v3

    aput v3, v0, v6

    :goto_0
    return-object v0

    :cond_0
    aget v3, p1, v6

    aput v3, v0, v6

    aget v3, p0, v5

    int-to-float v3, v3

    aget v4, p1, v6

    int-to-float v4, v4

    mul-float/2addr v3, v4

    aget v4, p0, v6

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v3, v7

    float-to-int v3, v3

    aput v3, v0, v5

    goto :goto_0
.end method

.method public static fixRect_2([I[I)[I
    .locals 8
    .param p0, "src"    # [I
    .param p1, "target"    # [I

    .prologue
    const/high16 v7, 0x3f000000

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x2

    new-array v0, v3, [I

    .local v0, "dst":[I
    aget v3, p0, v5

    int-to-float v3, v3

    aget v4, p0, v6

    int-to-float v4, v4

    div-float v1, v3, v4

    .local v1, "rs":F
    aget v3, p1, v5

    int-to-float v3, v3

    aget v4, p1, v6

    int-to-float v4, v4

    div-float v2, v3, v4

    .local v2, "rt":F
    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    aget v3, p1, v6

    aput v3, v0, v6

    aget v3, p0, v5

    int-to-float v3, v3

    aget v4, p1, v6

    int-to-float v4, v4

    mul-float/2addr v3, v4

    aget v4, p0, v6

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v3, v7

    float-to-int v3, v3

    aput v3, v0, v5

    :goto_0
    return-object v0

    :cond_0
    aget v3, p1, v5

    aput v3, v0, v5

    aget v3, p0, v6

    int-to-float v3, v3

    aget v4, p1, v5

    int-to-float v4, v4

    mul-float/2addr v3, v4

    aget v4, p0, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v3, v7

    float-to-int v3, v3

    aput v3, v0, v6

    goto :goto_0
.end method

.method public static getBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-static {p0, p1}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getBitmap(Ljava/io/File;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "inSampleSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-static {v1, p1}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/io/InputStream;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_0
.end method

.method public static getBitmap(Ljava/io/InputStream;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "inSampleSize"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    if-nez p0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .local v0, "opt":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "inSampleSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static getBmpFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .local v2, "pathLower":Ljava/lang/String;
    const-string v3, "png"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .local v0, "format":Landroid/graphics/Bitmap$CompressFormat;
    :goto_0
    return-object v0

    .end local v0    # "format":Landroid/graphics/Bitmap$CompressFormat;
    :cond_1
    const-string v3, "jpg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "jpeg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "bmp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "tif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .restart local v0    # "format":Landroid/graphics/Bitmap$CompressFormat;
    goto :goto_0

    .end local v0    # "format":Landroid/graphics/Bitmap$CompressFormat;
    :cond_3
    invoke-static {p0}, Lcom/mob/tools/utils/BitmapHelper;->getMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "mime":Ljava/lang/String;
    const-string v3, "png"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "gif"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .restart local v0    # "format":Landroid/graphics/Bitmap$CompressFormat;
    goto :goto_0

    .end local v0    # "format":Landroid/graphics/Bitmap$CompressFormat;
    :cond_5
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .restart local v0    # "format":Landroid/graphics/Bitmap$CompressFormat;
    goto :goto_0
.end method

.method public static getBmpFormat([B)Landroid/graphics/Bitmap$CompressFormat;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    invoke-static {p0}, Lcom/mob/tools/utils/BitmapHelper;->getMime([B)Ljava/lang/String;

    move-result-object v1

    .local v1, "mime":Ljava/lang/String;
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .local v0, "format":Landroid/graphics/Bitmap$CompressFormat;
    if-eqz v1, :cond_1

    const-string v2, "png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :cond_1
    return-object v0
.end method

.method private static getMime(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .local v2, "fis":Ljava/io/FileInputStream;
    const/16 v3, 0x8

    new-array v0, v3, [B

    .local v0, "bytes":[B
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-static {v0}, Lcom/mob/tools/utils/BitmapHelper;->getMime([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .end local v0    # "bytes":[B
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static getMime([B)Ljava/lang/String;
    .locals 10
    .param p0, "bytes"    # [B

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x4

    new-array v2, v8, [B

    fill-array-data v2, :array_0

    .local v2, "jpeg":[B
    new-array v3, v8, [B

    fill-array-data v3, :array_1

    .local v3, "jpeg2":[B
    invoke-static {p0, v2}, Lcom/mob/tools/utils/BitmapHelper;->bytesStartWith([B[B)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p0, v3}, Lcom/mob/tools/utils/BitmapHelper;->bytesStartWith([B[B)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    const-string v7, "jpg"

    :goto_0
    return-object v7

    :cond_1
    new-array v4, v8, [B

    fill-array-data v4, :array_2

    .local v4, "png":[B
    invoke-static {p0, v4}, Lcom/mob/tools/utils/BitmapHelper;->bytesStartWith([B[B)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "png"

    goto :goto_0

    :cond_2
    const-string v7, "GIF"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .local v1, "gif":[B
    invoke-static {p0, v1}, Lcom/mob/tools/utils/BitmapHelper;->bytesStartWith([B[B)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "gif"

    goto :goto_0

    :cond_3
    const-string v7, "BM"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .local v0, "bmp":[B
    invoke-static {p0, v0}, Lcom/mob/tools/utils/BitmapHelper;->bytesStartWith([B[B)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "bmp"

    goto :goto_0

    :cond_4
    new-array v5, v9, [B

    fill-array-data v5, :array_3

    .local v5, "tiff":[B
    new-array v6, v9, [B

    fill-array-data v6, :array_4

    .local v6, "tiff2":[B
    invoke-static {p0, v5}, Lcom/mob/tools/utils/BitmapHelper;->bytesStartWith([B[B)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {p0, v6}, Lcom/mob/tools/utils/BitmapHelper;->bytesStartWith([B[B)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    const-string v7, "tif"

    goto :goto_0

    :cond_6
    const/4 v7, 0x0

    goto :goto_0

    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
        -0x20t
    .end array-data

    :array_1
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
        -0x1ft
    .end array-data

    :array_2
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
    .end array-data

    :array_3
    .array-data 1
        0x49t
        0x49t
        0x2at
    .end array-data

    :array_4
    .array-data 1
        0x4dt
        0x4dt
        0x2at
    .end array-data
.end method

.method public static isBlackBitmap(Landroid/graphics/Bitmap;)Z
    .locals 12
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v2, v11

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    .local v1, "pixels":[I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v10, 0x0

    .local v10, "rgb":I
    const/4 v8, 0x0

    .local v8, "found":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v0, v1

    if-ge v9, v0, :cond_3

    aget v0, v1, v9

    const v3, 0xffffff

    and-int v10, v0, v3

    if-eqz v10, :cond_4

    const/4 v8, 0x1

    :cond_3
    if-nez v8, :cond_1

    move v2, v11

    goto :goto_0

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method public static mixAlpha(II)I
    .locals 10
    .param p0, "frontARGB"    # I
    .param p1, "backRGB"    # I

    .prologue
    const/high16 v9, 0xff0000

    const v8, 0xff00

    ushr-int/lit8 v3, p0, 0x18

    .local v3, "fa":I
    and-int v7, v9, p0

    ushr-int/lit8 v6, v7, 0x10

    .local v6, "fr":I
    and-int v7, v8, p0

    ushr-int/lit8 v5, v7, 0x8

    .local v5, "fg":I
    and-int/lit16 v4, p0, 0xff

    .local v4, "fb":I
    and-int v7, v9, p1

    ushr-int/lit8 v2, v7, 0x10

    .local v2, "br":I
    and-int v7, v8, p1

    ushr-int/lit8 v1, v7, 0x8

    .local v1, "bg":I
    and-int/lit16 v0, p1, 0xff

    .local v0, "bb":I
    const/high16 v7, -0x1000000

    mul-int v8, v3, v6

    rsub-int v9, v3, 0xff

    mul-int/2addr v9, v2

    add-int/2addr v8, v9

    div-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    mul-int v8, v3, v5

    rsub-int v9, v3, 0xff

    mul-int/2addr v9, v1

    add-int/2addr v8, v9

    div-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    mul-int v8, v3, v4

    rsub-int v9, v3, 0xff

    mul-int/2addr v9, v0

    add-int/2addr v8, v9

    div-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    return v7
.end method

.method public static roundBitmap(Landroid/graphics/Bitmap;IIFFFF)Landroid/graphics/Bitmap;
    .locals 18
    .param p0, "orginal"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "leftTop"    # F
    .param p4, "rightTop"    # F
    .param p5, "rightBottom"    # F
    .param p6, "leftBottom"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .local v8, "oriWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .local v7, "oriHeight":I
    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v13, "src":Landroid/graphics/Rect;
    move/from16 v0, p1

    if-ne v8, v0, :cond_0

    move/from16 v0, p2

    if-eq v7, v0, :cond_1

    :cond_0
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .local v10, "output":Landroid/graphics/Bitmap;
    :goto_0
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v2, "canvas":Landroid/graphics/Canvas;
    const v3, -0xbdbdbe

    .local v3, "color":I
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .local v11, "paint":Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v5, v14, v15, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v5, "dst":Landroid/graphics/Rect;
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    invoke-virtual {v11, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v14, 0x8

    new-array v9, v14, [F

    const/4 v14, 0x0

    aput p3, v9, v14

    const/4 v14, 0x1

    aput p3, v9, v14

    const/4 v14, 0x2

    aput p4, v9, v14

    const/4 v14, 0x3

    aput p4, v9, v14

    const/4 v14, 0x4

    aput p5, v9, v14

    const/4 v14, 0x5

    aput p5, v9, v14

    const/4 v14, 0x6

    aput p6, v9, v14

    const/4 v14, 0x7

    aput p6, v9, v14

    .local v9, "outerRadii":[F
    new-instance v6, Landroid/graphics/RectF;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v6, v14, v15, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .local v6, "inset":Landroid/graphics/RectF;
    new-instance v12, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v12, v9, v6, v9}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .local v12, "shape":Landroid/graphics/drawable/shapes/RoundRectShape;
    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v4, v12}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .local v4, "draweable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v14, Landroid/graphics/PorterDuffXfermode;

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v14, v15}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v13, v5, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v10

    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "color":I
    .end local v4    # "draweable":Landroid/graphics/drawable/ShapeDrawable;
    .end local v5    # "dst":Landroid/graphics/Rect;
    .end local v6    # "inset":Landroid/graphics/RectF;
    .end local v9    # "outerRadii":[F
    .end local v10    # "output":Landroid/graphics/Bitmap;
    .end local v11    # "paint":Landroid/graphics/Paint;
    .end local v12    # "shape":Landroid/graphics/drawable/shapes/RoundRectShape;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .restart local v10    # "output":Landroid/graphics/Bitmap;
    goto/16 :goto_0
.end method

.method public static saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x50

    invoke-static {p0, p1, v0, v1}, Lcom/mob/tools/utils/BitmapHelper;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p3, "quality"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-string v4, "images"

    invoke-static {p0, v4}, Lcom/mob/tools/utils/R;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "path":Ljava/lang/String;
    const-string v0, ".jpg"

    .local v0, "ext":Ljava/lang/String;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne p2, v4, :cond_0

    const-string v0, ".png"

    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v3, "ss":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v1, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {p1, p2, p3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static saveViewToImage(Landroid/view/View;)Ljava/lang/String;
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .local v1, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .local v0, "height":I
    if-lez v1, :cond_0

    if-lez v0, :cond_0

    invoke-static {p0, v1, v0}, Lcom/mob/tools/utils/BitmapHelper;->saveViewToImage(Landroid/view/View;II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static saveViewToImage(Landroid/view/View;II)Ljava/lang/String;
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-static {p0, p1, p2}, Lcom/mob/tools/utils/BitmapHelper;->captureView(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "screenshot"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "path":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v3, "ss":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v1, "fos":Ljava/io/FileOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static scaleBitmapByHeight(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq p2, v3, :cond_1

    const/4 v2, 0x1

    .local v2, "rec":Z
    :goto_0
    invoke-static {v0, p2}, Lcom/mob/tools/utils/BitmapHelper;->scaleBitmapByHeight(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "dst":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-object v1

    .end local v1    # "dst":Landroid/graphics/Bitmap;
    .end local v2    # "rec":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static scaleBitmapByHeight(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int v0, v1, v2

    .local v0, "width":I
    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method
