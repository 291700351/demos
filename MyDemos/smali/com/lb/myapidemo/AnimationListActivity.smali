.class public Lcom/lb/myapidemo/AnimationListActivity;
.super Landroid/app/Activity;
.source "AnimationListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lb/myapidemo/AnimationListActivity$MyAdaoter;,
        Lcom/lb/myapidemo/AnimationListActivity$ViewHolder;
    }
.end annotation


# instance fields
.field private btn:Landroid/widget/Button;

.field private listview:Lcom/twotoasters/jazzylistview/JazzyListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lb/myapidemo/AnimationListActivity;)Lcom/twotoasters/jazzylistview/JazzyListView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lb/myapidemo/AnimationListActivity;->listview:Lcom/twotoasters/jazzylistview/JazzyListView;

    return-object v0
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 65
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/AnimationListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twotoasters/jazzylistview/JazzyListView;

    iput-object v0, p0, Lcom/lb/myapidemo/AnimationListActivity;->listview:Lcom/twotoasters/jazzylistview/JazzyListView;

    .line 66
    const v0, 0x7f080010

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/AnimationListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lb/myapidemo/AnimationListActivity;->btn:Landroid/widget/Button;

    .line 67
    return-void
.end method

.method private setData()V
    .locals 3

    .prologue
    .line 158
    iget-object v1, p0, Lcom/lb/myapidemo/AnimationListActivity;->listview:Lcom/twotoasters/jazzylistview/JazzyListView;

    new-instance v2, Lcom/twotoasters/jazzylistview/effects/CardsEffect;

    invoke-direct {v2}, Lcom/twotoasters/jazzylistview/effects/CardsEffect;-><init>()V

    invoke-virtual {v1, v2}, Lcom/twotoasters/jazzylistview/JazzyListView;->setTransitionEffect(Lcom/twotoasters/jazzylistview/JazzyEffect;)V

    .line 159
    new-instance v0, Lcom/lb/myapidemo/AnimationListActivity$MyAdaoter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lb/myapidemo/AnimationListActivity$MyAdaoter;-><init>(Lcom/lb/myapidemo/AnimationListActivity;Lcom/lb/myapidemo/AnimationListActivity$MyAdaoter;)V

    .line 160
    .local v0, "adapter":Lcom/lb/myapidemo/AnimationListActivity$MyAdaoter;
    iget-object v1, p0, Lcom/lb/myapidemo/AnimationListActivity;->listview:Lcom/twotoasters/jazzylistview/JazzyListView;

    invoke-virtual {v1, v0}, Lcom/twotoasters/jazzylistview/JazzyListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    const-string v1, "\u9009\u62e9\u4e861 CardsEffect\u6548\u679c"

    invoke-virtual {p0, v1}, Lcom/lb/myapidemo/AnimationListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 163
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lb/myapidemo/AnimationListActivity;->btn:Landroid/widget/Button;

    new-instance v1, Lcom/lb/myapidemo/AnimationListActivity$1;

    invoke-direct {v1, p0}, Lcom/lb/myapidemo/AnimationListActivity$1;-><init>(Lcom/lb/myapidemo/AnimationListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/AnimationListActivity;->setContentView(I)V

    .line 53
    invoke-direct {p0}, Lcom/lb/myapidemo/AnimationListActivity;->findView()V

    .line 55
    invoke-direct {p0}, Lcom/lb/myapidemo/AnimationListActivity;->setListener()V

    .line 57
    invoke-direct {p0}, Lcom/lb/myapidemo/AnimationListActivity;->setData()V

    .line 59
    return-void
.end method
