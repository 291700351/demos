.class public Lcn/sharesdk/framework/statistics/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcn/sharesdk/framework/statistics/a;


# instance fields
.field private b:Lcn/sharesdk/framework/statistics/c;

.field private c:Lcn/sharesdk/framework/statistics/a/c;

.field private d:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcn/sharesdk/framework/statistics/c;

    invoke-direct {v0, p1}, Lcn/sharesdk/framework/statistics/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/framework/statistics/a;->b:Lcn/sharesdk/framework/statistics/c;

    invoke-static {p1}, Lcn/sharesdk/framework/statistics/a/c;->a(Landroid/content/Context;)Lcn/sharesdk/framework/statistics/a/c;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/statistics/a;->c:Lcn/sharesdk/framework/statistics/a/c;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcn/sharesdk/framework/statistics/a;
    .locals 1

    sget-object v0, Lcn/sharesdk/framework/statistics/a;->a:Lcn/sharesdk/framework/statistics/a;

    if-nez v0, :cond_0

    new-instance v0, Lcn/sharesdk/framework/statistics/a;

    invoke-direct {v0, p0}, Lcn/sharesdk/framework/statistics/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/sharesdk/framework/statistics/a;->a:Lcn/sharesdk/framework/statistics/a;

    :cond_0
    sget-object v0, Lcn/sharesdk/framework/statistics/a;->a:Lcn/sharesdk/framework/statistics/a;

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;Lcn/sharesdk/framework/statistics/b;)Ljava/lang/String;
    .locals 4

    const-string v0, "bm_tmp"

    const-string v1, ".png"

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcn/sharesdk/framework/statistics/a;->a(Ljava/lang/String;Lcn/sharesdk/framework/statistics/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcn/sharesdk/framework/statistics/b;)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Lcom/mob/tools/utils/BitmapHelper;->getBmpFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v2

    const/high16 v0, 0x43480000

    sget-object v3, Lcn/sharesdk/framework/statistics/b;->b:Lcn/sharesdk/framework/statistics/b;

    if-ne p2, v3, :cond_2

    const/high16 v0, 0x44160000

    :cond_2
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lt v4, v5, :cond_4

    int-to-float v6, v5

    cmpl-float v6, v6, v0

    if-lez v6, :cond_4

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    div-float v0, v3, v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    :goto_1
    if-gtz v0, :cond_3

    move v0, v1

    :cond_3
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "bm_tmp2"

    invoke-static {v3, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x50

    invoke-virtual {v0, v2, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/sharesdk/framework/statistics/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    if-ge v4, v5, :cond_5

    int-to-float v4, v4

    cmpl-float v4, v4, v0

    if-lez v4, :cond_5

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v3, v3

    div-float v0, v3, v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    goto :goto_1

    :cond_5
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/statistics/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v6, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/a;->b:Lcn/sharesdk/framework/statistics/c;

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/framework/statistics/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "surl"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "source"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v6

    :goto_3
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "> SERVER_SHORT_LINK_URL content after replace link ===  %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto/16 :goto_0
.end method

.method private a(Lcn/sharesdk/framework/statistics/b/b;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/a;->c:Lcn/sharesdk/framework/statistics/a/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/statistics/a/c;->c()Z

    move-result v0

    iget-object v1, p1, Lcn/sharesdk/framework/statistics/b/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcn/sharesdk/framework/statistics/b/b;->f:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mob/tools/utils/Data;->Base64AES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/sharesdk/framework/statistics/b/b;->c:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-object v2, p1, Lcn/sharesdk/framework/statistics/b/b;->d:Ljava/lang/String;

    iput-object v2, p1, Lcn/sharesdk/framework/statistics/b/b;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Lcn/sharesdk/framework/statistics/b/f;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/a;->c:Lcn/sharesdk/framework/statistics/a/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/statistics/a/c;->e()I

    move-result v0

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/a;->c:Lcn/sharesdk/framework/statistics/a/c;

    invoke-virtual {v1}, Lcn/sharesdk/framework/statistics/a/c;->c()Z

    move-result v4

    iget-object v5, p1, Lcn/sharesdk/framework/statistics/b/f;->d:Lcn/sharesdk/framework/statistics/b/f$a;

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcn/sharesdk/framework/statistics/a;->d:Z

    if-eqz v0, :cond_8

    :cond_0
    if-eqz v5, :cond_1

    iget-object v0, v5, Lcn/sharesdk/framework/statistics/b/f$a;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    :cond_1
    move v1, v2

    :goto_0
    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_4

    iget-object v0, v5, Lcn/sharesdk/framework/statistics/b/f$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v6, Lcn/sharesdk/framework/statistics/b;->a:Lcn/sharesdk/framework/statistics/b;

    invoke-direct {p0, v0, v6}, Lcn/sharesdk/framework/statistics/a;->a(Ljava/lang/String;Lcn/sharesdk/framework/statistics/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v5, Lcn/sharesdk/framework/statistics/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    iget-object v0, v5, Lcn/sharesdk/framework/statistics/b/f$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_5

    iget-object v0, v5, Lcn/sharesdk/framework/statistics/b/f$a;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    :cond_5
    move v1, v2

    :goto_2
    if-ge v2, v1, :cond_9

    iget-object v0, v5, Lcn/sharesdk/framework/statistics/b/f$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    sget-object v3, Lcn/sharesdk/framework/statistics/b;->a:Lcn/sharesdk/framework/statistics/b;

    invoke-direct {p0, v0, v3}, Lcn/sharesdk/framework/statistics/a;->a(Landroid/graphics/Bitmap;Lcn/sharesdk/framework/statistics/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v5, Lcn/sharesdk/framework/statistics/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    iget-object v0, v5, Lcn/sharesdk/framework/statistics/b/f$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v0

    goto :goto_2

    :cond_8
    iput-object v7, p1, Lcn/sharesdk/framework/statistics/b/f;->d:Lcn/sharesdk/framework/statistics/b/f$a;

    :cond_9
    if-nez v4, :cond_a

    iput-object v7, p1, Lcn/sharesdk/framework/statistics/b/f;->n:Ljava/lang/String;

    :cond_a
    return-void
.end method

.method private a(Ljava/lang/String;Z)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/statistics/a;->b:Lcn/sharesdk/framework/statistics/c;

    invoke-virtual {v0, p1, p2}, Lcn/sharesdk/framework/statistics/c;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/a;->b:Lcn/sharesdk/framework/statistics/c;

    invoke-virtual {v1, p1}, Lcn/sharesdk/framework/statistics/c;->d(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v2, "status"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "status"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/R;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    const-string v2, "url"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "url"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private i(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x400

    const/4 v6, 0x0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-array v3, v7, [B

    :goto_0
    invoke-virtual {v0, v3, v6, v7}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {v2, v3, v6, v4}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    const/4 v0, 0x2

    invoke-static {v2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Lcn/sharesdk/framework/statistics/b;->b:Lcn/sharesdk/framework/statistics/b;

    invoke-direct {p0, p1, v0}, Lcn/sharesdk/framework/statistics/a;->a(Landroid/graphics/Bitmap;Lcn/sharesdk/framework/statistics/b;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/statistics/a;->c:Lcn/sharesdk/framework/statistics/a/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/statistics/a/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/a;->c:Lcn/sharesdk/framework/statistics/a/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/statistics/a/c;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    if-eqz p4, :cond_2

    const-string v3, "<a[^>]*?href[\\s]*=[\\s]*[\"\']?([^\'\">]+?)[\'\"]?>"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcn/sharesdk/framework/statistics/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object p1, v0

    goto :goto_0

    :cond_2
    const-string v3, "(http://|https://){1}[\\w\\.\\-/:\\?&%=,;\\[\\]\\{\\}`~!@#\\$\\^\\*\\(\\)_\\+\\\\\\|]+"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcn/sharesdk/framework/statistics/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/statistics/a;->b:Lcn/sharesdk/framework/statistics/c;

    invoke-virtual {v0, p1, p2}, Lcn/sharesdk/framework/statistics/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public a()V
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/statistics/a;->c:Lcn/sharesdk/framework/statistics/a/c;

    invoke-virtual {v1}, Lcn/sharesdk/framework/statistics/a/c;->i()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcn/sharesdk/framework/statistics/a;->b:Lcn/sharesdk/framework/statistics/c;

    invoke-virtual {v1}, Lcn/sharesdk/framework/statistics/c;->d()Ljava/util/ArrayList;

    move-result-object v3

    move v2, v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/statistics/a/d;

    iget-object v1, v0, Lcn/sharesdk/framework/statistics/a/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v5, :cond_3

    iget-object v1, v0, Lcn/sharesdk/framework/statistics/a/d;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcn/sharesdk/framework/statistics/a;->a(Ljava/lang/String;Z)Z

    move-result v1

    :goto_2
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/a;->b:Lcn/sharesdk/framework/statistics/c;

    iget-object v0, v0, Lcn/sharesdk/framework/statistics/a/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/statistics/c;->a(Ljava/util/ArrayList;)V

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lcn/sharesdk/framework/statistics/a/d;->a:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcn/sharesdk/framework/statistics/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-direct {p0, v1, v4}, Lcn/sharesdk/framework/statistics/a;->a(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Lcn/sharesdk/framework/statistics/b/c;)V
    .locals 5

    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/statistics/a;->c:Lcn/sharesdk/framework/statistics/a/c;

    invoke-virtual {v1}, Lcn/sharesdk/framework/statistics/a/c;->i()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    instance-of v1, p1, Lcn/sharesdk/framework/statistics/b/b;

    if-eqz v1, :cond_4

    move-object v0, p1

    check-cast v0, Lcn/sharesdk/framework/statistics/b/b;

    move-object v1, v0

    invoke-direct {p0, v1}, Lcn/sharesdk/framework/statistics/a;->a(Lcn/sharesdk/framework/statistics/b/b;)V

    :cond_1
    :goto_1
    iget-object v1, p0, Lcn/sharesdk/framework/statistics/a;->c:Lcn/sharesdk/framework/statistics/a/c;

    invoke-virtual {v1}, Lcn/sharesdk/framework/statistics/a/c;->b()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, p1, Lcn/sharesdk/framework/statistics/b/c;->m:Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lcn/sharesdk/framework/statistics/a;->c:Lcn/sharesdk/framework/statistics/a/c;

    invoke-virtual {v1}, Lcn/sharesdk/framework/statistics/a/c;->a()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_3

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/a;->b:Lcn/sharesdk/framework/statistics/c;

    invoke-virtual {v1}, Lcn/sharesdk/framework/statistics/c;->a()J

    move-result-wide v1

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    iput-wide v1, p1, Lcn/sharesdk/framework/statistics/b/c;->e:J

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/a;->b:Lcn/sharesdk/framework/statistics/c;

    invoke-virtual {v1, p1}, Lcn/sharesdk/framework/statistics/c;->a(Lcn/sharesdk/framework/statistics/b/c;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    :try_start_1
    instance-of v1, p1, Lcn/sharesdk/framework/statistics/b/f;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcn/sharesdk/framework/statistics/b/f;

    move-object v1, v0

    invoke-direct {p0, v1}, Lcn/sharesdk/framework/statistics/a;->a(Lcn/sharesdk/framework/statistics/b/f;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 9

    const-wide/32 v0, 0x5265c00

    :try_start_0
    iget-object v2, p0, Lcn/sharesdk/framework/statistics/a;->c:Lcn/sharesdk/framework/statistics/a/c;

    invoke-virtual {v2}, Lcn/sharesdk/framework/statistics/a/c;->j()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v8, 0x5

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    sub-long v2, v4, v2

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    if-ne v7, v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/sharesdk/framework/statistics/a;->b:Lcn/sharesdk/framework/statistics/c;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/statistics/c;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string v0, "res"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "true"

    const-string v2, "res"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    iget-object v2, p0, Lcn/sharesdk/framework/statistics/a;->c:Lcn/sharesdk/framework/statistics/a/c;

    invoke-virtual {v2, v0}, Lcn/sharesdk/framework/statistics/a/c;->a(Z)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/a;->c:Lcn/sharesdk/framework/statistics/a/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/statistics/a/c;->b(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/statistics/a;->c:Lcn/sharesdk/framework/statistics/a/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/statistics/a/c;->i()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/sharesdk/framework/statistics/a;->b:Lcn/sharesdk/framework/statistics/c;

    invoke-virtual {v0, p1, p2}, Lcn/sharesdk/framework/statistics/c;->a(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/statistics/a;->b:Lcn/sharesdk/framework/statistics/c;

    invoke-virtual {v0, p1, p2}, Lcn/sharesdk/framework/statistics/c;->b(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/sharesdk/framework/statistics/a;->d:Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/statistics/a;->c:Lcn/sharesdk/framework/statistics/a/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/statistics/a/c;->i()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/sharesdk/framework/statistics/a;->c:Lcn/sharesdk/framework/statistics/a/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/statistics/a/c;->a(J)V

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/a;->b:Lcn/sharesdk/framework/statistics/c;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/statistics/c;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string v0, "status"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "status"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/R;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, -0xc8

    if-ne v0, v2, :cond_2

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v2

    const-string v0, "error"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, "timestamp"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "timestamp"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/R;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/a;->c:Lcn/sharesdk/framework/statistics/a/c;

    const-string v4, "service_time"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcn/sharesdk/framework/statistics/a/c;->a(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_3
    const-string v0, "switchs"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "switchs"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_4

    const-string v2, "device"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "share"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "auth"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "backflow"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcn/sharesdk/framework/statistics/a;->c:Lcn/sharesdk/framework/statistics/a/c;

    invoke-virtual {v5, v2}, Lcn/sharesdk/framework/statistics/a/c;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/sharesdk/framework/statistics/a;->c:Lcn/sharesdk/framework/statistics/a/c;

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/statistics/a/c;->g(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/sharesdk/framework/statistics/a;->c:Lcn/sharesdk/framework/statistics/a/c;

    invoke-virtual {v2, v4}, Lcn/sharesdk/framework/statistics/a/c;->f(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/sharesdk/framework/statistics/a;->c:Lcn/sharesdk/framework/statistics/a/c;

    invoke-virtual {v2, v0}, Lcn/sharesdk/framework/statistics/a/c;->d(Ljava/lang/String;)V

    :cond_4
    const-string v0, "requesthost"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "requestport"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "requesthost"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "requestport"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcn/sharesdk/framework/statistics/a;->b:Lcn/sharesdk/framework/statistics/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/sharesdk/framework/statistics/c;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/statistics/a;->c:Lcn/sharesdk/framework/statistics/a/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/statistics/a/c;->i()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/sharesdk/framework/statistics/a;->c:Lcn/sharesdk/framework/statistics/a/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/statistics/a/c;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/a;->b:Lcn/sharesdk/framework/statistics/c;

    invoke-virtual {v1}, Lcn/sharesdk/framework/statistics/c;->b()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/a;->c:Lcn/sharesdk/framework/statistics/a/c;

    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/statistics/a/c;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/a;->b:Lcn/sharesdk/framework/statistics/c;

    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/framework/statistics/c;->a(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/statistics/a;->c:Lcn/sharesdk/framework/statistics/a/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/statistics/a/c;->i()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/sharesdk/framework/statistics/a;->c:Lcn/sharesdk/framework/statistics/a/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/statistics/a/c;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/a;->b:Lcn/sharesdk/framework/statistics/c;

    invoke-virtual {v1}, Lcn/sharesdk/framework/statistics/c;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk.sharesdk.sdk"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/Data;->Base64AES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/a;->c:Lcn/sharesdk/framework/statistics/a/c;

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/statistics/a/c;->j(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/a;->b:Lcn/sharesdk/framework/statistics/c;

    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/framework/statistics/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Lcn/sharesdk/framework/statistics/b;->b:Lcn/sharesdk/framework/statistics/b;

    invoke-direct {p0, p1, v0}, Lcn/sharesdk/framework/statistics/a;->a(Ljava/lang/String;Lcn/sharesdk/framework/statistics/b;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/statistics/a;->b:Lcn/sharesdk/framework/statistics/c;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/statistics/c;->f(Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public g(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/statistics/a;->b:Lcn/sharesdk/framework/statistics/c;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/statistics/c;->e(Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method
