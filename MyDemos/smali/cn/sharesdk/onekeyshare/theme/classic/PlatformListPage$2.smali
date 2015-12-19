.class Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage$2;
.super Ljava/lang/Object;
.source "PlatformListPage.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->onFinish()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage$2;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 161
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage$2;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->flPage:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->access$0(Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage$2;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;

    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformListPage;->finish()V

    .line 163
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 158
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 154
    return-void
.end method
