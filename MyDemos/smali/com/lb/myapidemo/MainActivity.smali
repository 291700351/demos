.class public Lcom/lb/myapidemo/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field private demoNames:[Ljava/lang/String;

.field private listview:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 41
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lb/myapidemo/MainActivity;->listview:Landroid/widget/ListView;

    .line 42
    return-void
.end method

.method private setData()V
    .locals 4

    .prologue
    .line 71
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 72
    const v1, 0x7f030010

    const v2, 0x7f08001c

    iget-object v3, p0, Lcom/lb/myapidemo/MainActivity;->demoNames:[Ljava/lang/String;

    .line 71
    invoke-direct {v0, p0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 73
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/lb/myapidemo/MainActivity;->listview:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lb/myapidemo/MainActivity;->listview:Landroid/widget/ListView;

    new-instance v1, Lcom/lb/myapidemo/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/lb/myapidemo/MainActivity$1;-><init>(Lcom/lb/myapidemo/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 64
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/MainActivity;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lcom/lb/myapidemo/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0a0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lb/myapidemo/MainActivity;->demoNames:[Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Lcom/lb/myapidemo/MainActivity;->findView()V

    .line 32
    invoke-direct {p0}, Lcom/lb/myapidemo/MainActivity;->setListener()V

    .line 34
    invoke-direct {p0}, Lcom/lb/myapidemo/MainActivity;->setData()V

    .line 35
    return-void
.end method
