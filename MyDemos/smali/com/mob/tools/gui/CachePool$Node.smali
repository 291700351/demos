.class Lcom/mob/tools/gui/CachePool$Node;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/gui/CachePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private cacheTime:J

.field public key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public next:Lcom/mob/tools/gui/CachePool$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/tools/gui/CachePool$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field public previous:Lcom/mob/tools/gui/CachePool$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/tools/gui/CachePool$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .local p0, "this":Lcom/mob/tools/gui/CachePool$Node;, "Lcom/mob/tools/gui/CachePool$Node<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mob/tools/gui/CachePool$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mob/tools/gui/CachePool$1;

    .prologue
    .local p0, "this":Lcom/mob/tools/gui/CachePool$Node;, "Lcom/mob/tools/gui/CachePool$Node<TK;TV;>;"
    invoke-direct {p0}, Lcom/mob/tools/gui/CachePool$Node;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/mob/tools/gui/CachePool$Node;)J
    .locals 2
    .param p0, "x0"    # Lcom/mob/tools/gui/CachePool$Node;

    .prologue
    iget-wide v0, p0, Lcom/mob/tools/gui/CachePool$Node;->cacheTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/mob/tools/gui/CachePool$Node;J)J
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/gui/CachePool$Node;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lcom/mob/tools/gui/CachePool$Node;->cacheTime:J

    return-wide p1
.end method
