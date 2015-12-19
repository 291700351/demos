.class public Lcom/twotoasters/jazzylistview/JazzyHelper;
.super Ljava/lang/Object;
.source "JazzyHelper.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field public static final CARDS:I = 0x2

.field public static final CURL:I = 0x3

.field public static final DURATION:I = 0x12c

.field public static final FADE:I = 0xc

.field public static final FAN:I = 0x9

.field public static final FLIP:I = 0x5

.field public static final FLY:I = 0x6

.field public static final GROW:I = 0x1

.field public static final HELIX:I = 0x8

.field public static final MAX_VELOCITY_OFF:I = 0x0

.field public static final OPAQUE:I = 0xff

.field public static final REVERSE_FLY:I = 0x7

.field public static final SLIDE_IN:I = 0xe

.field public static final STANDARD:I = 0x0

.field public static final TILT:I = 0xa

.field public static final TRANSPARENT:I = 0x0

.field public static final TWIRL:I = 0xd

.field public static final WAVE:I = 0x4

.field public static final ZIPPER:I = 0xb


# instance fields
.field private mAdditionalOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private final mAlreadyAnimatedItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstVisibleItem:I

.field private mIsFlingEvent:Z

.field private mIsScrolling:Z

.field private mLastVisibleItem:I

.field private mMaxVelocity:I

.field private mOnlyAnimateNewItems:Z

.field private mOnlyAnimateOnFling:Z

.field private mPreviousEventTime:J

.field private mPreviousFirstVisibleItem:I

.field private mSimulateGridWithList:Z

.field private mSpeed:D

.field private mTransitionEffect:Lcom/twotoasters/jazzylistview/JazzyEffect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, v0, v0}, Lcom/twotoasters/jazzylistview/JazzyHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x4

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mTransitionEffect:Lcom/twotoasters/jazzylistview/JazzyEffect;

    .line 67
    iput-boolean v5, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mIsScrolling:Z

    .line 68
    iput v4, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mFirstVisibleItem:I

    .line 69
    iput v4, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mLastVisibleItem:I

    .line 70
    iput v5, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mPreviousFirstVisibleItem:I

    .line 71
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mPreviousEventTime:J

    .line 72
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mSpeed:D

    .line 73
    iput v5, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mMaxVelocity:I

    .line 89
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mAlreadyAnimatedItems:Ljava/util/HashSet;

    .line 90
    const/16 v2, 0x8

    .line 91
    .local v2, "transitionEffect":I
    const/4 v1, 0x0

    .line 93
    .local v1, "maxVelocity":I
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 94
    sget-object v3, Lcom/twotoasters/jazzylistview/R$styleable;->JazzyListView:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 95
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 96
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 97
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mOnlyAnimateNewItems:Z

    .line 98
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mOnlyAnimateOnFling:Z

    .line 99
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mSimulateGridWithList:Z

    .line 100
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    invoke-virtual {p0, v2}, Lcom/twotoasters/jazzylistview/JazzyHelper;->setTransitionEffect(I)V

    .line 104
    invoke-virtual {p0, v1}, Lcom/twotoasters/jazzylistview/JazzyHelper;->setMaxAnimationVelocity(I)V

    .line 105
    return-void
.end method

.method private doJazziness(Landroid/view/View;II)V
    .locals 6
    .param p1, "item"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "scrollDirection"    # I

    .prologue
    .line 189
    iget-boolean v2, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mIsScrolling:Z

    if-eqz v2, :cond_0

    .line 190
    iget-boolean v2, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mOnlyAnimateNewItems:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mAlreadyAnimatedItems:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-boolean v2, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mOnlyAnimateOnFling:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mIsFlingEvent:Z

    if-eqz v2, :cond_0

    .line 196
    :cond_2
    iget v2, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mMaxVelocity:I

    if-lez v2, :cond_3

    iget v2, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mMaxVelocity:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mSpeed:D

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 199
    :cond_3
    iget-boolean v2, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mSimulateGridWithList:Z

    if-eqz v2, :cond_5

    move-object v1, p1

    .line 200
    check-cast v1, Landroid/view/ViewGroup;

    .line 201
    .local v1, "itemRow":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_4

    .line 207
    .end local v0    # "i":I
    .end local v1    # "itemRow":Landroid/view/ViewGroup;
    :goto_2
    iget-object v2, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mAlreadyAnimatedItems:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 202
    .restart local v0    # "i":I
    .restart local v1    # "itemRow":Landroid/view/ViewGroup;
    :cond_4
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lcom/twotoasters/jazzylistview/JazzyHelper;->doJazzinessImpl(Landroid/view/View;II)V

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 204
    .end local v0    # "i":I
    .end local v1    # "itemRow":Landroid/view/ViewGroup;
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/twotoasters/jazzylistview/JazzyHelper;->doJazzinessImpl(Landroid/view/View;II)V

    goto :goto_2
