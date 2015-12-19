.class public Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;
.super Lcn/sharesdk/onekeyshare/FollowerListFakeActivity;
.source "FollowListPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;,
        Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowListItem;,
        Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;,
        Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$RotateImageView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/sharesdk/onekeyshare/FollowerListFakeActivity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private adapter:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

.field private lastPosition:I

.field private llTitle:Lcn/sharesdk/framework/TitleLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->lastPosition:I

    .line 50
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 116
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v3}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v1, "selected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->adapter:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

    invoke-virtual {v3}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->getCount()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 124
    invoke-virtual {p0, v1}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->setResultForChecked(Ljava/util/ArrayList;)V

    .line 127
    .end local v0    # "i":I
    .end local v1    # "selected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "size":I
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->finish()V

    .line 128
    return-void

    .line 119
    .restart local v0    # "i":I
    .restart local v1    # "selected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "size":I
    :cond_1
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->adapter:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

    invoke-virtual {v3, v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;

    move-result-object v3

    iget-boolean v3, v3, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->checked:Z

    if-eqz v3, :cond_2

    .line 120
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->adapter:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

    invoke-virtual {v3, v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;

    move-result-object v3

    iget-object v3, v3, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->atName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onCreate()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, -0x2

    const/4 v10, -0x1

    .line 57
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 58
    .local v3, "llPage":Landroid/widget/LinearLayout;
    const v8, -0xa0a0b

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 59
    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 60
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v3}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 63
    new-instance v8, Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcn/sharesdk/framework/TitleLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    .line 64
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "ssdk_oks_title_back"

    invoke-static {v8, v9}, Lcn/sharesdk/framework/utils/ShareSDKR;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 65
    .local v7, "resId":I
    if-lez v7, :cond_0

    .line 66
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v8, v7}, Lcn/sharesdk/framework/TitleLayout;->setBackgroundResource(I)V

    .line 68
    :cond_0
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v8}, Lcn/sharesdk/framework/TitleLayout;->getBtnBack()Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "ssdk_oks_multi_share"

    invoke-static {v8, v9}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 70
    if-lez v7, :cond_1

    .line 71
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v8}, Lcn/sharesdk/framework/TitleLayout;->getTvTitle()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(I)V

    .line 73
    :cond_1
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v8}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "ssdk_oks_finish"

    invoke-static {v8, v9}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 75
    if-lez v7, :cond_2

    .line 76
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v8}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(I)V

    .line 78
    :cond_2
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v8}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 80
    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 79
    invoke-virtual {v8, v9}, Lcn/sharesdk/framework/TitleLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 83
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 84
    .local v0, "flPage":Landroid/widget/FrameLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 86
    .local v4, "lpFl":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v8, 0x3f800000

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 87
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 91
    new-instance v1, Lcom/mob/tools/gui/PullToRefreshView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/mob/tools/gui/PullToRefreshView;-><init>(Landroid/content/Context;)V

    .line 92
    .local v1, "followList":Lcom/mob/tools/gui/PullToRefreshView;
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 94
    .local v5, "lpLv":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, v5}, Lcom/mob/tools/gui/PullToRefreshView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 96
    new-instance v8, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

    invoke-direct {v8, v1}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;-><init>(Lcom/mob/tools/gui/PullToRefreshView;)V

    iput-object v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->adapter:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

    .line 97
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->adapter:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

    iget-object v9, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->platform:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v8, v9}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->setPlatform(Lcn/sharesdk/framework/Platform;)V

    .line 98
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->adapter:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

    invoke-virtual {v1, v8}, Lcom/mob/tools/gui/PullToRefreshView;->setAdapter(Lcom/mob/tools/gui/PullToRefreshAdatper;)V

    .line 99
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->adapter:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

    invoke-virtual {v8}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 101
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 102
    .local v2, "ivShadow":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "ssdk_oks_title_shadow"

    invoke-static {v8, v9}, Lcn/sharesdk/framework/utils/ShareSDKR;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 103
    if-lez v7, :cond_3

    .line 104
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 106
    :cond_3
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 108
    .local v6, "lpSd":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 112
    invoke-virtual {v1, v12}, Lcom/mob/tools/gui/PullToRefreshView;->performPulling(Z)V

    .line 113
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 131
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->platform:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v4}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->isRadioMode(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 133
    iget v4, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->lastPosition:I

    if-ltz v4, :cond_0

    .line 134
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->adapter:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

    iget v5, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->lastPosition:I

    invoke-virtual {v4, v5}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;

    move-result-object v1

    .line 135
    .local v1, "lastFollwing":Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;
    iput-boolean v3, v1, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->checked:Z

    .line 137
    .end local v1    # "lastFollwing":Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;
    :cond_0
    iput p3, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->lastPosition:I

    .line 139
    :cond_1
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->adapter:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

    invoke-virtual {v4, p3}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;

    move-result-object v0

    .line 140
    .local v0, "following":Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;
    iget-boolean v4, v0, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->checked:Z

    if-eqz v4, :cond_2

    :goto_0
    iput-boolean v3, v0, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->checked:Z

    .line 141
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->adapter:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

    invoke-virtual {v3}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->notifyDataSetChanged()V

    .line 142
    return-void

    .line 140
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method
