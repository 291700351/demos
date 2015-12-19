.class Lcom/lb/myapidemo/game/Game2048Activity$1;
.super Ljava/lang/Object;
.source "Game2048Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lb/myapidemo/game/Game2048Activity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lb/myapidemo/game/Game2048Activity;


# direct methods
.method constructor <init>(Lcom/lb/myapidemo/game/Game2048Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lb/myapidemo/game/Game2048Activity$1;->this$0:Lcom/lb/myapidemo/game/Game2048Activity;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lb/myapidemo/game/Game2048Activity$1;->this$0:Lcom/lb/myapidemo/game/Game2048Activity;

    # getter for: Lcom/lb/myapidemo/game/Game2048Activity;->gameView:Lcom/lb/myapidemo/game/view/CardLayout;
    invoke-static {v0}, Lcom/lb/myapidemo/game/Game2048Activity;->access$0(Lcom/lb/myapidemo/game/Game2048Activity;)Lcom/lb/myapidemo/game/view/CardLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lb/myapidemo/game/view/CardLayout;->clean()V

    .line 49
    iget-object v0, p0, Lcom/lb/myapidemo/game/Game2048Activity$1;->this$0:Lcom/lb/myapidemo/game/Game2048Activity;

    # getter for: Lcom/lb/myapidemo/game/Game2048Activity;->gameView:Lcom/lb/myapidemo/game/view/CardLayout;
    invoke-static {v0}, Lcom/lb/myapidemo/game/Game2048Activity;->access$0(Lcom/lb/myapidemo/game/Game2048Activity;)Lcom/lb/myapidemo/game/view/CardLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lb/myapidemo/game/view/CardLayout;->createRandomCard()V

    .line 50
    iget-object v0, p0, Lcom/lb/myapidemo/game/Game2048Activity$1;->this$0:Lcom/lb/myapidemo/game/Game2048Activity;

    # getter for: Lcom/lb/myapidemo/game/Game2048Activity;->gameView:Lcom/lb/myapidemo/game/view/CardLayout;
    invoke-static {v0}, Lcom/lb/myapidemo/game/Game2048Activity;->access$0(Lcom/lb/myapidemo/game/Game2048Activity;)Lcom/lb/myapidemo/game/view/CardLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lb/myapidemo/game/view/CardLayout;->createRandomCard()V

    .line 52
    return-void
.end method
