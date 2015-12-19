.class public Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;
.super Landroid/widget/LinearLayout;
.source "PlatformGridView.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$GridView;,
        Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;
    }
.end annotation


# static fields
.field private static final MIN_CLICK_INTERVAL:I = 0x3e8

.field private static final MSG_PLATFORM_LIST_GOT:I = 0x1


# instance fields
.field private COLUMN_PER_LINE:I

.field private LINE_PER_PAGE:I

.field private PAGE_SIZE:I

.field private bluePoint:Landroid/graphics/Bitmap;

.field private customers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/onekeyshare/CustomerLogo;",
            ">;"
        }
    .end annotation
.end field

.field private grayPoint:Landroid/graphics/Bitmap;

.field private hiddenPlatforms:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastClickTime:J

.field private pager:Lcom/mob/tools/gui/ViewPagerClassic;

.field private parent:Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;

.field private platformList:[Lcn/sharesdk/framework/Platform;

.field private points:[Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->init(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->init(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method static synthetic access$0(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)[Lcn/sharesdk/framework/Platform;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->platformList:[Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method static synthetic access$1(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->hiddenPlatforms:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->customers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->PAGE_SIZE:I

    return v0
.end method

.method static synthetic access$4(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I

    return v0
.end method

.method static synthetic access$5(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)[Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->grayPoint:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$7(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->bluePoint:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$8(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;[Lcn/sharesdk/framework/Platform;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->platformList:[Lcn/sharesdk/framework/Platform;

    return-void
.end method

.method private calPageSize()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 111
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/R;->getScreenWidth(Landroid/content/Context;)I

    move-result v3

    int-to-float v1, v3

    .line 112
    .local v1, "scrW":F
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/R;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    int-to-float v0, v3

    .line 113
    .local v0, "scrH":F
    div-float v2, v1, v0

    .line 114
    .local v2, "whR":F
    float-to-double v3, v2

    const-wide v5, 0x3fe428f5c28f5c29L

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    .line 115
    iput v7, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I

    .line 116
    iput v7, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->LINE_PER_PAGE:I

    .line 132
    :goto_0
    iget v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I

    iget v4, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->LINE_PER_PAGE:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->PAGE_SIZE:I

    .line 133
    return-void

    .line 117
    :cond_0
    float-to-double v3, v2

    const-wide/high16 v5, 0x3fe8000000000000L

    cmpg-double v3, v3, v5

    if-gez v3, :cond_1

    .line 118
    iput v7, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I

    .line 119
    const/4 v3, 0x2

    iput v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->LINE_PER_PAGE:I

    goto :goto_0

    .line 121
    :cond_1
    const/4 v3, 0x1

    iput v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->LINE_PER_PAGE:I

    .line 122
    float-to-double v3, v2

    const-wide/high16 v5, 0x3ffc000000000000L

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_2

    .line 123
    const/4 v3, 0x6

    iput v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I

    goto :goto_0

    .line 124
    :cond_2
    float-to-double v3, v2

    const-wide/high16 v5, 0x3ff8000000000000L

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_3

    .line 125
    const/4 v3, 0x5

    iput v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I

    goto :goto_0

    .line 126
    :cond_3
    float-to-double v3, v2

    const-wide v5, 0x3ff4cccccccccccdL

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_4

    .line 127
    const/4 v3, 0x4

    iput v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I

    goto :goto_0

    .line 129
    :cond_4
    iput v7, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->COLUMN_PER_LINE:I

    goto :goto_0
.end method

.method private disableOverScrollMode(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 250
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_0

    .line 261
    :goto_0
    return-void

    .line 254
    :cond_0
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string v3, "setOverScrollMode"

    .line 255
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    .line 254
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 256
    .local v0, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 257
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    .end local v0    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 259
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->calPageSize()V

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->setOrientation(I)V

    .line 86
    new-instance v0, Lcom/mob/tools/gui/ViewPagerClassic;

    invoke-direct {v0, p1}, Lcom/mob/tools/gui/ViewPagerClassic;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->pager:Lcom/mob/tools/gui/ViewPagerClassic;

    .line 87
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->pager:Lcom/mob/tools/gui/ViewPagerClassic;

    invoke-direct {p0, v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->disableOverScrollMode(Landroid/view/View;)V

    .line 88
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->pager:Lcom/mob/tools/gui/ViewPagerClassic;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    .line 89
    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 88
    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/ViewPagerClassic;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->pager:Lcom/mob/tools/gui/ViewPagerClassic;

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->addView(Landroid/view/View;)V

    .line 94
    new-instance v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$1;

    invoke-direct {v0, p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$1;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)V

    .line 107
    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$1;->start()V

    .line 108
    return-void
.end method


# virtual methods
.method public afterPlatformListGot()V
    .locals 17

    .prologue
    .line 147
    new-instance v1, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)V

    .line 148
    .local v1, "adapter":Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$PlatformAdapter;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->pager:Lcom/mob/tools/gui/ViewPagerClassic;

    invoke-virtual {v15, v1}, Lcom/mob/tools/gui/ViewPagerClassic;->setAdapter(Lcom/mob/tools/gui/ViewPagerAdapter;)V

    .line 149
    const/4 v11, 0x0

    .line 150
    .local v11, "pageCount":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->platformList:[Lcn/sharesdk/framework/Platform;

    if-eqz v15, :cond_0

    .line 151
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->customers:Ljava/util/ArrayList;

    if-nez v15, :cond_1

    const/4 v4, 0x0

    .line 152
    .local v4, "cusSize":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->platformList:[Lcn/sharesdk/framework/Platform;

    if-nez v15, :cond_2

    const/4 v12, 0x0

    .line 153
    .local v12, "platSize":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->hiddenPlatforms:Ljava/util/HashMap;

    if-nez v15, :cond_3

    const/4 v6, 0x0

    .line 154
    .local v6, "hideSize":I
    :goto_2
    sub-int/2addr v12, v6

    .line 155
    add-int v14, v12, v4

    .line 156
    .local v14, "size":I
    move-object/from16 v0, p0

    iget v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->PAGE_SIZE:I

    div-int v11, v14, v15

    .line 157
    move-object/from16 v0, p0

    iget v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->PAGE_SIZE:I

    rem-int v15, v14, v15

    if-lez v15, :cond_0

    .line 158
    add-int/lit8 v11, v11, 0x1

    .line 161
    .end local v4    # "cusSize":I
    .end local v6    # "hideSize":I
    .end local v12    # "platSize":I
    .end local v14    # "size":I
    :cond_0
    new-array v15, v11, [Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    .line 162
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    array-length v15, v15

    if-gtz v15, :cond_4

    .line 196
    :goto_3
    return-void

    .line 151
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->customers:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_0

    .line 152
    .restart local v4    # "cusSize":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->platformList:[Lcn/sharesdk/framework/Platform;

    array-length v12, v15

    goto :goto_1

    .line 153
    .restart local v12    # "platSize":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->hiddenPlatforms:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v6

    goto :goto_2

    .line 166
    .end local v4    # "cusSize":I
    .end local v12    # "platSize":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 167
    .local v2, "context":Landroid/content/Context;
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 169
    .local v8, "llPoints":Landroid/widget/LinearLayout;
    const/4 v15, 0x1

    if-le v11, v15, :cond_7

    const/4 v15, 0x0

    :goto_4
    invoke-virtual {v8, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 170
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x2

    .line 171
    const/16 v16, -0x2

    .line 170
    move/from16 v0, v16

    invoke-direct {v10, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 172
    .local v10, "lpLl":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v15, 0x1

    iput v15, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 173
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->addView(Landroid/view/View;)V

    .line 176
    const/4 v15, 0x5

    invoke-static {v2, v15}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v5

    .line 177
    .local v5, "dp_5":I
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "ssdk_oks_light_blue_point"

    invoke-static/range {v15 .. v16}, Lcn/sharesdk/framework/utils/ShareSDKR;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    .line 178
    .local v13, "resId":I
    if-lez v13, :cond_5

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-static {v15, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->grayPoint:Landroid/graphics/Bitmap;

    .line 181
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "ssdk_oks_blue_point"

    invoke-static/range {v15 .. v16}, Lcn/sharesdk/framework/utils/ShareSDKR;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    .line 182
    if-lez v13, :cond_6

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-static {v15, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->bluePoint:Landroid/graphics/Bitmap;

    .line 185
    :cond_6
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    if-lt v7, v11, :cond_8

    .line 194
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->pager:Lcom/mob/tools/gui/ViewPagerClassic;

    invoke-virtual {v15}, Lcom/mob/tools/gui/ViewPagerClassic;->getCurrentScreen()I

    move-result v3

    .line 195
    .local v3, "curPage":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    aget-object v15, v15, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->bluePoint:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 169
    .end local v3    # "curPage":I
    .end local v5    # "dp_5":I
    .end local v7    # "i":I
    .end local v10    # "lpLl":Landroid/widget/LinearLayout$LayoutParams;
    .end local v13    # "resId":I
    :cond_7
    const/16 v15, 0x8

    goto :goto_4

    .line 186
    .restart local v5    # "dp_5":I
    .restart local v7    # "i":I
    .restart local v10    # "lpLl":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v13    # "resId":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    new-instance v16, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v16, v15, v7

    .line 187
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    aget-object v15, v15, v7

    sget-object v16, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    aget-object v15, v15, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->grayPoint:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 189
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 190
    .local v9, "lpIv":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v15, 0x0

    invoke-virtual {v9, v5, v5, v5, v15}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 191
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    aget-object v15, v15, v7

    invoke-virtual {v15, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->points:[Landroid/widget/ImageView;

    aget-object v15, v15, v7

    invoke-virtual {v8, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 185
    add-int/lit8 v7, v7, 0x1

    goto :goto_5
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 136
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 142
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 138
    :pswitch_0
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->afterPlatformListGot()V

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 238
    .local v1, "time":J
    iget-wide v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->lastClickTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 246
    :goto_0
    return-void

    .line 241
    :cond_0
    iput-wide v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->lastClickTime:J

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 244
    .local v0, "platforms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->parent:Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;

    invoke-virtual {v3, p1, v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->onPlatformIconClick(Landroid/view/View;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onConfigurationChanged()V
    .locals 4

    .prologue
    .line 203
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->pager:Lcom/mob/tools/gui/ViewPagerClassic;

    invoke-virtual {v2}, Lcom/mob/tools/gui/ViewPagerClassic;->getCurrentScreen()I

    move-result v2

    iget v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->PAGE_SIZE:I

    mul-int v0, v2, v3

    .line 204
    .local v0, "curFirst":I
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->calPageSize()V

    .line 205
    iget v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->PAGE_SIZE:I

    div-int v1, v0, v2

    .line 207
    .local v1, "newPage":I
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->removeViewAt(I)V

    .line 208
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->afterPlatformListGot()V

    .line 210
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->pager:Lcom/mob/tools/gui/ViewPagerClassic;

    invoke-virtual {v2, v1}, Lcom/mob/tools/gui/ViewPagerClassic;->setCurrentScreen(I)V

    .line 211
    return-void
.end method

.method public setCustomerLogos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/onekeyshare/CustomerLogo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "customers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/sharesdk/onekeyshare/CustomerLogo;>;"
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->customers:Ljava/util/ArrayList;

    .line 225
    return-void
.end method

.method public setData(Ljava/util/HashMap;Z)V
    .locals 0
    .param p2, "silent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    return-void
.end method

.method public setEditPageBackground(Landroid/view/View;)V
    .locals 0
    .param p1, "bgView"    # Landroid/view/View;

    .prologue
    .line 229
    return-void
.end method

.method public setHiddenPlatforms(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, "hiddenPlatforms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->hiddenPlatforms:Ljava/util/HashMap;

    .line 220
    return-void
.end method

.method public setParent(Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;)V
    .locals 0
    .param p1, "parent"    # Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;

    .prologue
    .line 233
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->parent:Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;

    .line 234
    return-void
.end method
