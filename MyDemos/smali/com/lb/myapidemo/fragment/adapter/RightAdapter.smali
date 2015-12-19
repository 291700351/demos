.class public final Lcom/lb/myapidemo/fragment/adapter/RightAdapter;
.super Landroid/widget/BaseAdapter;
.source "RightAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lb/myapidemo/fragment/adapter/RightAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private datas:Ljava/util/ArrayList;
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
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lb/myapidemo/fragment/domain/RightBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lb/myapidemo/fragment/domain/RightBean;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/lb/myapidemo/fragment/adapter/RightAdapter;->datas:Ljava/util/ArrayList;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lb/myapidemo/fragment/adapter/RightAdapter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/lb/myapidemo/fragment/domain/RightBean;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lb/myapidemo/fragment/adapter/RightAdapter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lb/myapidemo/fragment/domain/RightBean;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lb/myapidemo/fragment/adapter/RightAdapter;->getItem(I)Lcom/lb/myapidemo/fragment/domain/RightBean;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 40
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 46
    iget-object v3, p0, Lcom/lb/myapidemo/fragment/adapter/RightAdapter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lb/myapidemo/fragment/domain/RightBean;

    invoke-virtual {v3}, Lcom/lb/myapidemo/fragment/domain/RightBean;->getType()I

    move-result v1

    .line 47
    .local v1, "type":I
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 48
    const v4, 0x1090003

    const/4 v5, 0x0

    .line 47
    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 49
    .local v2, "view":Landroid/view/View;
    invoke-static {v2}, Lcom/lb/myapidemo/fragment/adapter/RightAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/lb/myapidemo/fragment/adapter/RightAdapter$ViewHolder;

    move-result-object v0

    .line 50
    .local v0, "holder":Lcom/lb/myapidemo/fragment/adapter/RightAdapter$ViewHolder;
    packed-switch v1, :pswitch_data_0

    .line 59
    :goto_0
    # getter for: Lcom/lb/myapidemo/fragment/adapter/RightAdapter$ViewHolder;->text1:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lb/myapidemo/fragment/adapter/RightAdapter$ViewHolder;->access$0(Lcom/lb/myapidemo/fragment/adapter/RightAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v3, p0, Lcom/lb/myapidemo/fragment/adapter/RightAdapter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lb/myapidemo/fragment/domain/RightBean;

    invoke-virtual {v3}, Lcom/lb/myapidemo/fragment/domain/RightBean;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-object v2

    .line 52
    :pswitch_0
    # getter for: Lcom/lb/myapidemo/fragment/adapter/RightAdapter$ViewHolder;->text1:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lb/myapidemo/fragment/adapter/RightAdapter$ViewHolder;->access$0(Lcom/lb/myapidemo/fragment/adapter/RightAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "#2b2b2b2b"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
