.class Lcom/mob/tools/gui/BitmapProcessor$PatchInputStream;
.super Ljava/io/FilterInputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/gui/BitmapProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PatchInputStream"
.end annotation


# instance fields
.field in:Ljava/io/InputStream;


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/mob/tools/gui/BitmapProcessor$PatchInputStream;->in:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public skip(J)J
    .locals 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .local v2, "m":J
    :goto_0
    cmp-long v4, v2, p1

    if-gez v4, :cond_0

    iget-object v4, p0, Lcom/mob/tools/gui/BitmapProcessor$PatchInputStream;->in:Ljava/io/InputStream;

    sub-long v5, p1, v2

    invoke-virtual {v4, v5, v6}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .local v0, "_m":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    .end local v0    # "_m":J
    :cond_0
    return-wide v2

    .restart local v0    # "_m":J
    :cond_1
    add-long/2addr v2, v0

    goto :goto_0
.end method
