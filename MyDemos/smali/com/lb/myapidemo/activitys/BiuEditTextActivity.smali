.class public Lcom/lb/myapidemo/activitys/BiuEditTextActivity;
.super Landroid/app/Activity;
.source "BiuEditTextActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/activitys/BiuEditTextActivity;->setContentView(I)V

    .line 20
    return-void
.end method
