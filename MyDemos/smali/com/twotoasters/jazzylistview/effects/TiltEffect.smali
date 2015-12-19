.class public Lcom/twotoasters/jazzylistview/effects/TiltEffect;
.super Ljava/lang/Object;
.source "TiltEffect.java"

# interfaces
.implements Lcom/twotoasters/jazzylistview/JazzyEffect;


# static fields
.field private static final INITIAL_SCALE_FACTOR:F = 0.7f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initView(Landroid/view/View;II)V
    .locals 2
    .param p1, "item"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "scrollDirection"    # I

    .prologue
    const v1, 0x3f333333

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 32
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 33
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, p3

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 35
    const/high16 v0, 0x42fe0000

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 36
    return-void
.end method

.method public setupAnimation(Landroid/view/View;IILandroid/view/ViewPropertyAnimator;)V
    .locals 2
    .param p1, "item"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "scrollDirection"    # I
    .param p4, "animator"    # Landroid/view/ViewPropertyAnimator;

    .prologue
    const/high16 v1, 0x3f800000

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, p3

    int-to-float v0, v0

    invoke-virtual {p4, v0}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 44
    const/high16 v1, 0x437f0000

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 45
    return-void
.end method
