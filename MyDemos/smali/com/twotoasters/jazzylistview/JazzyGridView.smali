.class public Lcom/twotoasters/jazzylistview/JazzyGridView;
.super Landroid/widget/GridView;
.source "JazzyGridView.java"


# instance fields
.field private final mHelper:Lcom/twotoasters/jazzylistview/JazzyHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twotoasters/jazzylistview/JazzyGridView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/twotoasters/jazzylistview/JazzyHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/twotoasters/jazzylistview/JazzyGridView;->mHelper:Lcom/twotoasters/jazzylistview/JazzyHelper;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/twotoasters/jazzylistview/JazzyGridView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/twotoasters/jazzylistview/JazzyHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/twotoasters/jazzylistview/JazzyGridView;->mHelper:Lcom/twotoasters/jazzylistview/JazzyHelper;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/twotoasters/jazzylistview/JazzyGridView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/twotoasters/jazzylistview/JazzyHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/twotoasters/jazzylistview/JazzyGridView;->mHelper:Lcom/twotoasters/jazzylistview/JazzyHelper;

    .line 39
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/twotoasters/jazzylistview/JazzyHelper;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    new-instance v0, Lcom/twotoasters/jazzylistview/JazzyHelper;

    invoke-direct {v0, p1, p2}, Lcom/twotoasters/jazzylistview/JazzyHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    .local v0, "helper":Lcom/twotoasters/jazzylistview/JazzyHelper;
    invoke-super {p0, v0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 44
    return-object v0
.end method


# virtual methods
.method public final setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/twotoasters/jazzylistview/JazzyGridView;->mHelper:Lcom/twotoasters/jazzylistview/JazzyHelper;

    invoke-virtual {v0, p1}, Lcom/twotoasters/jazzylistview/JazzyHelper;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 53
    return-void
.end method

.method public setShouldOnlyAnimateNewItems(Z)V
    .locals 1
    .param p1, "onlyAnimateNew"    # Z

    .prologue
    .line 79
    iget-object v0, p0, Lcom/twotoasters/jazzylistview/JazzyGridView;->mHelper:Lcom/twotoasters/jazzylistview/JazzyHelper;

    invoke-virtual {v0, p1}, Lcom/twotoasters/jazzylistview/JazzyHelper;->setShouldOnlyAnimateNewItems(Z)V

    .line 80
    return-void
.end method

.method public setTransitionEffect(I)V
    .locals 1
    .param p1, "transitionEffect"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/twotoasters/jazzylistview/JazzyGridView;->mHelper:Lcom/twotoasters/jazzylistview/JazzyHelper;

    invoke-virtual {v0, p1}, Lcom/twotoasters/jazzylistview/JazzyHelper;->setTransitionEffect(I)V

    .line 62
    return-void
.end method

.method public setTransitionEffect(Lcom/twotoasters/jazzylistview/JazzyEffect;)V
    .locals 1
    .param p1, "transitionEffect"    # Lcom/twotoasters/jazzylistview/JazzyEffect;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/twotoasters/jazzylistview/JazzyGridView;->mHelper:Lcom/twotoasters/jazzylistview/JazzyHelper;

    invoke-virtual {v0, p1}, Lcom/twotoasters/jazzylistview/JazzyHelper;->setTransitionEffect(Lcom/twotoasters/jazzylistview/JazzyEffect;)V

    .line 71
    return-void
.end method
