.class public Lcom/lb/myapidemo/egg/GoldenEggActivity;
.super Landroid/app/Activity;
.source "GoldenEggActivity.java"


# instance fields
.field private animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private isBig:Z

.field private iv_egg:Landroid/widget/ImageView;

.field private mExplosionField:Lcom/lb/libexplosion/view/ExplosionField;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lb/myapidemo/egg/GoldenEggActivity;->isBig:Z

    .line 19
    return-void
.end method

.method static synthetic access$0(Lcom/lb/myapidemo/egg/GoldenEggActivity;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lb/myapidemo/egg/GoldenEggActivity;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lb/myapidemo/egg/GoldenEggActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lb/myapidemo/egg/GoldenEggActivity;->iv_egg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lb/myapidemo/egg/GoldenEggActivity;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/lb/myapidemo/egg/GoldenEggActivity;->isBig:Z

    return v0
.end method

.method static synthetic access$3(Lcom/lb/myapidemo/egg/GoldenEggActivity;Z)V
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/lb/myapidemo/egg/GoldenEggActivity;->isBig:Z

    return-void
.end method

.method static synthetic access$4(Lcom/lb/myapidemo/egg/GoldenEggActivity;)Lcom/lb/libexplosion/view/ExplosionField;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lb/myapidemo/egg/GoldenEggActivity;->mExplosionField:Lcom/lb/libexplosion/view/ExplosionField;

    return-object v0
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 47
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/egg/GoldenEggActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lb/myapidemo/egg/GoldenEggActivity;->iv_egg:Landroid/widget/ImageView;

    .line 48
    return-void
.end method

.method private setData()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/lb/myapidemo/egg/GoldenEggActivity;->iv_egg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/lb/myapidemo/egg/GoldenEggActivity;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 176
    iget-object v0, p0, Lcom/lb/myapidemo/egg/GoldenEggActivity;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 178
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lb/myapidemo/egg/GoldenEggActivity;->iv_egg:Landroid/widget/ImageView;

    new-instance v1, Lcom/lb/myapidemo/egg/GoldenEggActivity$1;

    invoke-direct {v1, p0}, Lcom/lb/myapidemo/egg/GoldenEggActivity$1;-><init>(Lcom/lb/myapidemo/egg/GoldenEggActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/egg/GoldenEggActivity;->setContentView(I)V

    .line 33
    invoke-static {p0}, Lcom/lb/libexplosion/view/ExplosionField;->attach2Window(Landroid/app/Activity;)Lcom/lb/libexplosion/view/ExplosionField;

    move-result-object v0

    iput-object v0, p0, Lcom/lb/myapidemo/egg/GoldenEggActivity;->mExplosionField:Lcom/lb/libexplosion/view/ExplosionField;

    .line 35
    invoke-direct {p0}, Lcom/lb/myapidemo/egg/GoldenEggActivity;->findView()V

    .line 37
    invoke-direct {p0}, Lcom/lb/myapidemo/egg/GoldenEggActivity;->setListener()V

    .line 39
    invoke-direct {p0}, Lcom/lb/myapidemo/egg/GoldenEggActivity;->setData()V

    .line 41
    return-void
.end method
