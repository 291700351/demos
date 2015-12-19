.class Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;
.super Lcom/mob/tools/gui/PullToRefreshListAdapter;
.source "FollowListPage.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FollowAdapter"
.end annotation


# static fields
.field private static final FOLLOW_LIST_EMPTY:I = 0x2


# instance fields
.field private bmChd:Landroid/graphics/Bitmap;

.field private bmUnch:Landroid/graphics/Bitmap;

.field private curPage:I

.field private follows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;",
            ">;"
        }
    .end annotation
.end field

.field private hasNext:Z

.field private llHeader:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;

.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private platform:Lcn/sharesdk/framework/Platform;


# direct methods
.method public constructor <init>(Lcom/mob/tools/gui/PullToRefreshView;)V
    .locals 3
    .param p1, "view"    # Lcom/mob/tools/gui/PullToRefreshView;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRefreshListAdapter;-><init>(Lcom/mob/tools/gui/PullToRefreshView;)V

    .line 158
    const/4 v1, -0x1

    iput v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->curPage:I

    .line 159
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->hasNext:Z

    .line 160
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->map:Ljava/util/HashMap;

    .line 161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->follows:Ljava/util/ArrayList;

    .line 163
    new-instance v1, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->llHeader:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;

    .line 165
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ssdk_oks_auth_follow_cb_chd"

    invoke-static {v1, v2}, Lcn/sharesdk/framework/utils/ShareSDKR;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 166
    .local v0, "resId":I
    if-lez v0, :cond_0

    .line 167
    invoke-virtual {p1}, Lcom/mob/tools/gui/PullToRefreshView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->bmChd:Landroid/graphics/Bitmap;

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ssdk_oks_auth_follow_cb_unc"

    invoke-static {v1, v2}, Lcn/sharesdk/framework/utils/ShareSDKR;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 170
    if-lez v0, :cond_1

    .line 171
    invoke-virtual {p1}, Lcom/mob/tools/gui/PullToRefreshView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->bmUnch:Landroid/graphics/Bitmap;

    .line 173
    :cond_1
    return-void
.end method

.method private next()V
    .locals 4

    .prologue
    .line 181
    iget-boolean v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->hasNext:Z

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->platform:Lcn/sharesdk/framework/Platform;

    const/16 v1, 0xf

    iget v2, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->curPage:I

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/sharesdk/framework/Platform;->listFriend(IILjava/lang/String;)V

    .line 184
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->follows:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->follows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->llHeader:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;

    return-object v0
.end method

