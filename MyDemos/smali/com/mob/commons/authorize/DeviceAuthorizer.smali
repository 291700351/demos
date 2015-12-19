.class public final Lcom/mob/commons/authorize/DeviceAuthorizer;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static authorize(Landroid/content/Context;Lcom/mob/commons/authorize/MobProduct;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/mob/commons/authorize/a;

    invoke-direct {v0}, Lcom/mob/commons/authorize/a;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/mob/commons/authorize/a;->a(Landroid/content/Context;Lcom/mob/commons/authorize/MobProduct;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
