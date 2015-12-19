.class Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$1;
.super Ljava/lang/Thread;
.source "PlatformGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    .line 94
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 97
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->getPlatformList()[Lcn/sharesdk/framework/Platform;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$8(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;[Lcn/sharesdk/framework/Platform;)V

    .line 98
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->platformList:[Lcn/sharesdk/framework/Platform;
    invoke-static {v1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$0(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)[Lcn/sharesdk/framework/Platform;

    move-result-object v1

    if-nez v1, :cond_0

    .line 99
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    const/4 v2, 0x0

    new-array v2, v2, [Lcn/sharesdk/framework/Platform;

    invoke-static {v1, v2}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$8(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;[Lcn/sharesdk/framework/Platform;)V

    .line 101
    :cond_0
    const/4 v1, 0x1

    .line 102
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    .line 101
    invoke-static {v1, v2}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
