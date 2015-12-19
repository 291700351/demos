.class public Lcom/twotoasters/jazzylistview/effects/FanEffect;
.super Ljava/lang/Object;
.source "FanEffect.java"

# interfaces
.implements Lcom/twotoasters/jazzylistview/JazzyEffect;


# static fields
.field private static final INITIAL_ROTATION_ANGLE:I = 0x46


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
    .locals 1
    .param p1, "item"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "scrollDirection"    # I

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 31
    mul-int/lit8 v0, p3, 0x46

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 32
    return-void
.end method

.method public setupAnimation(Landroid/view/View;IILandroid/view/ViewPropertyAnimator;)V
    .locals 1
    .param p1, "item"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "scrollDirection"    # I
    .param p4, "animator"    # Landroid/view/ViewPropertyAnimator;

    .prologue
    .line 36
    mul-int/lit8 v0, p3, -0x46

    int-to-float v0, v0

    invoke-virtual {p4, v0}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    .line 37
    return-void
.end method
