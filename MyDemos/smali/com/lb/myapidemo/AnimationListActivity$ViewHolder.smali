.class final Lcom/lb/myapidemo/AnimationListActivity$ViewHolder;
.super Ljava/lang/Object;
.source "AnimationListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lb/myapidemo/AnimationListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewHolder"
.end annotation


# instance fields
.field private tv:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    const v0, 0x7f08002a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lb/myapidemo/AnimationListActivity$ViewHolder;->tv:Landroid/widget/TextView;

    .line 201
    return-void
.end method

.method static synthetic access$0(Lcom/lb/myapidemo/AnimationListActivity$ViewHolder;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/lb/myapidemo/AnimationListActivity$ViewHolder;->tv:Landroid/widget/TextView;

    return-object v0
.end method

.method public static getHolder(Landroid/view/View;)Lcom/lb/myapidemo/AnimationListActivity$ViewHolder;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lb/myapidemo/AnimationListActivity$ViewHolder;

    .line 205
    .local v0, "holder":Lcom/lb/myapidemo/AnimationListActivity$ViewHolder;
    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lcom/lb/myapidemo/AnimationListActivity$ViewHolder;

    .end local v0    # "holder":Lcom/lb/myapidemo/AnimationListActivity$ViewHolder;
    invoke-direct {v0, p0}, Lcom/lb/myapidemo/AnimationListActivity$ViewHolder;-><init>(Landroid/view/View;)V

    .line 207
    .restart local v0    # "holder":Lcom/lb/myapidemo/AnimationListActivity$ViewHolder;
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 209
    :cond_0
    return-object v0
.end method
