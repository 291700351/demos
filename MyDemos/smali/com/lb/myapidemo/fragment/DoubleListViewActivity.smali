.class public Lcom/lb/myapidemo/fragment/DoubleListViewActivity;
.super Landroid/app/Activity;
.source "DoubleListViewActivity.java"


# instance fields
.field private leftDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lb/myapidemo/fragment/domain/LeftBean;",
            ">;"
        }
    .end annotation
.end field

.field private lv_left:Landroid/widget/ListView;

.field private lv_right:Landroid/widget/ListView;

.field private rightDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lb/myapidemo/fragment/domain/RightBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lb/myapidemo/fragment/DoubleListViewActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lb/myapidemo/fragment/DoubleListViewActivity;->leftDatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lb/myapidemo/fragment/DoubleListViewActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lb/myapidemo/fragment/DoubleListViewActivity;->lv_right:Landroid/widget/ListView;

    return-object v0
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 75
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/fragment/DoubleListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lb/myapidemo/fragment/DoubleListViewActivity;->lv_left:Landroid/widget/ListView;

    .line 76
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/fragment/DoubleListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lb/myapidemo/fragment/DoubleListViewActivity;->lv_right:Landroid/widget/ListView;

    .line 78
    return-void
.end method

.method private setData()V
    .locals 5

    .prologue
    .line 106
    iget-object v2, p0, Lcom/lb/myapidemo/fragment/DoubleListViewActivity;->lv_left:Landroid/widget/ListView;

    new-instance v3, Lcom/lb/myapidemo/fragment/adapter/LeftAdapter;

    iget-object v4, p0, Lcom/lb/myapidemo/fragment/DoubleListViewActivity;->leftDatas:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Lcom/lb/myapidemo/fragment/adapter/LeftAdapter;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lb/myapidemo/fragment/DoubleListViewActivity;->leftDatas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/lb/myapidemo/fragment/DoubleListViewActivity;->lv_right:Landroid/widget/ListView;

    new-instance v3, Lcom/lb/myapidemo/fragment/adapter/RightAdapter;

    iget-object v4, p0, Lcom/lb/myapidemo/fragment/DoubleListViewActivity;->rightDatas:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Lcom/lb/myapidemo/fragment/adapter/RightAdapter;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    return-void

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/lb/myapidemo/fragment/DoubleListViewActivity;->leftDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lb/myapidemo/fragment/domain/LeftBean;

    invoke-virtual {v2}, Lcom/lb/myapidemo/fragment/domain/LeftBean;->getList()Ljava/util/ArrayList;

    move-result-object v1

    .line 109
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lb/myapidemo/fragment/domain/RightBean;>;"
    iget-object v2, p0, Lcom/lb/myapidemo/fragment/DoubleListViewActivity;->rightDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lb/myapidemo/fragment/DoubleListViewActivity;->lv_left:Landroid/widget/ListView;

    new-instance v1, Lcom/lb/myapidemo/fragment/DoubleListViewActivity$1;

    invoke-direct {v1, p0}, Lcom/lb/myapidemo/fragment/DoubleListViewActivity$1;-><init>(Lcom/lb/myapidemo/fragment/DoubleListViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 100
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/lb/myapidemo/fragment/DoubleListViewActivity;->leftDatas:Ljava/util/ArrayList;

    .line 30
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/lb/myapidemo/fragment/DoubleListViewActivity;->rightDatas:Ljava/util/ArrayList;

    .line 31
    const/4 v4, 0x0

    .line 32
    .local v4, "leftBean":Lcom/lb/myapidemo/fragment/domain/LeftBean;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v7, 0x14

    if-le v1, v7, :cond_0

    .line 61
    const v7, 0x7f030004

    invoke-virtual {p0, v7}, Lcom/lb/myapidemo/fragment/DoubleListViewActivity;->setContentView(I)V

    .line 63
    invoke-direct {p0}, Lcom/lb/myapidemo/fragment/DoubleListViewActivity;->findView()V

    .line 65
    invoke-direct {p0}, Lcom/lb/myapidemo/fragment/DoubleListViewActivity;->setListener()V

    .line 67
    invoke-direct {p0}, Lcom/lb/myapidemo/fragment/DoubleListViewActivity;->setData()V

    .line 69
    return-void

    .line 34
    :cond_0
    new-instance v4, Lcom/lb/myapidemo/fragment/domain/LeftBean;

    .end local v4    # "leftBean":Lcom/lb/myapidemo/fragment/domain/LeftBean;
    invoke-direct {v4}, Lcom/lb/myapidemo/fragment/domain/LeftBean;-><init>()V

    .line 35
    .restart local v4    # "leftBean":Lcom/lb/myapidemo/fragment/domain/LeftBean;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "item"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, "left":Ljava/lang/String;
    invoke-virtual {v4, v3}, Lcom/lb/myapidemo/fragment/domain/LeftBean;->setTitle(Ljava/lang/String;)V

    .line 37
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lb/myapidemo/fragment/domain/RightBean;>;"
    const/4 v6, 0x0

    .line 39
    .local v6, "rightBean":Lcom/lb/myapidemo/fragment/domain/RightBean;
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_1
    const/16 v7, 0x1e

    if-le v2, v7, :cond_1

    .line 57
    invoke-virtual {v4, v5}, Lcom/lb/myapidemo/fragment/domain/LeftBean;->setList(Ljava/util/ArrayList;)V

    .line 58
    iget-object v7, p0, Lcom/lb/myapidemo/fragment/DoubleListViewActivity;->leftDatas:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    :cond_1
    new-instance v6, Lcom/lb/myapidemo/fragment/domain/RightBean;

    .end local v6    # "rightBean":Lcom/lb/myapidemo/fragment/domain/RightBean;
    invoke-direct {v6}, Lcom/lb/myapidemo/fragment/domain/RightBean;-><init>()V

    .line 41
    .restart local v6    # "rightBean":Lcom/lb/myapidemo/fragment/domain/RightBean;
    if-ne v2, v9, :cond_2

    .line 43
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/lb/myapidemo/fragment/domain/RightBean;->setType(I)V

    .line 44
    invoke-virtual {v6, v3}, Lcom/lb/myapidemo/fragment/domain/RightBean;->setData(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v0, Lcom/lb/myapidemo/fragment/domain/RightBean;

    invoke-direct {v0}, Lcom/lb/myapidemo/fragment/domain/RightBean;-><init>()V

    .line 48
    .local v0, "bean":Lcom/lb/myapidemo/fragment/domain/RightBean;
    invoke-virtual {v0, v9}, Lcom/lb/myapidemo/fragment/domain/RightBean;->setType(I)V

    .line 49
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "---data"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/lb/myapidemo/fragment/domain/RightBean;->setData(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .end local v0    # "bean":Lcom/lb/myapidemo/fragment/domain/RightBean;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 52
    :cond_2
    invoke-virtual {v6, v9}, Lcom/lb/myapidemo/fragment/domain/RightBean;->setType(I)V

    .line 53
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "---data"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lb/myapidemo/fragment/domain/RightBean;->setData(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
