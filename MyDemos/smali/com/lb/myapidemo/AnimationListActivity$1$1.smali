.class Lcom/lb/myapidemo/AnimationListActivity$1$1;
.super Ljava/lang/Object;
.source "AnimationListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lb/myapidemo/AnimationListActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lb/myapidemo/AnimationListActivity$1;

.field private final synthetic val$effects:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lb/myapidemo/AnimationListActivity$1;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lb/myapidemo/AnimationListActivity$1$1;->this$1:Lcom/lb/myapidemo/AnimationListActivity$1;

    iput-object p2, p0, Lcom/lb/myapidemo/AnimationListActivity$1$1;->val$effects:[Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 94
    packed-switch p2, :pswitch_data_0

    .line 142
    :goto_0
    iget-object v0, p0, Lcom/lb/myapidemo/AnimationListActivity$1$1;->this$1:Lcom/lb/myapidemo/AnimationListActivity$1;

    # getter for: Lcom/lb/myapidemo/AnimationListActivity$1;->this$0:Lcom/lb/myapidemo/AnimationListActivity;
    invoke-static {v0}, Lcom/lb/myapidemo/AnimationListActivity$1;->access$0(Lcom/lb/myapidemo/AnimationListActivity$1;)Lcom/lb/myapidemo/AnimationListActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9009\u62e9\u4e86"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lb/myapidemo/AnimationListActivity$1$1;->val$effects:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6548\u679c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lb/myapidemo/AnimationListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 144
    return-void

    .line 96
    :pswitch_0
    iget-object v0, p0, Lcom/lb/myapidemo/AnimationListActivity$1$1;->this$1:Lcom/lb/myapidemo/AnimationListActivity$1;

    # getter for: Lcom/lb/myapidemo/AnimationListActivity$1;->this$0:Lcom/lb/myapidemo/AnimationListActivity;
    invoke-static {v0}, Lcom/lb/myapidemo/AnimationListActivity$1;->access$0(Lcom/lb/myapidemo/AnimationListActivity$1;)Lcom/lb/myapidemo/AnimationListActivity;

    move-result-object v0

    # getter for: Lcom/lb/myapidemo/AnimationListActivity;->listview:Lcom/twotoasters/jazzylistview/JazzyListView;
    invoke-static {v0}, Lcom/lb/myapidemo/AnimationListActivity;->access$0(Lcom/lb/myapidemo/AnimationListActivity;)Lcom/twotoasters/jazzylistview/JazzyListView;

    move-result-object v0

    new-instance v1, Lcom/twotoasters/jazzylistview/effects/CardsEffect;

    invoke-direct {v1}, Lcom/twotoasters/jazzylistview/effects/CardsEffect;-><init>()V

    invoke-virtual {v0, v1}, Lcom/twotoasters/jazzylistview/JazzyListView;->setTransitionEffect(Lcom/twotoasters/jazzylistview/JazzyEffect;)V

    goto :goto_0

    .line 99
    :pswitch_1
    iget-object v0, p0, Lcom/lb/myapidemo/AnimationListActivity$1$1;->this$1:Lcom/lb/myapidemo/AnimationListActivity$1;

    # getter for: Lcom/lb/myapidemo/AnimationListActivity$1;->this$0:Lcom/lb/myapidemo/AnimationListActivity;
    invoke-static {v0}, Lcom/lb/myapidemo/AnimationListActivity$1;->access$0(Lcom/lb/myapidemo/AnimationListActivity$1;)Lcom/lb/myapidemo/AnimationListActivity;

    move-result-object v0

    # getter for: Lcom/lb/myapidemo/AnimationListActivity;->listview:Lcom/twotoasters/jazzylistview/JazzyListView;
    invoke-static {v0}, Lcom/lb/myapidemo/AnimationListActivity;->access$0(Lcom/lb/myapidemo/AnimationListActivity;)Lcom/twotoasters/jazzylistview/JazzyListView;

    move-result-object v0

    new-instance v1, Lcom/twotoasters/jazzylistview/effects/CurlEffect;

    invoke-direct {v1}, Lcom/twotoasters/jazzylistview/effects/CurlEffect;-><init>()V

    invoke-virtual {v0, v1}, Lcom/twotoasters/jazzylistview/JazzyListView;->setTransitionEffect(Lcom/twotoasters/jazzylistview/JazzyEffect;)V

    goto :goto_0

    .line 102
    :pswitch_2
    iget-object v0, p0, Lcom/lb/myapidemo/AnimationListActivity$1$1;->this$1:Lcom/lb/myapidemo/AnimationListActivity$1;

    # getter for: Lcom/lb/myapidemo/AnimationListActivity$1;->this$0:Lcom/lb/myapidemo/AnimationListActivity;
    invoke-static {v0}, Lcom/lb/myapidemo/AnimationListActivity$1;->access$0(Lcom/lb/myapidemo/AnimationListActivity$1;)Lcom/lb/myapidemo/AnimationListActivity;

    move-result-object v0

    # getter for: Lcom/lb/myapidemo/AnimationListActivity;->listview:Lcom/twotoasters/jazzylistview/JazzyListView;
    invoke-static {v0}, Lcom/lb/myapidemo/AnimationListActivity;->access$0(Lcom/lb/myapidemo/AnimationListActivity;)Lcom/twotoasters/jazzylistview/JazzyListView;

    move-result-object v0

    new-instance v1, Lcom/twotoasters/jazzylistview/effects/FadeEffect;

    invoke-direct {v1}, Lcom/twotoasters/jazzylistview/effects/FadeEffect;-><init>()V

    invoke-virtual {v0, v1}, Lcom/twotoasters/jazzylistview/JazzyListView;->setTransitionEffect(Lcom/twotoasters/jazzylistview/JazzyEffect;)V

    goto :goto_0

    .line 105
    :pswitch_3
    iget-object v0, p0, Lcom/lb/myapidemo/AnimationListActivity$1$1;->this$1:Lcom/lb/myapidemo/AnimationListActivity$1;

    # getter for: Lcom/lb/myapidemo/AnimationListActivity$1;->this$0:Lcom/lb/myapidemo/AnimationListActivity;
    invoke-static {v0}, Lcom/lb/myapidemo/AnimationListActivity$1;->access$0(Lcom/lb/myapidemo/AnimationListActivity$1;)Lcom/lb/myapidemo/AnimationListActivity;

    move-result-object v0

    # getter for: Lcom/lb/myapidemo/AnimationListActivity;->listview:Lcom/twotoasters/jazzylistview/JazzyListView;
    invoke-static {v0}, Lcom/lb/myapidemo/AnimationListActivity;->access$0(Lcom/lb/myapidemo/AnimationListActivity;)Lcom/twotoasters/jazzylistview/JazzyListView;

    move-result-object v0

    new-instance v1, Lcom/twotoasters/jazzylistview/effects/FanEffect;

    invoke-direct {v1}, Lcom/twotoasters/jazzylistview/effects/FanEffect;-><init>()V

    invoke-virtual {v0, v1}, Lcom/twotoasters/jazzylistview/JazzyListView;->setTransitionEffect(Lcom/twotoasters/jazzylistview/JazzyEffect;)V

    goto :goto_0

    .line 108
    :pswitch_4
    iget-object v0, p0, Lcom/lb/myapidemo/AnimationListActivity$1$1;->this$1:Lcom/lb/myapidemo/AnimationListActivity$1;

    # getter for: Lcom/lb/myapidemo/AnimationListActivity$1;->this$0:Lcom/lb/myapidemo/AnimationListActivity;
    invoke-static {v0}, Lcom/lb/myapidemo/AnimationListActivity$1;->access$0(Lcom/lb/myapidemo/AnimationListActivity$1;)Lcom/lb/myapidemo/AnimationListActivity;

    move-result-object v0

    # getter for: Lcom/lb/myapidemo/AnimationListActivity;->listview:Lcom/twotoasters/jazzylistview/JazzyListView;
    invoke-static {v0}, Lcom/lb/myapidemo/AnimationListActivity;->access$0(Lcom/lb/myapidemo/AnimationListActivity;)Lcom/twotoasters/jazzylistview/JazzyListView;

    move-result-object v0

    new-instance v1, Lcom/twotoasters/jazzylistview/effects/FlipEffect;

    invoke-direct {v1}, Lcom/twotoasters/jazzylistview/effects/FlipEffect;-><init>()V

    invoke-virtual {v0, v1}, Lcom/twotoasters/jazzylistview/JazzyListView;->setTransitionEffect(Lcom/twotoasters/jazzylistview/JazzyEffect;)V

    goto/16 :goto_0

    .line 111
    :pswitch_5
    iget-object v0, p0, Lcom/lb/myapidemo/AnimationListActivity$1$1;->this$1:Lcom/lb/myapidemo/AnimationListActivity$1;

    # getter for: Lcom/lb/myapidemo/AnimationListActivity$1;->this$0:Lcom/lb/myapidemo/AnimationListActivity;
    invoke-static {v0}, Lcom/lb/myapidemo/AnimationListActivity$1;->access$0(Lcom/lb/myapidemo/AnimationListActivity$1;)Lcom/lb/myapidemo/AnimationListActivity;

    move-result-object v0

    # getter for: Lcom/lb/myapidemo/AnimationListActivity;->listview:Lcom/twotoasters/jazzylistview/JazzyListView;
    invoke-static {v0}, Lcom/lb/myapidemo/AnimationListActivity;->access$0(Lcom/lb/myapidemo/AnimationListActivity;)Lcom/twotoasters/jazzylistview/JazzyListView;

    move-result-object v0

    new-instance v1, Lcom/twotoasters/jazzylistview/effects/FlyEffect;

    invoke-direct {v1}, Lcom/twotoasters/jazzylistview/effects/FlyEffect;-><init>()V

    invoke-virtual {v0, v1}, Lcom/twotoasters/jazzylistview/JazzyListView;->setTransitionEffect(Lcom/twotoasters/jazzylistview/JazzyEffect;)V

    goto/16 :goto_0

    .line 114
    :pswitch_6
    iget-object v0, p0, Lcom/lb/myapidemo/AnimationListActivity$1$1;->this$1:Lcom/lb/myapidemo/AnimationListActivity$1;

    # getter for: Lcom/lb/myapidemo/AnimationListActivity$1;->this$0:Lcom/lb/myapidemo/AnimationListActivity;
    invoke-static {v0}, Lcom/lb/myapidemo/AnimationListActivity$1;->access$0(Lcom/lb/myapidemo/AnimationListActivity$1;)Lcom/lb/myapidemo/AnimationListActivity;

    move-result-object v0

    # getter for: Lcom/lb/myapidemo/AnimationListActivity;->listview:Lcom/twotoasters/jazzylistview/JazzyListView;
    invoke-static {v0}, Lcom/lb/myapidemo/AnimationListActivity;->access$0(Lcom/lb/myapidemo/AnimationListActivity;)Lcom/twotoasters/jazzylistview/JazzyListView;

    move-result-object v0

    new-instance v1, Lcom/twotoasters/jazzylistview/effects/GrowEffect;

    invoke-direct {v1}, Lcom/twotoasters/jazzylistview/effects/GrowEffect;-><init>()V

    invoke-virtual {v0, v1}, Lcom/twotoasters/jazzylistview/JazzyListView;->setTransitionEffect(Lcom/twotoasters/jazzylistview/JazzyEffect;)V

    goto/16 :goto_0

    .line 117
    :pswitch_7
    iget-object v0, p0, Lcom/lb/myapidemo/AnimationListActivity$1$1;->this$1:Lcom/lb/myapidemo/AnimationListActivity$1;

    # getter for: Lcom/lb/myapidemo/AnimationListActivity$1;->this$0:Lcom/lb/myapidemo/AnimationListActivity;
    invoke-static {v0}, Lcom/lb/myapidemo/AnimationListActivity$1;->access$0(Lcom/lb/myapidemo/AnimationListActivity$1;)Lcom/lb/myapidemo/AnimationListActivity;

    move-result-object v0

    # getter for: Lcom/lb/myapidemo/AnimationListActivity;->listview:Lcom/twotoasters/jazzylistview/JazzyListView;
    invoke-static {v0}, Lcom/lb/myapidemo/AnimationListActivity;->access$0(Lcom/lb/myapidemo/AnimationListActivity;)Lcom/twotoasters/jazzylistview/JazzyListView;

    move-result-object v0

    new-instance v1, Lcom/twotoasters/jazzylistview/effects/HelixEffect;

    invoke-direct {v1}, Lcom/twotoasters/jazzylistview/effects/HelixEffect;-><init>()V

    invoke-virtual {v0, v1}, Lcom/twotoasters/jazzylistview/JazzyListView;->setTransitionEffect(Lcom/twotoasters/jazzylistview/JazzyEffect;)V

    goto/16 :goto_0

    .line 120
    :pswitch_8
    iget-object v0, p0, Lcom/lb/myapidemo/AnimationListActivity$1$1;->this$1:Lcom/lb/myapidemo/AnimationListActivity$1;

    # getter for: Lcom/lb/myapidemo/AnimationListActivity$1;->this$0:Lcom/lb/myapidemo/AnimationListActivity;
    invoke-static {v0}, Lcom/lb/myapidemo/AnimationListActivity$1;->access$0(Lcom/lb/myapidemo/AnimationListActivity$1;)Lcom/lb/myapidemo/AnimationListActivity;

    move-result-object v0

    # getter for: Lcom/lb/myapidemo/AnimationListActivity;->listview:Lcom/twotoasters/jazzylistview/JazzyListView;
    invoke-static {v0}, Lcom/lb/myapidemo/AnimationListActivity;->access$0(Lcom/lb/myapidemo/AnimationListActivity;)Lcom/twotoasters/jazzylistview/JazzyListView;

    move-result-object v0

    new-instance v1, Lcom/twotoasters/jazzylistview/effects/ReverseFlyEffect;

    invoke-direct {v1}, Lcom/twotoasters/jazzylistview/effects/ReverseFlyEffect;-><init>()V

    invoke-virtual {v0, v1}, Lcom/twotoasters/jazzylistview/JazzyListView;->setTransitionEffect(Lcom/twotoasters/jazzylistview/JazzyEffect;)V

    goto/16 :goto_0

    .line 123
    :pswitch_9
    iget-object v0, p0, Lcom/lb/myapidemo/AnimationListActivity$1$1;->this$1:Lcom/lb/myapidemo/AnimationListActivity$1;

    # getter for: Lcom/lb/myapidemo/AnimationListActivity$1;->this$0:Lcom/lb/myapidemo/AnimationListActivity;
    invoke-static {v0}, Lcom/lb/myapidemo/AnimationListActivity$1;->access$0(Lcom/lb/myapidemo/AnimationListActivity$1;)Lcom/lb/myapidemo/AnimationListActivity;

    move-result-object v0

    # getter for: Lcom/lb/myapidemo/AnimationListActivity;->listview:Lcom/twotoasters/jazzylistview/JazzyListView;
    invoke-static {v0}, Lcom/lb/myapidemo/AnimationListActivity;->access$0(Lcom/lb/myapidemo/AnimationListActivity;)Lcom/twotoasters/jazzylistview/JazzyListView;

    move-result-object v0

    new-instance v1, Lcom/twotoasters/jazzylistview/effects/SlideInEffect;

    invoke-direct {v1}, Lcom/twotoasters/jazzylistview/effects/SlideInEffect;-><init>()V

    invoke-virtual {v0, v1}, Lcom/twotoasters/jazzylistview/JazzyListView;->setTransitionEffect(Lcom/twotoasters/jazzylistview/JazzyEffect;)V

    goto/16 :goto_0

    .line 126
    :pswitch_a
    iget-object v0, p0, Lcom/lb/myapidemo/AnimationListActivity$1$1;->this$1:Lcom/lb/myapidemo/AnimationListActivity$1;

    # getter for: Lcom/lb/myapidemo/AnimationListActivity$1;->this$0:Lcom/lb/myapidemo/AnimationListActivity;
    invoke-static {v0}, Lcom/lb/myapidemo/AnimationListActivity$1;->access$0(Lcom/lb/myapidemo/AnimationListActivity$1;)Lcom/lb/myapidemo/AnimationListActivity;

    move-result-object v0

    # getter for: Lcom/lb/myapidemo/AnimationListActivity;->listview:Lcom/twotoasters/jazzylistview/JazzyListView;
    invoke-static {v0}, Lcom/lb/myapidemo/AnimationListActivity;->access$0(Lcom/lb/myapidemo/AnimationListActivity;)Lcom/twotoasters/jazzylistview/JazzyListView;

    move-result-object v0

    new-instance v1, Lcom/twotoasters/jazzylistview/effects/StandardEffect;

    invoke-direct {v1}, Lcom/twotoasters/jazzylistview/effects/StandardEffect;-><init>()V

    invoke-virtual {v0, v1}, Lcom/twotoasters/jazzylistview/JazzyListView;->setTransitionEffect(Lcom/twotoasters/jazzylistview/JazzyEffect;)V

    goto/16 :goto_0

    .line 129
    :pswitch_b
    iget-object v0, p0, Lcom/lb/myapidemo/AnimationListActivity$1$1;->this$1:Lcom/lb/myapidemo/AnimationListActivity$1;

    # getter for: Lcom/lb/myapidemo/AnimationListActivity$1;->this$0:Lcom/lb/myapidemo/AnimationListActivity;
    invoke-static {v0}, Lcom/lb/myapidemo/AnimationListActivity$1;->access$0(Lcom/lb/myapidemo/AnimationListActivity$1;)Lcom/lb/myapidemo/AnimationListActivity;

    move-result-object v0

    # getter for: Lcom/lb/myapidemo/AnimationListActivity;->listview:Lcom/twotoasters/jazzylistview/JazzyListView;
    invoke-static {v0}, Lcom/lb/myapidemo/AnimationListActivity;->access$0(Lcom/lb/myapidemo/AnimationListActivity;)Lcom/twotoasters/jazzylistview/JazzyListView;

    move-result-object v0

    new-instance v1, Lcom/twotoasters/jazzylistview/effects/TiltEffect;

    invoke-direct {v1}, Lcom/twotoasters/jazzylistview/effects/TiltEffect;-><init>()V

    invoke-virtual {v0, v1}, Lcom/twotoasters/jazzylistview/JazzyListView;->setTransitionEffect(Lcom/twotoasters/jazzylistview/JazzyEffect;)V

    goto/16 :goto_0

    .line 132
    :pswitch_c
    iget-object v0, p0, Lcom/lb/myapidemo/AnimationListActivity$1$1;->this$1:Lcom/lb/myapidemo/AnimationListActivity$1;

    # getter for: Lcom/lb/myapidemo/AnimationListActivity$1;->this$0:Lcom/lb/myapidemo/AnimationListActivity;
    invoke-static {v0}, Lcom/lb/myapidemo/AnimationListActivity$1;->access$0(Lcom/lb/myapidemo/AnimationListActivity$1;)Lcom/lb/myapidemo/AnimationListActivity;

    move-result-object v0

    # getter for: Lcom/lb/myapidemo/AnimationListActivity;->listview:Lcom/twotoasters/jazzylistview/JazzyListView;
    invoke-static {v0}, Lcom/lb/myapidemo/AnimationListActivity;->access$0(Lcom/lb/myapidemo/AnimationListActivity;)Lcom/twotoasters/jazzylistview/JazzyListView;

    move-result-object v0

    new-instance v1, Lcom/twotoasters/jazzylistview/effects/TwirlEffect;

    invoke-direct {v1}, Lcom/twotoasters/jazzylistview/effects/TwirlEffect;-><init>()V

    invoke-virtual {v0, v1}, Lcom/twotoasters/jazzylistview/JazzyListView;->setTransitionEffect(Lcom/twotoasters/jazzylistview/JazzyEffect;)V

    goto/16 :goto_0

    .line 135
    :pswitch_d
    iget-object v0, p0, Lcom/lb/myapidemo/AnimationListActivity$1$1;->this$1:Lcom/lb/myapidemo/AnimationListActivity$1;

    # getter for: Lcom/lb/myapidemo/AnimationListActivity$1;->this$0:Lcom/lb/myapidemo/AnimationListActivity;
    invoke-static {v0}, Lcom/lb/myapidemo/AnimationListActivity$1;->access$0(Lcom/lb/myapidemo/AnimationListActivity$1;)Lcom/lb/myapidemo/AnimationListActivity;

    move-result-object v0

    # getter for: Lcom/lb/myapidemo/AnimationListActivity;->listview:Lcom/twotoasters/jazzylistview/JazzyListView;
    invoke-static {v0}, Lcom/lb/myapidemo/AnimationListActivity;->access$0(Lcom/lb/myapidemo/AnimationListActivity;)Lcom/twotoasters/jazzylistview/JazzyListView;

    move-result-object v0

    new-instance v1, Lcom/twotoasters/jazzylistview/effects/WaveEffect;

    invoke-direct {v1}, Lcom/twotoasters/jazzylistview/effects/WaveEffect;-><init>()V

    invoke-virtual {v0, v1}, Lcom/twotoasters/jazzylistview/JazzyListView;->setTransitionEffect(Lcom/twotoasters/jazzylistview/JazzyEffect;)V

    goto/16 :goto_0

    .line 138
    :pswitch_e
    iget-object v0, p0, Lcom/lb/myapidemo/AnimationListActivity$1$1;->this$1:Lcom/lb/myapidemo/AnimationListActivity$1;

    # getter for: Lcom/lb/myapidemo/AnimationListActivity$1;->this$0:Lcom/lb/myapidemo/AnimationListActivity;
    invoke-static {v0}, Lcom/lb/myapidemo/AnimationListActivity$1;->access$0(Lcom/lb/myapidemo/AnimationListActivity$1;)Lcom/lb/myapidemo/AnimationListActivity;

    move-result-object v0

    # getter for: Lcom/lb/myapidemo/AnimationListActivity;->listview:Lcom/twotoasters/jazzylistview/JazzyListView;
    invoke-static {v0}, Lcom/lb/myapidemo/AnimationListActivity;->access$0(Lcom/lb/myapidemo/AnimationListActivity;)Lcom/twotoasters/jazzylistview/JazzyListView;

    move-result-object v0

    new-instance v1, Lcom/twotoasters/jazzylistview/effects/ZipperEffect;

    invoke-direct {v1}, Lcom/twotoasters/jazzylistview/effects/ZipperEffect;-><init>()V

    invoke-virtual {v0, v1}, Lcom/twotoasters/jazzylistview/JazzyListView;->setTransitionEffect(Lcom/twotoasters/jazzylistview/JazzyEffect;)V

    goto/16 :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