.end method

.method private doJazzinessImpl(Landroid/view/View;II)V
    .locals 4
    .param p1, "item"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "scrollDirection"    # I

    .prologue
    .line 212
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 213
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 214
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 216
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    if-lez p3, :cond_0

    const/4 p3, 0x1

    .line 217
    :goto_0
    iget-object v1, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mTransitionEffect:Lcom/twotoasters/jazzylistview/JazzyEffect;

    invoke-interface {v1, p1, p2, p3}, Lcom/twotoasters/jazzylistview/JazzyEffect;->initView(Landroid/view/View;II)V

    .line 218
    iget-object v1, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mTransitionEffect:Lcom/twotoasters/jazzylistview/JazzyEffect;

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/twotoasters/jazzylistview/JazzyEffect;->setupAnimation(Landroid/view/View;IILandroid/view/ViewPropertyAnimator;)V

    .line 219
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 220
    return-void

    .line 216
    :cond_0
    const/4 p3, -0x1

    goto :goto_0
.end method

.method private notifyAdditionalOnScrollListener(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 297
    iget-object v0, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mAdditionalOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mAdditionalOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 300
    :cond_0
    return-void
.end method

.method private notifyAdditionalOnScrollStateChangedListener(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 306
    iget-object v0, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mAdditionalOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mAdditionalOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 309
    :cond_0
    return-void
.end method

.method private setVelocity(II)V
    .locals 10
    .param p1, "firstVisibleItem"    # I
    .param p2, "totalItemCount"    # I

    .prologue
    .line 157
    iget v6, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mMaxVelocity:I

    if-lez v6, :cond_0

    iget v6, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mPreviousFirstVisibleItem:I

    if-eq v6, p1, :cond_0

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 159
    .local v0, "currTime":J
    iget-wide v6, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mPreviousEventTime:J

    sub-long v4, v0, v6

    .line 160
    .local v4, "timeToScrollOneItem":J
    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-gez v6, :cond_3

    .line 161
    const-wide/high16 v6, 0x3ff0000000000000L

    long-to-double v8, v4

    div-double/2addr v6, v8

    const-wide v8, 0x408f400000000000L

    mul-double v2, v6, v8

    .line 164
    .local v2, "newSpeed":D
    const-wide v6, 0x3fecccccc0000000L

    iget-wide v8, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mSpeed:D

    mul-double/2addr v6, v8

    cmpg-double v6, v2, v6

    if-gez v6, :cond_1

    .line 165
    iget-wide v6, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mSpeed:D

    const-wide v8, 0x3fecccccc0000000L

    mul-double/2addr v6, v8

    iput-wide v6, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mSpeed:D

    .line 175
    .end local v2    # "newSpeed":D
    :goto_0
    iput p1, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mPreviousFirstVisibleItem:I

    .line 176
    iput-wide v0, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mPreviousEventTime:J

    .line 178
    .end local v0    # "currTime":J
    .end local v4    # "timeToScrollOneItem":J
    :cond_0
    return-void

    .line 166
    .restart local v0    # "currTime":J
    .restart local v2    # "newSpeed":D
    .restart local v4    # "timeToScrollOneItem":J
    :cond_1
    const-wide v6, 0x3ff19999a0000000L

    iget-wide v8, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mSpeed:D

    mul-double/2addr v6, v8

    cmpl-double v6, v2, v6

    if-lez v6, :cond_2

    .line 167
    iget-wide v6, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mSpeed:D

    const-wide v8, 0x3ff19999a0000000L

    mul-double/2addr v6, v8

    iput-wide v6, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mSpeed:D

    goto :goto_0

    .line 169
    :cond_2
    iput-wide v2, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mSpeed:D

    goto :goto_0

    .line 172
    .end local v2    # "newSpeed":D
    :cond_3
    const-wide/high16 v6, 0x3ff0000000000000L

    long-to-double v8, v4

    div-double/2addr v6, v8

    const-wide v8, 0x408f400000000000L

    mul-double/2addr v6, v8

    iput-wide v6, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mSpeed:D

    goto :goto_0
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 117
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/twotoasters/jazzylistview/JazzyHelper;->onScrolled(Landroid/view/ViewGroup;III)V

    .line 118
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twotoasters/jazzylistview/JazzyHelper;->notifyAdditionalOnScrollListener(Landroid/widget/AbsListView;III)V

    .line 119
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 227
    packed-switch p2, :pswitch_data_0

    .line 241
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/twotoasters/jazzylistview/JazzyHelper;->notifyAdditionalOnScrollStateChangedListener(Landroid/widget/AbsListView;I)V

    .line 242
    return-void

    .line 229
    :pswitch_0
    iput-boolean v0, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mIsScrolling:Z

    .line 230
    iput-boolean v0, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mIsFlingEvent:Z

    goto :goto_0

    .line 233
    :pswitch_1
    iput-boolean v1, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mIsFlingEvent:Z

    goto :goto_0

    .line 236
    :pswitch_2
    iput-boolean v1, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mIsScrolling:Z

    .line 237
    iput-boolean v0, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mIsFlingEvent:Z

    goto :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final onScrolled(Landroid/view/ViewGroup;III)V
    .locals 10
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v9, -0x1

    .line 122
    iget v7, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mFirstVisibleItem:I

    if-eq v7, v9, :cond_1

    iget v7, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mLastVisibleItem:I

    if-eq v7, v9, :cond_1

    move v5, v6

    .line 124
    .local v5, "shouldAnimateItems":Z
    :goto_0
    add-int v7, p2, p3

    add-int/lit8 v4, v7, -0x1

    .line 125
    .local v4, "lastVisibleItem":I
    iget-boolean v7, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mIsScrolling:Z

    if-eqz v7, :cond_4

    if-eqz v5, :cond_4

    .line 126
    invoke-direct {p0, p2, p4}, Lcom/twotoasters/jazzylistview/JazzyHelper;->setVelocity(II)V

    .line 127
    const/4 v1, 0x0

    .line 128
    .local v1, "indexAfterFirst":I
    :goto_1
    add-int v7, p2, v1

    iget v8, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mFirstVisibleItem:I

    if-lt v7, v8, :cond_2

    .line 134
    const/4 v2, 0x0

    .line 135
    .local v2, "indexBeforeLast":I
    :goto_2
    sub-int v7, v4, v2

    iget v8, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mLastVisibleItem:I

    if-gt v7, v8, :cond_3

    .line 146
    .end local v1    # "indexAfterFirst":I
    .end local v2    # "indexBeforeLast":I
    :cond_0
    iput p2, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mFirstVisibleItem:I

    .line 147
    iput v4, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mLastVisibleItem:I

    .line 148
    return-void

    .line 122
    .end local v4    # "lastVisibleItem":I
    .end local v5    # "shouldAnimateItems":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 129
    .restart local v1    # "indexAfterFirst":I
    .restart local v4    # "lastVisibleItem":I
    .restart local v5    # "shouldAnimateItems":Z
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 130
    .local v3, "item":Landroid/view/View;
    add-int v7, p2, v1

    invoke-direct {p0, v3, v7, v9}, Lcom/twotoasters/jazzylistview/JazzyHelper;->doJazziness(Landroid/view/View;II)V

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 136
    .end local v3    # "item":Landroid/view/View;
    .restart local v2    # "indexBeforeLast":I
    :cond_3
    sub-int v7, v4, p2

    sub-int/2addr v7, v2

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 137
    .restart local v3    # "item":Landroid/view/View;
    sub-int v7, v4, v2

    invoke-direct {p0, v3, v7, v6}, Lcom/twotoasters/jazzylistview/JazzyHelper;->doJazziness(Landroid/view/View;II)V

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 140
    .end local v1    # "indexAfterFirst":I
    .end local v2    # "indexBeforeLast":I
    .end local v3    # "item":Landroid/view/View;
    :cond_4
    if-nez v5, :cond_0

    .line 141
    move v0, p2

    .local v0, "i":I
    :goto_3
    if-ge v0, p3, :cond_0

    .line 142
    iget-object v6, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mAlreadyAnimatedItems:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public setFlingEvent(Z)V
    .locals 0
    .param p1, "isFlingEvent"    # Z

    .prologue
    .line 290
    iput-boolean p1, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mIsFlingEvent:Z

    .line 291
    return-void
.end method

.method public setMaxAnimationVelocity(I)V
    .locals 0
    .param p1, "itemsPerSecond"    # I

    .prologue
    .line 278
    iput p1, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mMaxVelocity:I

    .line 279
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mAdditionalOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 110
    return-void
.end method

.method public setScrolling(Z)V
    .locals 0
    .param p1, "isScrolling"    # Z

    .prologue
    .line 286
    iput-boolean p1, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mIsScrolling:Z

    .line 287
    return-void
.end method

.method public setShouldOnlyAnimateFling(Z)V
    .locals 0
    .param p1, "onlyFling"    # Z

    .prologue
    .line 274
    iput-boolean p1, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mOnlyAnimateOnFling:Z

    .line 275
    return-void
.end method

.method public setShouldOnlyAnimateNewItems(Z)V
    .locals 0
    .param p1, "onlyAnimateNew"    # Z

    .prologue
    .line 270
    iput-boolean p1, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mOnlyAnimateNewItems:Z

    .line 271
    return-void
.end method

.method public setSimulateGridWithList(Z)V
    .locals 0
    .param p1, "simulateGridWithList"    # Z

    .prologue
    .line 282
    iput-boolean p1, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mSimulateGridWithList:Z

    .line 283
    return-void
.end method

.method public setTransitionEffect(I)V
    .locals 1
    .param p1, "transitionEffect"    # I

    .prologue
    .line 245
    packed-switch p1, :pswitch_data_0

    .line 263
    :goto_0
    return-void

    .line 246
    :pswitch_0
    new-instance v0, Lcom/twotoasters/jazzylistview/effects/StandardEffect;

    invoke-direct {v0}, Lcom/twotoasters/jazzylistview/effects/StandardEffect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/twotoasters/jazzylistview/JazzyHelper;->setTransitionEffect(Lcom/twotoasters/jazzylistview/JazzyEffect;)V

    goto :goto_0

    .line 247
    :pswitch_1
    new-instance v0, Lcom/twotoasters/jazzylistview/effects/GrowEffect;

    invoke-direct {v0}, Lcom/twotoasters/jazzylistview/effects/GrowEffect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/twotoasters/jazzylistview/JazzyHelper;->setTransitionEffect(Lcom/twotoasters/jazzylistview/JazzyEffect;)V

    goto :goto_0

    .line 248
    :pswitch_2
    new-instance v0, Lcom/twotoasters/jazzylistview/effects/CardsEffect;

    invoke-direct {v0}, Lcom/twotoasters/jazzylistview/effects/CardsEffect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/twotoasters/jazzylistview/JazzyHelper;->setTransitionEffect(Lcom/twotoasters/jazzylistview/JazzyEffect;)V

    goto :goto_0

    .line 249
    :pswitch_3
    new-instance v0, Lcom/twotoasters/jazzylistview/effects/CurlEffect;

    invoke-direct {v0}, Lcom/twotoasters/jazzylistview/effects/CurlEffect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/twotoasters/jazzylistview/JazzyHelper;->setTransitionEffect(Lcom/twotoasters/jazzylistview/JazzyEffect;)V

    goto :goto_0

    .line 250
    :pswitch_4
    new-instance v0, Lcom/twotoasters/jazzylistview/effects/WaveEffect;

    invoke-direct {v0}, Lcom/twotoasters/jazzylistview/effects/WaveEffect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/twotoasters/jazzylistview/JazzyHelper;->setTransitionEffect(Lcom/twotoasters/jazzylistview/JazzyEffect;)V

    goto :goto_0

    .line 251
    :pswitch_5
    new-instance v0, Lcom/twotoasters/jazzylistview/effects/FlipEffect;

    invoke-direct {v0}, Lcom/twotoasters/jazzylistview/effects/FlipEffect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/twotoasters/jazzylistview/JazzyHelper;->setTransitionEffect(Lcom/twotoasters/jazzylistview/JazzyEffect;)V

    goto :goto_0

    .line 252
    :pswitch_6
    new-instance v0, Lcom/twotoasters/jazzylistview/effects/FlyEffect;

    invoke-direct {v0}, Lcom/twotoasters/jazzylistview/effects/FlyEffect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/twotoasters/jazzylistview/JazzyHelper;->setTransitionEffect(Lcom/twotoasters/jazzylistview/JazzyEffect;)V

    goto :goto_0

    .line 253
    :pswitch_7
    new-instance v0, Lcom/twotoasters/jazzylistview/effects/ReverseFlyEffect;

    invoke-direct {v0}, Lcom/twotoasters/jazzylistview/effects/ReverseFlyEffect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/twotoasters/jazzylistview/JazzyHelper;->setTransitionEffect(Lcom/twotoasters/jazzylistview/JazzyEffect;)V

    goto :goto_0

    .line 254
    :pswitch_8
    new-instance v0, Lcom/twotoasters/jazzylistview/effects/HelixEffect;

    invoke-direct {v0}, Lcom/twotoasters/jazzylistview/effects/HelixEffect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/twotoasters/jazzylistview/JazzyHelper;->setTransitionEffect(Lcom/twotoasters/jazzylistview/JazzyEffect;)V

    goto :goto_0

    .line 255
    :pswitch_9
    new-instance v0, Lcom/twotoasters/jazzylistview/effects/FanEffect;

    invoke-direct {v0}, Lcom/twotoasters/jazzylistview/effects/FanEffect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/twotoasters/jazzylistview/JazzyHelper;->setTransitionEffect(Lcom/twotoasters/jazzylistview/JazzyEffect;)V

    goto :goto_0

    .line 256
    :pswitch_a
    new-instance v0, Lcom/twotoasters/jazzylistview/effects/TiltEffect;

    invoke-direct {v0}, Lcom/twotoasters/jazzylistview/effects/TiltEffect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/twotoasters/jazzylistview/JazzyHelper;->setTransitionEffect(Lcom/twotoasters/jazzylistview/JazzyEffect;)V

    goto :goto_0

    .line 257
    :pswitch_b
    new-instance v0, Lcom/twotoasters/jazzylistview/effects/ZipperEffect;

    invoke-direct {v0}, Lcom/twotoasters/jazzylistview/effects/ZipperEffect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/twotoasters/jazzylistview/JazzyHelper;->setTransitionEffect(Lcom/twotoasters/jazzylistview/JazzyEffect;)V

    goto :goto_0

    .line 258
    :pswitch_c
    new-instance v0, Lcom/twotoasters/jazzylistview/effects/FadeEffect;

    invoke-direct {v0}, Lcom/twotoasters/jazzylistview/effects/FadeEffect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/twotoasters/jazzylistview/JazzyHelper;->setTransitionEffect(Lcom/twotoasters/jazzylistview/JazzyEffect;)V

    goto :goto_0

    .line 259
    :pswitch_d
    new-instance v0, Lcom/twotoasters/jazzylistview/effects/TwirlEffect;

    invoke-direct {v0}, Lcom/twotoasters/jazzylistview/effects/TwirlEffect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/twotoasters/jazzylistview/JazzyHelper;->setTransitionEffect(Lcom/twotoasters/jazzylistview/JazzyEffect;)V

    goto :goto_0

    .line 260
    :pswitch_e
    new-instance v0, Lcom/twotoasters/jazzylistview/effects/SlideInEffect;

    invoke-direct {v0}, Lcom/twotoasters/jazzylistview/effects/SlideInEffect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/twotoasters/jazzylistview/JazzyHelper;->setTransitionEffect(Lcom/twotoasters/jazzylistview/JazzyEffect;)V

    goto/16 :goto_0

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public setTransitionEffect(Lcom/twotoasters/jazzylistview/JazzyEffect;)V
    .locals 0
    .param p1, "transitionEffect"    # Lcom/twotoasters/jazzylistview/JazzyEffect;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/twotoasters/jazzylistview/JazzyHelper;->mTransitionEffect:Lcom/twotoasters/jazzylistview/JazzyEffect;

    .line 267
    return-void
.end method
