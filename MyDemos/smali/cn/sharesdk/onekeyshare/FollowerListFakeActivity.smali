.class public Lcn/sharesdk/onekeyshare/FollowerListFakeActivity;
.super Lcom/mob/tools/FakeActivity;
.source "FollowerListFakeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$FollowersResult;,
        Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;
    }
.end annotation


# instance fields
.field protected platform:Lcn/sharesdk/framework/Platform;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method

.method public static parseFollowers(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$FollowersResult;
    .locals 23
    .param p0, "platformName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$FollowersResult;"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "uidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v20

    if-gtz v20, :cond_1

    .line 48
    :cond_0
    const/4 v13, 0x0

    .line 165
    :goto_0
    return-object v13

    .line 51
    :cond_1
    const/4 v7, 0x0

    .line 52
    .local v7, "hasNext":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v4, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;>;"
    const-string v20, "SinaWeibo"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 57
    const-string v20, "users"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    .line 58
    .local v19, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_2
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_4

    .line 71
    const-string v20, "total_number"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->size()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_5

    const/4 v7, 0x1

    .line 162
    .end local v19    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_3
    :goto_2
    new-instance v13, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$FollowersResult;

    invoke-direct {v13}, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$FollowersResult;-><init>()V

    .line 163
    .local v13, "ret":Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$FollowersResult;
    iput-object v4, v13, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$FollowersResult;->list:Ljava/util/ArrayList;

    .line 164
    iput-boolean v7, v13, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$FollowersResult;->hasNextPage:Z

    goto :goto_0

    .line 58
    .end local v13    # "ret":Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$FollowersResult;
    .restart local v19    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashMap;

    .line 59
    .local v17, "user":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v21, "id"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 60
    .local v16, "uid":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 61
    new-instance v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;

    invoke-direct {v6}, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;-><init>()V

    .line 62
    .local v6, "following":Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;
    move-object/from16 v0, v16

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->uid:Ljava/lang/String;

    .line 63
    const-string v21, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->screenName:Ljava/lang/String;

    .line 64
    const-string v21, "description"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->description:Ljava/lang/String;

    .line 65
    const-string v21, "profile_image_url"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->icon:Ljava/lang/String;

    .line 66
    iget-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->screenName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->atName:Ljava/lang/String;

    .line 67
    iget-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->uid:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 71
    .end local v6    # "following":Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;
    .end local v16    # "uid":Ljava/lang/String;
    .end local v17    # "user":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 73
    .end local v19    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_6
    const-string v20, "TencentWeibo"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 74
    const-string v20, "hasnext"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    if-nez v20, :cond_9

    const/4 v7, 0x1

    .line 78
    :goto_3
    const-string v20, "info"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 79
    .local v9, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_7
    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 80
    .local v8, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v21, "name"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 81
    .restart local v16    # "uid":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 82
    new-instance v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;

    invoke-direct {v6}, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;-><init>()V

    .line 83
    .restart local v6    # "following":Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;
    const-string v21, "nick"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->screenName:Ljava/lang/String;

    .line 84
    move-object/from16 v0, v16

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->uid:Ljava/lang/String;

    .line 85
    move-object/from16 v0, v16

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->atName:Ljava/lang/String;

    .line 87
    const-string v21, "tweet"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 88
    .local v15, "tweets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    .line 89
    .local v14, "tweet":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v21, "text"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->description:Ljava/lang/String;

    .line 92
    .end local v14    # "tweet":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_8
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "head"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "/100"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->icon:Ljava/lang/String;

    .line 93
    iget-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->uid:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 74
    .end local v6    # "following":Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;
    .end local v8    # "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v15    # "tweets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v16    # "uid":Ljava/lang/String;
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 98
    :cond_a
    const-string v20, "Facebook"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 102
    const-string v20, "data"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 103
    .local v5, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_b
    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_c

    .line 122
    const-string v20, "paging"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    .line 123
    .local v11, "paging":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v20, "next"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    goto/16 :goto_2

    .line 103
    .end local v11    # "paging":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_c
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 104
    .local v3, "d":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v21, "id"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 105
    .restart local v16    # "uid":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_b

    .line 106
    new-instance v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;

    invoke-direct {v6}, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;-><init>()V

    .line 107
    .restart local v6    # "following":Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;
    move-object/from16 v0, v16

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->uid:Ljava/lang/String;

    .line 108
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "["

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->atName:Ljava/lang/String;

    .line 109
    const-string v21, "name"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->screenName:Ljava/lang/String;

    .line 111
    const-string v21, "picture"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    .line 112
    .local v12, "picture":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v12, :cond_d

    .line 114
    const-string v21, "data"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    .line 115
    .local v10, "pData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v21, "url"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->icon:Ljava/lang/String;

    .line 117
    .end local v10    # "pData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_d
    iget-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->uid:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 125
    .end local v3    # "d":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v6    # "following":Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;
    .end local v12    # "picture":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v16    # "uid":Ljava/lang/String;
    :cond_e
    const-string v20, "Twitter"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 129
    const-string v20, "users"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    .line 130
    .restart local v19    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_f
    :goto_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashMap;

    .line 131
    .restart local v17    # "user":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v21, "screen_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 132
    .restart local v16    # "uid":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_f

    .line 133
    new-instance v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;

    invoke-direct {v6}, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;-><init>()V

    .line 134
    .restart local v6    # "following":Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;
    move-object/from16 v0, v16

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->uid:Ljava/lang/String;

    .line 135
    move-object/from16 v0, v16

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->atName:Ljava/lang/String;

    .line 136
    const-string v21, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->screenName:Ljava/lang/String;

    .line 137
    const-string v21, "description"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->description:Ljava/lang/String;

    .line 138
    const-string v21, "profile_image_url"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->icon:Ljava/lang/String;

    .line 139
    iget-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->uid:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 144
    .end local v6    # "following":Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;
    .end local v16    # "uid":Ljava/lang/String;
    .end local v17    # "user":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v19    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_10
    const-string v20, "FacebookMessenger"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 147
    const-string v20, "users"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    .line 148
    .restart local v19    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_11
    :goto_7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_12

    .line 159
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 148
    :cond_12
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashMap;

    .line 149
    .restart local v17    # "user":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v21, "jid"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 150
    .local v18, "userAddr":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_11

    .line 151
    new-instance v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;

    invoke-direct {v6}, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;-><init>()V

    .line 152
    .restart local v6    # "following":Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;
    move-object/from16 v0, v18

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->uid:Ljava/lang/String;

    .line 153
    move-object/from16 v0, v18

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->atName:Ljava/lang/String;

    .line 154
    const-string v21, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->screenName:Ljava/lang/String;

    .line 155
    iget-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->uid:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7
.end method


# virtual methods
.method public getPlatform()Lcn/sharesdk/framework/Platform;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity;->platform:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method public isRadioMode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "platformName"    # Ljava/lang/String;

    .prologue
    .line 21
    const-string v0, "FacebookMessenger"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setPlatform(Lcn/sharesdk/framework/Platform;)V
    .locals 0
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;

    .prologue
    .line 13
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity;->platform:Lcn/sharesdk/framework/Platform;

    .line 14
    return-void
.end method

.method public setResultForChecked(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "checked":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    .local v0, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "selected"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v1, "platform"

    iget-object v2, p0, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity;->platform:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity;->setResult(Ljava/util/HashMap;)V

    .line 29
    return-void
.end method
