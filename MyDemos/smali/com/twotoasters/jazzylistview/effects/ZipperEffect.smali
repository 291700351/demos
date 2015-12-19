.class public Lcom/twotoasters/jazzylistview/effects/ZipperEffect;
.super Ljava/lang/Object;
.source "ZipperEffect.java"

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
    .locals 3
    .param p1, "item"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "scrollDirection"    # I

    .prologue
    const/4 v1, 0x1

    .line 27
    rem-int/lit8 v2, p2, 0x2

    if-nez v2, :cond_1

    move v0, v1

    .line 28
    .local v0, "isEven":Z
    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, -0x1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 29
    return-void

    .line 27
    .end local v0    # "isEven":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setupAnimation(Landroid/view/View;IILandroid/view/ViewPropertyAnimator;)V
    .locals 1
    .param p1, "item"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "scrollDirection"    # I
    .param p4, "animator"    # Landroid/view/ViewPropertyAnimator;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 34
    return-void
.end method
