.class public Lcom/twotoasters/jazzylistview/effects/HelixEffect;
.super Ljava/lang/Object;
.source "HelixEffect.java"

# interfaces
.implements Lcom/twotoasters/jazzylistview/JazzyEffect;


# static fields
.field private static final INITIAL_ROTATION_ANGLE:I = 0xb4


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
    .line 29
    const/high16 v0, 0x43340000

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 30
    return-void
.end method

.method public setupAnimation(Landroid/view/View;IILandroid/view/ViewPropertyAnimator;)V
    .locals 1
    .param p1, "item"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "scrollDirection"    # I
    .param p4, "animator"    # Landroid/view/ViewPropertyAnimator;

    .prologue
    .line 34
    mul-int/lit16 v0, p3, 0xb4

    int-to-float v0, v0

    invoke-virtual {p4, v0}, Landroid/view/ViewPropertyAnimator;->rotationYBy(F)Landroid/view/ViewPropertyAnimator;

    .line 35
    return-void
.end method
