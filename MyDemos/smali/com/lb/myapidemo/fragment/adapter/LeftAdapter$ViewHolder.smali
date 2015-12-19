.class final Lcom/lb/myapidemo/fragment/adapter/LeftAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "LeftAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lb/myapidemo/fragment/adapter/LeftAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewHolder"
.end annotation


# instance fields
.field private text1:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lb/myapidemo/fragment/adapter/LeftAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/lb/myapidemo/fragment/adapter/LeftAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lb/myapidemo/fragment/adapter/LeftAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    return-object v0
.end method

.method public static getHolder(Landroid/view/View;)Lcom/lb/myapidemo/fragment/adapter/LeftAdapter$ViewHolder;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lb/myapidemo/fragment/adapter/LeftAdapter$ViewHolder;

    .line 64
    .local v0, "holder":Lcom/lb/myapidemo/fragment/adapter/LeftAdapter$ViewHolder;
    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/lb/myapidemo/fragment/adapter/LeftAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/lb/myapidemo/fragment/adapter/LeftAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/lb/myapidemo/fragment/adapter/LeftAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 66
    .restart local v0    # "holder":Lcom/lb/myapidemo/fragment/adapter/LeftAdapter$ViewHolder;
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    :cond_0
    return-object v0
.end method
