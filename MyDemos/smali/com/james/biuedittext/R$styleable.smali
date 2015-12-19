.class public final Lcom/james/biuedittext/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/james/biuedittext/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final BiuEditStyle:[I

.field public static final BiuEditStyle_biu_duration:I = 0x3

.field public static final BiuEditStyle_biu_text_color:I = 0x0

.field public static final BiuEditStyle_biu_text_scale:I = 0x2

.field public static final BiuEditStyle_biu_text_start_size:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/james/biuedittext/R$styleable;->BiuEditStyle:[I

    .line 16
    return-void

    .line 21
    nop

    :array_0
    .array-data 4
        0x7f010005
        0x7f010006
        0x7f010007
        0x7f010008
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
