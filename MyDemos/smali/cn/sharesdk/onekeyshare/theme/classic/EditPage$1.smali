.class Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;
.super Ljava/lang/Thread;
.source "EditPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    .line 123
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;)Lcn/sharesdk/onekeyshare/theme/classic/EditPage;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 126
    :try_start_0
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->getPlatformList()[Lcn/sharesdk/framework/Platform;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$0(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;[Lcn/sharesdk/framework/Platform;)V

    .line 127
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;
    invoke-static {v5}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$1(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)[Lcn/sharesdk/framework/Platform;

    move-result-object v5

    if-nez v5, :cond_0

    .line 154
    :goto_0
    return-void

    .line 131
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/sharesdk/framework/Platform;>;"
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;
    invoke-static {v5}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$1(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)[Lcn/sharesdk/framework/Platform;

    move-result-object v6

    array-length v7, v6

    const/4 v5, 0x0

    :goto_1
    if-lt v5, v7, :cond_1

    .line 140
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcn/sharesdk/framework/Platform;

    invoke-static {v5, v6}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$0(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;[Lcn/sharesdk/framework/Platform;)V

    .line 141
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;
    invoke-static {v5}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$1(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)[Lcn/sharesdk/framework/Platform;

    move-result-object v5

    array-length v5, v5

    if-lt v0, v5, :cond_4

    .line 145
    const/4 v5, 0x1

    new-instance v6, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1$1;

    invoke-direct {v6, p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1$1;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;)V

    invoke-static {v5, v6}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    .end local v0    # "i":I
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/sharesdk/framework/Platform;>;"
    :catch_0
    move-exception v4

    .line 152
    .local v4, "t":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 132
    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/sharesdk/framework/Platform;>;"
    :cond_1
    :try_start_1
    aget-object v3, v6, v5

    .line 133
    .local v3, "plat":Lcn/sharesdk/framework/Platform;
    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "name":Ljava/lang/String;
    instance-of v8, v3, Lcn/sharesdk/framework/CustomPlatform;

    if-nez v8, :cond_2

    .line 135
    invoke-static {v2}, Lcn/sharesdk/onekeyshare/ShareCore;->isUseClientToShare(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 132
    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 138
    :cond_3
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 142
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "plat":Lcn/sharesdk/framework/Platform;
    .restart local v0    # "i":I
    :cond_4
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;
    invoke-static {v5}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$1(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)[Lcn/sharesdk/framework/Platform;

    move-result-object v6

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/sharesdk/framework/Platform;

    aput-object v5, v6, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
