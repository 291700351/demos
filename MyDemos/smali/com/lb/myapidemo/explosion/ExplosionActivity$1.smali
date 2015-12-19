.class Lcom/lb/myapidemo/explosion/ExplosionActivity$1;
.super Ljava/lang/Object;
.source "ExplosionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lb/myapidemo/explosion/ExplosionActivity;->addListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lb/myapidemo/explosion/ExplosionActivity;


# direct methods
.method constructor <init>(Lcom/lb/myapidemo/explosion/ExplosionActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lb/myapidemo/explosion/ExplosionActivity$1;->this$0:Lcom/lb/myapidemo/explosion/ExplosionActivity;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lb/myapidemo/explosion/ExplosionActivity$1;->this$0:Lcom/lb/myapidemo/explosion/ExplosionActivity;

    # getter for: Lcom/lb/myapidemo/explosion/ExplosionActivity;->mExplosionField:Lcom/lb/libexplosion/view/ExplosionField;
    invoke-static {v0}, Lcom/lb/myapidemo/explosion/ExplosionActivity;->access$0(Lcom/lb/myapidemo/explosion/ExplosionActivity;)Lcom/lb/libexplosion/view/ExplosionField;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lb/libexplosion/view/ExplosionField;->explode(Landroid/view/View;)V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-void
.end method
