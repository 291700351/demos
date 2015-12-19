.class public final Lcom/lb/myapidemo/fragment/adapter/LeftAdapter;
.super Landroid/widget/BaseAdapter;
.source "LeftAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lb/myapidemo/fragment/adapter/LeftAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private datas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lb/myapidemo/fragment/domain/LeftBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lb/myapidemo/fragment/domain/LeftBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lb/myapidemo/fragment/domain/LeftBean;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/lb/myapidemo/fragment/adapter/LeftAdapter;->datas:Ljava/util/ArrayList;

    .line 25
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lb/myapidemo/fragment/adapter/LeftAdapter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/lb/myapidemo/fragment/domain/LeftBean;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lb/myapidemo/fragment/adapter/LeftAdapter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lb/myapidemo/fragment/domain/LeftBean;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lb/myapidemo/fragment/adapter/LeftAdapter;->getItem(I)Lcom/lb/myapidemo/fragment/domain/LeftBean;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 39
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 45
    if-nez p2, :cond_0

    .line 46
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 47
    const v2, 0x1090003

    const/4 v3, 0x0

    .line 46
    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 49
    :cond_0
    invoke-static {p2}, Lcom/lb/myapidemo/fragment/adapter/LeftAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/lb/myapidemo/fragment/adapter/LeftAdapter$ViewHolder;

    move-result-object v0

    .line 50
    .local v0, "holder":Lcom/lb/myapidemo/fragment/adapter/LeftAdapter$ViewHolder;
    # getter for: Lcom/lb/myapidemo/fragment/adapter/LeftAdapter$ViewHolder;->text1:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lb/myapidemo/fragment/adapter/LeftAdapter$ViewHolder;->access$0(Lcom/lb/myapidemo/fragment/adapter/LeftAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, p0, Lcom/lb/myapidemo/fragment/adapter/LeftAdapter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lb/myapidemo/fragment/domain/LeftBean;

    invoke-virtual {v1}, Lcom/lb/myapidemo/fragment/domain/LeftBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-object p2
.end method
