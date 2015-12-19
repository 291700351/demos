.class public Lcom/twotoasters/jazzylistview/effects/StandardEffect;
.super Ljava/lang/Object;
.source "StandardEffect.java"

# interfaces
.implements Lcom/twotoasters/jazzylistview/JazzyEffect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initView(Landroid/view/View;II)V
    .locals 0
    .param p1, "item"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "scrollDirection"    # I

    .prologue
    .line 28
    return-void
.end method

.method public setupAnimation(Landroid/view/View;IILandroid/view/ViewPropertyAnimator;)V
    .locals 0
    .param p1, "item"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "scrollDirection"    # I
    .param p4, "animator"    # Landroid/view/ViewPropertyAnimator;

    .prologue
    .line 33
    return-void
.end method
