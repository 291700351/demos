.class public Lcom/lb/myapidemo/explosion/ExplosionActivity;
.super Landroid/app/Activity;
.source "ExplosionActivity.java"


# instance fields
.field private mExplosionField:Lcom/lb/libexplosion/view/ExplosionField;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lb/myapidemo/explosion/ExplosionActivity;)Lcom/lb/libexplosion/view/ExplosionField;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/lb/myapidemo/explosion/ExplosionActivity;->mExplosionField:Lcom/lb/libexplosion/view/ExplosionField;

    return-object v0
.end method

.method private addListener(Landroid/view/View;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 31
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 32
    check-cast v1, Landroid/view/ViewGroup;

    .line 33
    .local v1, "parent":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 46
    .end local v0    # "i":I
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :goto_1
    return-void

    .line 34
    .restart local v0    # "i":I
    .restart local v1    # "parent":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lb/myapidemo/explosion/ExplosionActivity;->addListener(Landroid/view/View;)V

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    .end local v0    # "i":I
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 38
    new-instance v2, Lcom/lb/myapidemo/explosion/ExplosionActivity$1;

    invoke-direct {v2, p0}, Lcom/lb/myapidemo/explosion/ExplosionActivity$1;-><init>(Lcom/lb/myapidemo/explosion/ExplosionActivity;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private reset(Landroid/view/View;)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/high16 v3, 0x3f800000

    .line 59
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 60
    check-cast v1, Landroid/view/ViewGroup;

    .line 61
    .local v1, "parent":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 69
    .end local v0    # "i":I
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :goto_1
    return-void

    .line 62
    .restart local v0    # "i":I
    .restart local v1    # "parent":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lb/myapidemo/explosion/ExplosionActivity;->reset(Landroid/view/View;)V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "i":I
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 66
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 67
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 49
    const v1, 0x7f08001f

    invoke-virtual {p0, v1}, Lcom/lb/myapidemo/explosion/ExplosionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "root":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/lb/myapidemo/explosion/ExplosionActivity;->reset(Landroid/view/View;)V

    .line 51
    invoke-direct {p0, v0}, Lcom/lb/myapidemo/explosion/ExplosionActivity;->addListener(Landroid/view/View;)V

    .line 52
    iget-object v1, p0, Lcom/lb/myapidemo/explosion/ExplosionActivity;->mExplosionField:Lcom/lb/libexplosion/view/ExplosionField;

    invoke-virtual {v1}, Lcom/lb/libexplosion/view/ExplosionField;->clear()V

    .line 54
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/explosion/ExplosionActivity;->setContentView(I)V

    .line 20
    invoke-static {p0}, Lcom/lb/libexplosion/view/ExplosionField;->attach2Window(Landroid/app/Activity;)Lcom/lb/libexplosion/view/ExplosionField;

    move-result-object v0

    iput-object v0, p0, Lcom/lb/myapidemo/explosion/ExplosionActivity;->mExplosionField:Lcom/lb/libexplosion/view/ExplosionField;

    .line 21
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/explosion/ExplosionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lb/myapidemo/explosion/ExplosionActivity;->addListener(Landroid/view/View;)V

    .line 23
    return-void
.end method
