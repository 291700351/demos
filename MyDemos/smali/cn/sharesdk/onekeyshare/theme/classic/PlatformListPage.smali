.class public Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;
.super Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;
.source "PlatformListPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private animHide:Landroid/view/animation/Animation;

.field private animShow:Landroid/view/animation/Animation;

.field private btnCancel:Landroid/widget/Button;

.field private finishing:Z

.field private flPage:Landroid/widget/FrameLayout;

.field private grid:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

.field private llPage:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->flPage:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private initAnim()V
    .locals 9

    .prologue
    .line 123
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 124
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000

    .line 125
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 123
    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->animShow:Landroid/view/animation/Animation;

    .line 126
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->animShow:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 128
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 130
    const/4 v7, 0x1

    const/high16 v8, 0x3f800000

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 128
    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->animHide:Landroid/view/animation/Animation;

    .line 131
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->animHide:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 132
    return-void
.end method

.method private initPageView()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x2

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 66
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->flPage:Landroid/widget/FrameLayout;

    .line 67
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->flPage:Landroid/widget/FrameLayout;

    invoke-virtual {v5, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->flPage:Landroid/widget/FrameLayout;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v7, 0x55000000

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    new-instance v5, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage$1;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage$1;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;Landroid/content/Context;)V

    iput-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->llPage:Landroid/widget/LinearLayout;

    .line 76
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->llPage:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 77
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->llPage:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v8, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 81
    .local v2, "lpLl":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x50

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 82
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->llPage:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->flPage:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->llPage:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 86
    new-instance v5, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->grid:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    .line 87
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->grid:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->getBackgroundView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->setEditPageBackground(Landroid/view/View;)V

    .line 88
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 91
    .local v3, "lpWg":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->grid:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    invoke-virtual {v5, v3}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->llPage:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->grid:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    new-instance v5, Landroid/widget/Button;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->btnCancel:Landroid/widget/Button;

    .line 96
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->btnCancel:Landroid/widget/Button;

    const v6, -0xc59a01

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 97
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->btnCancel:Landroid/widget/Button;

    const/high16 v6, 0x41a00000

    invoke-virtual {v5, v11, v6}, Landroid/widget/Button;->setTextSize(IF)V

    .line 98
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "ssdk_oks_cancel"

    invoke-static {v5, v6}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 99
    .local v4, "resId":I
    if-lez v4, :cond_0

    .line 100
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setText(I)V

    .line 102
    :cond_0
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->btnCancel:Landroid/widget/Button;

    .line 103
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x5

    invoke-static {v6, v7}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v6

    .line 102
    invoke-virtual {v5, v9, v9, v9, v6}, Landroid/widget/Button;->setPadding(IIII)V

    .line 105
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 106
    const-string v6, "ssdk_oks_classic_platform_corners_bg"

    .line 105
    invoke-static {v5, v6}, Lcn/sharesdk/framework/utils/ShareSDKR;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 107
    if-lez v4, :cond_1

    .line 108
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 113
    :goto_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 115
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x2d

    invoke-static {v5, v6}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v5

    .line 113
    invoke-direct {v1, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 116
    .local v1, "lpBtn":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0xa

    invoke-static {v5, v6}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 117
    .local v0, "dp_10":I
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 118
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->llPage:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 120
    return-void

    .line 110
    .end local v0    # "dp_10":I
    .end local v1    # "lpBtn":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->btnCancel:Landroid/widget/Button;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 173
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->flPage:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->btnCancel:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->setCanceled(Z)V

    .line 175
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->finish()V

    .line 177
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 135
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->grid:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->grid:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->onConfigurationChanged()V

    .line 138
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 45
    invoke-super {p0}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->onCreate()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->finishing:Z

    .line 48
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->initPageView()V

    .line 49
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->initAnim()V

    .line 50
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->flPage:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 53
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->grid:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->shareParamsMap:Ljava/util/HashMap;

    iget-boolean v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->silent:Z

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->setData(Ljava/util/HashMap;Z)V

    .line 54
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->grid:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->hiddenPlatforms:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->setHiddenPlatforms(Ljava/util/HashMap;)V

    .line 55
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->grid:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->customerLogos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->setCustomerLogos(Ljava/util/ArrayList;)V

    .line 56
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->grid:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    invoke-virtual {v0, p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->setParent(Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;)V

    .line 57
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->llPage:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 61
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->llPage:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->animShow:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 62
    return-void
.end method

.method public onFinish()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 141
    iget-boolean v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->finishing:Z

    if-eqz v1, :cond_0

    .line 142
    invoke-super {p0}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->onFinish()Z

    move-result v0

    .line 168
    :goto_0
    return v0

    .line 145
    :cond_0
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->animHide:Landroid/view/animation/Animation;

    if-nez v1, :cond_1

    .line 146
    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->finishing:Z

    .line 147
    const/4 v0, 0x0

    goto :goto_0

    .line 150
    :cond_1
    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->finishing:Z

    .line 151
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->animHide:Landroid/view/animation/Animation;

    new-instance v2, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage$2;

    invoke-direct {v2, p0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage$2;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 165
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->llPage:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 166
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->llPage:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->animHide:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onPlatformIconClick(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p2, "platforms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->onShareButtonClick(Landroid/view/View;Ljava/util/List;)V

    .line 181
    return-void
.end method
