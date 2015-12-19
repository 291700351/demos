.class Lcom/lb/myapidemo/fragment/DoubleListViewActivity$1;
.super Ljava/lang/Object;
.source "DoubleListViewActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lb/myapidemo/fragment/DoubleListViewActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lb/myapidemo/fragment/DoubleListViewActivity;


# direct methods
.method constructor <init>(Lcom/lb/myapidemo/fragment/DoubleListViewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lb/myapidemo/fragment/DoubleListViewActivity$1;->this$0:Lcom/lb/myapidemo/fragment/DoubleListViewActivity;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x0

    .line 90
    .local v1, "itemNum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_0

    .line 95
    iget-object v3, p0, Lcom/lb/myapidemo/fragment/DoubleListViewActivity$1;->this$0:Lcom/lb/myapidemo/fragment/DoubleListViewActivity;

    # getter for: Lcom/lb/myapidemo/fragment/DoubleListViewActivity;->lv_right:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/lb/myapidemo/fragment/DoubleListViewActivity;->access$1(Lcom/lb/myapidemo/fragment/DoubleListViewActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 97
    return-void

    .line 91
    :cond_0
    iget-object v3, p0, Lcom/lb/myapidemo/fragment/DoubleListViewActivity$1;->this$0:Lcom/lb/myapidemo/fragment/DoubleListViewActivity;

    # getter for: Lcom/lb/myapidemo/fragment/DoubleListViewActivity;->leftDatas:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lb/myapidemo/fragment/DoubleListViewActivity;->access$0(Lcom/lb/myapidemo/fragment/DoubleListViewActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lb/myapidemo/fragment/domain/LeftBean;

    invoke-virtual {v3}, Lcom/lb/myapidemo/fragment/domain/LeftBean;->getList()Ljava/util/ArrayList;

    move-result-object v2

    .line 92
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lb/myapidemo/fragment/domain/RightBean;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v1, v3

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