.method public getItem(I)Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 272
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->follows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 276
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 187
    const/4 v6, 0x0

    .line 188
    .local v6, "item":Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowListItem;
    const-string v13, "FacebookMessenger"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->platform:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v14}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 189
    .local v12, "simpleMode":Z
    if-nez p2, :cond_6

    .line 190
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v7, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 191
    .local v7, "llItem":Landroid/widget/LinearLayout;
    new-instance v6, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowListItem;

    .end local v6    # "item":Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowListItem;
    const/4 v13, 0x0

    invoke-direct {v6, v13}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowListItem;-><init>(Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowListItem;)V

    .line 192
    .restart local v6    # "item":Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowListItem;
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 193
    move-object/from16 p2, v7

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->getContext()Landroid/content/Context;

    move-result-object v13

    const/16 v14, 0x34

    invoke-static {v13, v14}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v4

    .line 196
    .local v4, "dp_52":I
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v13

    const/16 v14, 0xa

    invoke-static {v13, v14}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v2

    .line 197
    .local v2, "dp_10":I
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x5

    invoke-static {v13, v14}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v3

    .line 199
    .local v3, "dp_5":I
    if-nez v12, :cond_0

    .line 200
    new-instance v13, Lcom/mob/tools/gui/AsyncImageView;

    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/mob/tools/gui/AsyncImageView;-><init>(Landroid/content/Context;)V

    iput-object v13, v6, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowListItem;->aivIcon:Lcom/mob/tools/gui/AsyncImageView;

    .line 201
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 202
    .local v10, "lpIcon":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v13, 0x10

    iput v13, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 203
    invoke-virtual {v10, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 204
    iget-object v13, v6, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowListItem;->aivIcon:Lcom/mob/tools/gui/AsyncImageView;

    invoke-virtual {v13, v10}, Lcom/mob/tools/gui/AsyncImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    iget-object v13, v6, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowListItem;->aivIcon:Lcom/mob/tools/gui/AsyncImageView;

    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 208
    .end local v10    # "lpIcon":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v8, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 209
    .local v8, "llText":Landroid/widget/LinearLayout;
    const/4 v13, 0x0

    invoke-virtual {v8, v13, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 210
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 211
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 212
    const/4 v13, -0x2

    const/4 v14, -0x2

    .line 211
    invoke-direct {v11, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 213
    .local v11, "lpText":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v13, 0x10

    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 214
    const/high16 v13, 0x3f800000

    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 215
    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 218
    new-instance v13, Landroid/widget/TextView;

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v13, v6, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowListItem;->tvName:Landroid/widget/TextView;

    .line 219
    iget-object v13, v6, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowListItem;->tvName:Landroid/widget/TextView;

    const/high16 v14, -0x1000000

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 220
    iget-object v13, v6, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowListItem;->tvName:Landroid/widget/TextView;

    const/4 v14, 0x1

    const/high16 v15, 0x41900000

    invoke-virtual {v13, v14, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 221
    iget-object v13, v6, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowListItem;->tvName:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->setSingleLine()V

    .line 222
    if-eqz v12, :cond_1

    .line 223
    iget-object v13, v6, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowListItem;->tvName:Landroid/widget/TextView;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v2, v14, v15, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 225
    :cond_1
    iget-object v13, v6, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowListItem;->tvName:Landroid/widget/TextView;

    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 227
    if-nez v12, :cond_2

    .line 228
    new-instance v13, Landroid/widget/TextView;

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v13, v6, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowListItem;->tvSign:Landroid/widget/TextView;

    .line 229
    iget-object v13, v6, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowListItem;->tvSign:Landroid/widget/TextView;

    const/high16 v14, 0x7f000000

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    iget-object v13, v6, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowListItem;->tvSign:Landroid/widget/TextView;

    const/4 v14, 0x1

    const/high16 v15, 0x41600000

    invoke-virtual {v13, v14, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 231
    iget-object v13, v6, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowListItem;->tvSign:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->setSingleLine()V

    .line 232
    iget-object v13, v6, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowListItem;->tvSign:Landroid/widget/TextView;

    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 235
    :cond_2
    new-instance v13, Landroid/widget/ImageView;

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v13, v6, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowListItem;->ivCheck:Landroid/widget/ImageView;

    .line 236
    iget-object v13, v6, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowListItem;->ivCheck:Landroid/widget/ImageView;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v14, v15, v2, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 237
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 238
    const/4 v13, -0x2

    const/4 v14, -0x2

    .line 237
    invoke-direct {v9, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 239
    .local v9, "lpCheck":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v13, 0x10

    iput v13, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 240
    iget-object v13, v6, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowListItem;->ivCheck:Landroid/widget/ImageView;

    invoke-virtual {v13, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    iget-object v13, v6, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowListItem;->ivCheck:Landroid/widget/ImageView;

    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 246
    .end local v2    # "dp_10":I
    .end local v3    # "dp_5":I
    .end local v4    # "dp_52":I
    .end local v7    # "llItem":Landroid/widget/LinearLayout;
    .end local v8    # "llText":Landroid/widget/LinearLayout;
    .end local v9    # "lpCheck":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "lpText":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;

    move-result-object v5

    .line 247
    .local v5, "following":Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;
    iget-object v13, v6, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowListItem;->tvName:Landroid/widget/TextView;

    iget-object v14, v5, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->screenName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    if-nez v12, :cond_3

    .line 249
    iget-object v13, v6, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowListItem;->tvSign:Landroid/widget/TextView;

    iget-object v14, v5, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->description:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :cond_3
    iget-object v14, v6, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowListItem;->ivCheck:Landroid/widget/ImageView;

    iget-boolean v13, v5, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->checked:Z

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->bmChd:Landroid/graphics/Bitmap;

    :goto_1
    invoke-virtual {v14, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 252
    if-nez v12, :cond_4

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->isFling()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 254
    iget-object v13, v5, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->icon:Ljava/lang/String;

    invoke-static {v13}, Lcom/mob/tools/gui/BitmapProcessor;->getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 255
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v13

    if-nez v13, :cond_8

    .line 256
    iget-object v13, v6, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowListItem;->aivIcon:Lcom/mob/tools/gui/AsyncImageView;

    invoke-virtual {v13, v1}, Lcom/mob/tools/gui/AsyncImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 265
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->getCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_5

    .line 266
    invoke-direct/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->next()V

    .line 268
    :cond_5
    return-object p2

    .line 243
    .end local v5    # "following":Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "item":Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowListItem;
    check-cast v6, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowListItem;

    .restart local v6    # "item":Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowListItem;
    goto :goto_0

    .line 251
    .restart local v5    # "following":Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->bmUnch:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 258
    .restart local v1    # "bm":Landroid/graphics/Bitmap;
    :cond_8
    iget-object v13, v6, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowListItem;->aivIcon:Lcom/mob/tools/gui/AsyncImageView;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/mob/tools/gui/AsyncImageView;->execute(Ljava/lang/String;I)V

    goto :goto_2

    .line 261
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    :cond_9
    iget-object v13, v6, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowListItem;->aivIcon:Lcom/mob/tools/gui/AsyncImageView;

    iget-object v14, v5, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->icon:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/mob/tools/gui/AsyncImageView;->execute(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 325
    iget v1, p1, Landroid/os/Message;->what:I

    if-gez v1, :cond_0

    .line 326
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 338
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 327
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 328
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 330
    :cond_1
    iget v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->curPage:I

    if-gtz v1, :cond_2

    .line 331
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->follows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 334
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 335
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;>;"
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->follows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 336
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 1
    .param p1, "plat"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I

    .prologue
    .line 300
    const/4 v0, -0x1

    invoke-static {v0, p0}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    .line 301
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 4
    .param p1, "plat"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p3, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->platform:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->map:Ljava/util/HashMap;

    invoke-static {v2, p3, v3}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->parseFollowers(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$FollowersResult;

    move-result-object v0

    .line 306
    .local v0, "followersResult":Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$FollowersResult;
    if-nez v0, :cond_1

    .line 307
    const/4 v2, 0x2

    invoke-static {v2, p0}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-boolean v2, v0, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$FollowersResult;->hasNextPage:Z

    iput-boolean v2, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->hasNext:Z

    .line 311
    iget-object v2, v0, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$FollowersResult;->list:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$FollowersResult;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 312
    iget v2, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->curPage:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->curPage:I

    .line 313
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 314
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 315
    iget-object v2, v0, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$FollowersResult;->list:Ljava/util/ArrayList;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 316
    invoke-static {v1, p0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto :goto_0
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "plat"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 321
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 322
    return-void
.end method

.method public onPullDown(I)V
    .locals 1
    .param p1, "percent"    # I

    .prologue
    .line 288
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->llHeader:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;

    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;->onPullDown(I)V

    .line 289
    return-void
.end method

.method public onRequest()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->llHeader:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;

    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;->onRequest()V

    .line 293
    const/4 v0, -0x1

    iput v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->curPage:I

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->hasNext:Z

    .line 295
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 296
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->next()V

    .line 297
    return-void
.end method

.method public onReversed()V
    .locals 1

    .prologue
    .line 342
    invoke-super {p0}, Lcom/mob/tools/gui/PullToRefreshListAdapter;->onReversed()V

    .line 343
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->llHeader:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;

    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;->reverse()V

    .line 344
    return-void
.end method

.method public setPlatform(Lcn/sharesdk/framework/Platform;)V
    .locals 0
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;

    .prologue
    .line 176
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->platform:Lcn/sharesdk/framework/Platform;

    .line 177
    invoke-virtual {p1, p0}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 178
    return-void
.end method
