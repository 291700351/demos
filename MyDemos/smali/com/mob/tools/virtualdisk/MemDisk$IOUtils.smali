.class Lcom/mob/tools/virtualdisk/MemDisk$IOUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/virtualdisk/MemDisk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IOUtils"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readByte(ILandroid/os/MemoryFile;[B)B
    .locals 2
    .param p0, "offset"    # I
    .param p1, "mf"    # Landroid/os/MemoryFile;
    .param p2, "buff"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v1, v0}, Landroid/os/MemoryFile;->readBytes([BIII)I

    aget-byte v0, p2, v1

    return v0
.end method

.method public static readInt(ILandroid/os/MemoryFile;[B)I
    .locals 2
    .param p0, "offset"    # I
    .param p1, "mf"    # Landroid/os/MemoryFile;
    .param p2, "buff"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x4

    invoke-virtual {p1, p2, p0, v1, v0}, Landroid/os/MemoryFile;->readBytes([BIII)I

    aget-byte v0, p2, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static readRaw(ILandroid/os/MemoryFile;[B)V
    .locals 2
    .param p0, "offset"    # I
    .param p1, "mf"    # Landroid/os/MemoryFile;
    .param p2, "buff"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p1, p2, p0, v0, v1}, Landroid/os/MemoryFile;->readBytes([BIII)I

    return-void
.end method

.method public static readShort(ILandroid/os/MemoryFile;[B)S
    .locals 2
    .param p0, "offset"    # I
    .param p1, "mf"    # Landroid/os/MemoryFile;
    .param p2, "buff"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x2

    invoke-virtual {p1, p2, p0, v1, v0}, Landroid/os/MemoryFile;->readBytes([BIII)I

    aget-byte v0, p2, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static writeByte(IBLandroid/os/MemoryFile;[B)V
    .locals 2
    .param p0, "offset"    # I
    .param p1, "value"    # B
    .param p2, "mf"    # Landroid/os/MemoryFile;
    .param p3, "buff"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    aput-byte p1, p3, v1

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v1, p0, v0}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    return-void
.end method

.method public static writeInt(IILandroid/os/MemoryFile;[B)V
    .locals 3
    .param p0, "offset"    # I
    .param p1, "value"    # I
    .param p2, "mf"    # Landroid/os/MemoryFile;
    .param p3, "buff"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    shr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    aput-byte v0, p3, v2

    const/4 v0, 0x1

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    const/4 v0, 0x2

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    const/4 v0, 0x3

    int-to-byte v1, p1

    aput-byte v1, p3, v0

    const/4 v0, 0x4

    invoke-virtual {p2, p3, v2, p0, v0}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    return-void
.end method

.method public static writeRaw(I[BIILandroid/os/MemoryFile;)V
    .locals 0
    .param p0, "offset"    # I
    .param p1, "value"    # [B
    .param p2, "valueOffset"    # I
    .param p3, "valueLen"    # I
    .param p4, "mf"    # Landroid/os/MemoryFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p4, p1, p2, p0, p3}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    return-void
.end method

.method public static writeShort(ISLandroid/os/MemoryFile;[B)V
    .locals 3
    .param p0, "offset"    # I
    .param p1, "value"    # S
    .param p2, "mf"    # Landroid/os/MemoryFile;
    .param p3, "buff"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    aput-byte v0, p3, v2

    const/4 v0, 0x1

    int-to-byte v1, p1

    aput-byte v1, p3, v0

    const/4 v0, 0x2

    invoke-virtual {p2, p3, v2, p0, v0}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    return-void
.end method
