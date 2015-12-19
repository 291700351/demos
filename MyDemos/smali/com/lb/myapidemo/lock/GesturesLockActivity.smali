.class public Lcom/lb/myapidemo/lock/GesturesLockActivity;
.super Landroid/app/Activity;
.source "GesturesLockActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/lock/GesturesLockActivity;->setContentView(I)V

    .line 21
    return-void
.end method
