.class public Lcom/lb/myapidemo/channel/ChannelNumActivity;
.super Landroid/app/Activity;
.source "ChannelNumActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lb/myapidemo/channel/ChannelNumActivity;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/lb/myapidemo/channel/ChannelNumActivity;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 55
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    .line 54
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 58
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "channel"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 62
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v1

    .line 61
    :catch_0
    move-exception v2

    .line 62
    .local v2, "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v2, 0x7f030003

    invoke-virtual {p0, v2}, Lcom/lb/myapidemo/channel/ChannelNumActivity;->setContentView(I)V

    .line 27
    const v2, 0x7f080010

    invoke-virtual {p0, v2}, Lcom/lb/myapidemo/channel/ChannelNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 28
    .local v0, "btn":Landroid/widget/Button;
    const v2, 0x7f08001c

    invoke-virtual {p0, v2}, Lcom/lb/myapidemo/channel/ChannelNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 30
    .local v1, "textview":Landroid/widget/TextView;
    new-instance v2, Lcom/lb/myapidemo/channel/ChannelNumActivity$1;

    invoke-direct {v2, p0, v1}, Lcom/lb/myapidemo/channel/ChannelNumActivity$1;-><init>(Lcom/lb/myapidemo/channel/ChannelNumActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-void
.end method
