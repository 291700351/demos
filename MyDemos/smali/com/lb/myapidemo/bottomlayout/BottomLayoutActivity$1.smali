.class Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity$1;
.super Ljava/lang/Object;
.source "BottomLayoutActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;


# direct methods
.method constructor <init>(Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity$1;->this$0:Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 58
    iget-object v1, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity$1;->this$0:Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;

    invoke-virtual {v1}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity$1;->this$0:Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {v1, v2}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->access$0(Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;I)V

    .line 60
    return-void
.end method
