.class public Lcom/mob/tools/gui/CachePool;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/gui/CachePool$1;,
        Lcom/mob/tools/gui/CachePool$Node;
    }
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
.field private capacity:I

.field private head:Lcom/mob/tools/gui/CachePool$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/tools/gui/CachePool$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private size:I

.field private tail:Lcom/mob/tools/gui/CachePool$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/tools/gui/CachePool$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .local p0, "this":Lcom/mob/tools/gui/CachePool;, "Lcom/mob/tools/gui/CachePool<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/mob/tools/gui/CachePool;->capacity:I

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/mob/tools/gui/CachePool;, "Lcom/mob/tools/gui/CachePool<TK;TV;>;"
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/mob/tools/gui/CachePool;->tail:Lcom/mob/tools/gui/CachePool$Node;

    iput-object v0, p0, Lcom/mob/tools/gui/CachePool;->head:Lcom/mob/tools/gui/CachePool$Node;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mob/tools/gui/CachePool;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/mob/tools/gui/CachePool;, "Lcom/mob/tools/gui/CachePool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/gui/CachePool;->head:Lcom/mob/tools/gui/CachePool$Node;

    .local v0, "n":Lcom/mob/tools/gui/CachePool$Node;, "Lcom/mob/tools/gui/CachePool$Node<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/mob/tools/gui/CachePool$Node;->key:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/mob/tools/gui/CachePool$Node;->previous:Lcom/mob/tools/gui/CachePool$Node;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/mob/tools/gui/CachePool$Node;->next:Lcom/mob/tools/gui/CachePool$Node;

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/mob/tools/gui/CachePool$Node;->previous:Lcom/mob/tools/gui/CachePool$Node;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/mob/tools/gui/CachePool$Node;->next:Lcom/mob/tools/gui/CachePool$Node;

    iget-object v1, p0, Lcom/mob/tools/gui/CachePool;->tail:Lcom/mob/tools/gui/CachePool$Node;

    iget-object v1, v1, Lcom/mob/tools/gui/CachePool$Node;->previous:Lcom/mob/tools/gui/CachePool$Node;

    iput-object v1, p0, Lcom/mob/tools/gui/CachePool;->tail:Lcom/mob/tools/gui/CachePool$Node;

    :goto_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mob/tools/gui/CachePool$Node;->previous:Lcom/mob/tools/gui/CachePool$Node;

    iget-object v1, p0, Lcom/mob/tools/gui/CachePool;->head:Lcom/mob/tools/gui/CachePool$Node;

    iput-object v1, v0, Lcom/mob/tools/gui/CachePool$Node;->next:Lcom/mob/tools/gui/CachePool$Node;

    iget-object v1, p0, Lcom/mob/tools/gui/CachePool;->head:Lcom/mob/tools/gui/CachePool$Node;

    iput-object v0, v1, Lcom/mob/tools/gui/CachePool$Node;->previous:Lcom/mob/tools/gui/CachePool$Node;

    iput-object v0, p0, Lcom/mob/tools/gui/CachePool;->head:Lcom/mob/tools/gui/CachePool$Node;

    :cond_1
    iget-object v1, v0, Lcom/mob/tools/gui/CachePool$Node;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v1

    :cond_3
    :try_start_1
    iget-object v0, v0, Lcom/mob/tools/gui/CachePool$Node;->next:Lcom/mob/tools/gui/CachePool$Node;

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lcom/mob/tools/gui/CachePool$Node;->previous:Lcom/mob/tools/gui/CachePool$Node;

    iget-object v2, v0, Lcom/mob/tools/gui/CachePool$Node;->next:Lcom/mob/tools/gui/CachePool$Node;

    iput-object v2, v1, Lcom/mob/tools/gui/CachePool$Node;->next:Lcom/mob/tools/gui/CachePool$Node;

    iget-object v1, v0, Lcom/mob/tools/gui/CachePool$Node;->next:Lcom/mob/tools/gui/CachePool$Node;

    iget-object v2, v0, Lcom/mob/tools/gui/CachePool$Node;->previous:Lcom/mob/tools/gui/CachePool$Node;

    iput-object v2, v1, Lcom/mob/tools/gui/CachePool$Node;->previous:Lcom/mob/tools/gui/CachePool$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0    # "n":Lcom/mob/tools/gui/CachePool$Node;, "Lcom/mob/tools/gui/CachePool$Node<TK;TV;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/mob/tools/gui/CachePool;, "Lcom/mob/tools/gui/CachePool<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget v1, p0, Lcom/mob/tools/gui/CachePool;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    const/4 v0, 0x0

    .local v0, "n":Lcom/mob/tools/gui/CachePool$Node;, "Lcom/mob/tools/gui/CachePool$Node<TK;TV;>;"
    :goto_1
    :try_start_1
    iget v1, p0, Lcom/mob/tools/gui/CachePool;->size:I

    iget v2, p0, Lcom/mob/tools/gui/CachePool;->capacity:I

    if-lt v1, v2, :cond_2

    iget-object v0, p0, Lcom/mob/tools/gui/CachePool;->tail:Lcom/mob/tools/gui/CachePool$Node;

    iget-object v1, p0, Lcom/mob/tools/gui/CachePool;->tail:Lcom/mob/tools/gui/CachePool$Node;

    iget-object v1, v1, Lcom/mob/tools/gui/CachePool$Node;->previous:Lcom/mob/tools/gui/CachePool$Node;

    iput-object v1, p0, Lcom/mob/tools/gui/CachePool;->tail:Lcom/mob/tools/gui/CachePool$Node;

    iget-object v1, p0, Lcom/mob/tools/gui/CachePool;->tail:Lcom/mob/tools/gui/CachePool$Node;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/mob/tools/gui/CachePool$Node;->next:Lcom/mob/tools/gui/CachePool$Node;

    iget v1, p0, Lcom/mob/tools/gui/CachePool;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/mob/tools/gui/CachePool;->size:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0    # "n":Lcom/mob/tools/gui/CachePool$Node;, "Lcom/mob/tools/gui/CachePool$Node<TK;TV;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .restart local v0    # "n":Lcom/mob/tools/gui/CachePool$Node;, "Lcom/mob/tools/gui/CachePool$Node<TK;TV;>;"
    :cond_2
    if-nez v0, :cond_3

    :try_start_2
    new-instance v0, Lcom/mob/tools/gui/CachePool$Node;

    .end local v0    # "n":Lcom/mob/tools/gui/CachePool$Node;, "Lcom/mob/tools/gui/CachePool$Node<TK;TV;>;"
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mob/tools/gui/CachePool$Node;-><init>(Lcom/mob/tools/gui/CachePool$1;)V

    .restart local v0    # "n":Lcom/mob/tools/gui/CachePool$Node;, "Lcom/mob/tools/gui/CachePool$Node<TK;TV;>;"
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # setter for: Lcom/mob/tools/gui/CachePool$Node;->cacheTime:J
    invoke-static {v0, v1, v2}, Lcom/mob/tools/gui/CachePool$Node;->access$102(Lcom/mob/tools/gui/CachePool$Node;J)J

    iput-object p1, v0, Lcom/mob/tools/gui/CachePool$Node;->key:Ljava/lang/Object;

    iput-object p2, v0, Lcom/mob/tools/gui/CachePool$Node;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mob/tools/gui/CachePool$Node;->previous:Lcom/mob/tools/gui/CachePool$Node;

    iget-object v1, p0, Lcom/mob/tools/gui/CachePool;->head:Lcom/mob/tools/gui/CachePool$Node;

    iput-object v1, v0, Lcom/mob/tools/gui/CachePool$Node;->next:Lcom/mob/tools/gui/CachePool$Node;

    iget v1, p0, Lcom/mob/tools/gui/CachePool;->size:I

    if-nez v1, :cond_4

    iput-object v0, p0, Lcom/mob/tools/gui/CachePool;->tail:Lcom/mob/tools/gui/CachePool$Node;

    :goto_2
    iput-object v0, p0, Lcom/mob/tools/gui/CachePool;->head:Lcom/mob/tools/gui/CachePool$Node;

    iget v1, p0, Lcom/mob/tools/gui/CachePool;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mob/tools/gui/CachePool;->size:I

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/mob/tools/gui/CachePool;->head:Lcom/mob/tools/gui/CachePool$Node;

    iput-object v0, v1, Lcom/mob/tools/gui/CachePool$Node;->previous:Lcom/mob/tools/gui/CachePool$Node;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public size()I
    .locals 1

    .prologue
    .local p0, "this":Lcom/mob/tools/gui/CachePool;, "Lcom/mob/tools/gui/CachePool<TK;TV;>;"
    iget v0, p0, Lcom/mob/tools/gui/CachePool;->size:I

    return v0
