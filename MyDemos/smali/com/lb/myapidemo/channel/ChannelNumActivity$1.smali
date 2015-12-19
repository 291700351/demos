.class Lcom/lb/myapidemo/channel/ChannelNumActivity$1;
.super Ljava/lang/Object;
.source "ChannelNumActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lb/myapidemo/channel/ChannelNumActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lb/myapidemo/channel/ChannelNumActivity;

.field private final synthetic val$textview:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/lb/myapidemo/channel/ChannelNumActivity;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lb/myapidemo/channel/ChannelNumActivity$1;->this$0:Lcom/lb/myapidemo/channel/ChannelNumActivity;

    iput-object p2, p0, Lcom/lb/myapidemo/channel/ChannelNumActivity$1;->val$textview:Landroid/widget/TextView;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 34
    iget-object v1, p0, Lcom/lb/myapidemo/channel/ChannelNumActivity$1;->this$0:Lcom/lb/myapidemo/channel/ChannelNumActivity;

    iget-object v2, p0, Lcom/lb/myapidemo/channel/ChannelNumActivity$1;->this$0:Lcom/lb/myapidemo/channel/ChannelNumActivity;

    # invokes: Lcom/lb/myapidemo/channel/ChannelNumActivity;->getChannel(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/lb/myapidemo/channel/ChannelNumActivity;->access$0(Lcom/lb/myapidemo/channel/ChannelNumActivity;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "channel":Ljava/lang/String;
    iget-object v1, p0, Lcom/lb/myapidemo/channel/ChannelNumActivity$1;->val$textview:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6e20\u9053\u53f7\u662f\uff1a\uff1a\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    return-void
.end method
