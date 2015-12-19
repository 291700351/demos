.class Lcn/sharesdk/framework/m;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/statistics/a;

.field final synthetic b:Lcn/sharesdk/framework/k;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/k;Lcn/sharesdk/framework/statistics/a;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/framework/m;->b:Lcn/sharesdk/framework/k;

    iput-object p2, p0, Lcn/sharesdk/framework/m;->a:Lcn/sharesdk/framework/statistics/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/m;->a:Lcn/sharesdk/framework/statistics/a;

    iget-object v1, p0, Lcn/sharesdk/framework/m;->b:Lcn/sharesdk/framework/k;

    invoke-static {v1}, Lcn/sharesdk/framework/k;->a(Lcn/sharesdk/framework/k;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/statistics/a;->g(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcn/sharesdk/framework/m;->b:Lcn/sharesdk/framework/k;

    iget-object v3, p0, Lcn/sharesdk/framework/m;->a:Lcn/sharesdk/framework/statistics/a;

    invoke-static {v2, v3, v0, v1}, Lcn/sharesdk/framework/k;->a(Lcn/sharesdk/framework/k;Lcn/sharesdk/framework/statistics/a;Ljava/util/HashMap;Ljava/util/HashMap;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/sharesdk/framework/m;->b:Lcn/sharesdk/framework/k;

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/k;->b(Ljava/util/HashMap;)Z

    :cond_0
    iget-object v1, p0, Lcn/sharesdk/framework/m;->a:Lcn/sharesdk/framework/statistics/a;

    iget-object v2, p0, Lcn/sharesdk/framework/m;->b:Lcn/sharesdk/framework/k;

    invoke-static {v2}, Lcn/sharesdk/framework/k;->a(Lcn/sharesdk/framework/k;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcn/sharesdk/framework/statistics/a;->a(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
