.class public final Lcom/lb/myapidemo/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lb/myapidemo/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final BiuEditStyle:[I

.field public static final BiuEditStyle_biu_duration:I = 0x3

.field public static final BiuEditStyle_biu_text_color:I = 0x0

.field public static final BiuEditStyle_biu_text_scale:I = 0x2

.field public static final BiuEditStyle_biu_text_start_size:I = 0x1

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
    .line 581
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lb/myapidemo/R$styleable;->BiuEditStyle:[I

    .line 661
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/lb/myapidemo/R$styleable;->JazzyListView:[I

    .line 564
    return-void

    .line 581
    nop

    :array_0
    .array-data 4
        0x7f010005
        0x7f010006
        0x7f010007
        0x7f010008
    .end array-data

    .line 661
    :array_1
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
    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
