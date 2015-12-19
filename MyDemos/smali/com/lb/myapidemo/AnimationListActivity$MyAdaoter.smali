.class final Lcom/lb/myapidemo/AnimationListActivity$MyAdaoter;
.super Landroid/widget/BaseAdapter;
.source "AnimationListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lb/myapidemo/AnimationListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyAdaoter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lb/myapidemo/AnimationListActivity;


# direct methods
.method private constructor <init>(Lcom/lb/myapidemo/AnimationListActivity;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/lb/myapidemo/AnimationListActivity$MyAdaoter;->this$0:Lcom/lb/myapidemo/AnimationListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lb/myapidemo/AnimationListActivity;Lcom/lb/myapidemo/AnimationListActivity$MyAdaoter;)V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/lb/myapidemo/AnimationListActivity$MyAdaoter;-><init>(Lcom/lb/myapidemo/AnimationListActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 169
    const/16 v0, 0x64

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 174
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 179
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 184
    if-nez p2, :cond_0

    .line 185
    iget-object v1, p0, Lcom/lb/myapidemo/AnimationListActivity$MyAdaoter;->this$0:Lcom/lb/myapidemo/AnimationListActivity;

    .line 186
    const v2, 0x7f03000f

    const/4 v3, 0x0

    .line 185
    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 188
    :cond_0
    invoke-static {p2}, Lcom/lb/myapidemo/AnimationListActivity$ViewHolder;->getHolder(Landroid/view/View;)Lcom/lb/myapidemo/AnimationListActivity$ViewHolder;

    move-result-object v0

    .line 189
    .local v0, "holder":Lcom/lb/myapidemo/AnimationListActivity$ViewHolder;
    # getter for: Lcom/lb/myapidemo/AnimationListActivity$ViewHolder;->tv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lb/myapidemo/AnimationListActivity$ViewHolder;->access$0(Lcom/lb/myapidemo/AnimationListActivity$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6570\u636e"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    return-object p2
.end method
