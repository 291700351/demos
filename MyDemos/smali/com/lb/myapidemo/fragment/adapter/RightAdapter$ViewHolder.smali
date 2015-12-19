.class final Lcom/lb/myapidemo/fragment/adapter/RightAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "RightAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lb/myapidemo/fragment/adapter/RightAdapter;
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
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lb/myapidemo/fragment/adapter/RightAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    .line 70
    return-void
.end method

.method static synthetic access$0(Lcom/lb/myapidemo/fragment/adapter/RightAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lb/myapidemo/fragment/adapter/RightAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    return-object v0
.end method

.method public static getHolder(Landroid/view/View;)Lcom/lb/myapidemo/fragment/adapter/RightAdapter$ViewHolder;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lb/myapidemo/fragment/adapter/RightAdapter$ViewHolder;

    .line 74
    .local v0, "holder":Lcom/lb/myapidemo/fragment/adapter/RightAdapter$ViewHolder;
    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/lb/myapidemo/fragment/adapter/RightAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/lb/myapidemo/fragment/adapter/RightAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/lb/myapidemo/fragment/adapter/RightAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 76
    .restart local v0    # "holder":Lcom/lb/myapidemo/fragment/adapter/RightAdapter$ViewHolder;
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    :cond_0
    return-object v0
.end method