.end method

.method public declared-synchronized trimBeforeTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .local p0, "this":Lcom/mob/tools/gui/CachePool;, "Lcom/mob/tools/gui/CachePool<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/mob/tools/gui/CachePool;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v1, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mob/tools/gui/CachePool;->head:Lcom/mob/tools/gui/CachePool$Node;

    .local v0, "n":Lcom/mob/tools/gui/CachePool$Node;, "Lcom/mob/tools/gui/CachePool$Node<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_0

    # getter for: Lcom/mob/tools/gui/CachePool$Node;->cacheTime:J
    invoke-static {v0}, Lcom/mob/tools/gui/CachePool$Node;->access$100(Lcom/mob/tools/gui/CachePool$Node;)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-gez v1, :cond_5

    iget-object v1, v0, Lcom/mob/tools/gui/CachePool$Node;->previous:Lcom/mob/tools/gui/CachePool$Node;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/mob/tools/gui/CachePool$Node;->previous:Lcom/mob/tools/gui/CachePool$Node;

    iget-object v2, v0, Lcom/mob/tools/gui/CachePool$Node;->next:Lcom/mob/tools/gui/CachePool$Node;

    iput-object v2, v1, Lcom/mob/tools/gui/CachePool$Node;->next:Lcom/mob/tools/gui/CachePool$Node;

    :cond_2
    iget-object v1, v0, Lcom/mob/tools/gui/CachePool$Node;->next:Lcom/mob/tools/gui/CachePool$Node;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/mob/tools/gui/CachePool$Node;->next:Lcom/mob/tools/gui/CachePool$Node;

    iget-object v2, v0, Lcom/mob/tools/gui/CachePool$Node;->previous:Lcom/mob/tools/gui/CachePool$Node;

    iput-object v2, v1, Lcom/mob/tools/gui/CachePool$Node;->previous:Lcom/mob/tools/gui/CachePool$Node;

    :cond_3
    iget-object v1, p0, Lcom/mob/tools/gui/CachePool;->head:Lcom/mob/tools/gui/CachePool$Node;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mob/tools/gui/CachePool;->head:Lcom/mob/tools/gui/CachePool$Node;

    iget-object v1, v1, Lcom/mob/tools/gui/CachePool$Node;->next:Lcom/mob/tools/gui/CachePool$Node;

    iput-object v1, p0, Lcom/mob/tools/gui/CachePool;->head:Lcom/mob/tools/gui/CachePool$Node;

    :cond_4
    iget v1, p0, Lcom/mob/tools/gui/CachePool;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/mob/tools/gui/CachePool;->size:I

    :cond_5
    iget-object v0, v0, Lcom/mob/tools/gui/CachePool$Node;->next:Lcom/mob/tools/gui/CachePool$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "n":Lcom/mob/tools/gui/CachePool$Node;, "Lcom/mob/tools/gui/CachePool$Node<TK;TV;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
