.class public Lcom/lb/myapidemo/game/Game2048Activity;
.super Landroid/app/Activity;
.source "Game2048Activity.java"


# instance fields
.field private btn_start:Landroid/widget/Button;

.field private gameView:Lcom/lb/myapidemo/game/view/CardLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lb/myapidemo/game/Game2048Activity;)Lcom/lb/myapidemo/game/view/CardLayout;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lb/myapidemo/game/Game2048Activity;->gameView:Lcom/lb/myapidemo/game/view/CardLayout;

    return-object v0
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 35
    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/game/Game2048Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lb/myapidemo/game/Game2048Activity;->btn_start:Landroid/widget/Button;

    .line 36
    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/game/Game2048Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lb/myapidemo/game/view/CardLayout;

    iput-object v0, p0, Lcom/lb/myapidemo/game/Game2048Activity;->gameView:Lcom/lb/myapidemo/game/view/CardLayout;

    .line 38
    return-void
.end method

.method private setData()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lb/myapidemo/game/Game2048Activity;->btn_start:Landroid/widget/Button;

    new-instance v1, Lcom/lb/myapidemo/game/Game2048Activity$1;

    invoke-direct {v1, p0}, Lcom/lb/myapidemo/game/Game2048Activity$1;-><init>(Lcom/lb/myapidemo/game/Game2048Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/game/Game2048Activity;->setContentView(I)V

    .line 23
    invoke-direct {p0}, Lcom/lb/myapidemo/game/Game2048Activity;->findView()V

    .line 25
    invoke-direct {p0}, Lcom/lb/myapidemo/game/Game2048Activity;->setListener()V

    .line 27
    invoke-direct {p0}, Lcom/lb/myapidemo/game/Game2048Activity;->setData()V

    .line 29
    return-void
.end method
