.class public final Lcom/twotoasters/jazzylistview/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twotoasters/jazzylistview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final JazzyListView:[I

.field public static final JazzyListView_effect:I = 0x0

.field public static final JazzyListView_max_velocity:I = 0x4

.field public static final JazzyListView_only_animate_fling:I = 0x2

.field public static final JazzyListView_only_animate_new_items:I = 0x1

.field public static final JazzyListView_simulate_grid_with_list:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/twotoasters/jazzylistview/R$styleable;->JazzyListView:[I

    .line 39
    return-void

    .line 40
    nop

    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
