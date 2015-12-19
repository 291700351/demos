.class Lcom/lb/myapidemo/AnimationListActivity$1;
.super Ljava/lang/Object;
.source "AnimationListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lb/myapidemo/AnimationListActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lb/myapidemo/AnimationListActivity;


# direct methods
.method constructor <init>(Lcom/lb/myapidemo/AnimationListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lb/myapidemo/AnimationListActivity$1;->this$0:Lcom/lb/myapidemo/AnimationListActivity;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lb/myapidemo/AnimationListActivity$1;)Lcom/lb/myapidemo/AnimationListActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lb/myapidemo/AnimationListActivity$1;->this$0:Lcom/lb/myapidemo/AnimationListActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 77
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 78
    iget-object v2, p0, Lcom/lb/myapidemo/AnimationListActivity$1;->this$0:Lcom/lb/myapidemo/AnimationListActivity;

    .line 77
    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 79
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "\u9009\u62e9\u4e00\u4e2aListView\u7684\u52a8\u753b\u6548\u679c"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 82
    const/16 v2, 0xf

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0 CardsEffect"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1 CurlEffect"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 83
    const-string v3, "2 FadeEffect"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "3 FanEffect"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "4 FlipEffect"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 84
    const-string v3, "5 FlyEffect"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "6 GrowEffect"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "7 HelixEffect"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 85
    const-string v3, "8 ReverseFlyEffect"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "9 SlideInEffect"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    .line 86
    const-string v3, "10 StandardEffect"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "11 TiltEffect"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "12 TwirlEffect"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    .line 87
    const-string v3, "13 WaveEffect"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "14 ZipperEffect"

    aput-object v3, v1, v2

    .line 90
    .local v1, "effects":[Ljava/lang/String;
    new-instance v2, Lcom/lb/myapidemo/AnimationListActivity$1$1;

    invoke-direct {v2, p0, v1}, Lcom/lb/myapidemo/AnimationListActivity$1$1;-><init>(Lcom/lb/myapidemo/AnimationListActivity$1;[Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 146
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 148
    return-void
.end method
