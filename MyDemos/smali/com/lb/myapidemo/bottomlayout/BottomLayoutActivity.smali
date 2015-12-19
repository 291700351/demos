.class public Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;
.super Landroid/app/Activity;
.source "BottomLayoutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private bottomHeight:I

.field private btn1:Landroid/widget/Button;

.field private btn2:Landroid/widget/Button;

.field private btn3:Landroid/widget/Button;

.field private btn_close:Landroid/widget/Button;

.field private btn_commit:Landroid/widget/Button;

.field private et1:Landroid/widget/EditText;

.field private et2:Landroid/widget/EditText;

.field private et3:Landroid/widget/EditText;

.field private isShowBootom:Z

.field private ll_bottom:Landroid/widget/LinearLayout;

.field private screenHeight:I

.field private titleHeight:I

.field private tv_bottom_desc:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->isShowBootom:Z

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;I)V
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->titleHeight:I

    return-void
.end method

.method static synthetic access$1(Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->ll_bottom:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->btn1:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->btn2:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->btn3:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->isShowBootom:Z

    return v0
.end method

.method static synthetic access$6(Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->et1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->et2:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->et3:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;Z)V
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->isShowBootom:Z

    return-void
.end method

.method private animation()V
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "animator":Lcom/nineoldandroids/animation/ValueAnimator;
    iget-boolean v1, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->isShowBootom:Z

    if-eqz v1, :cond_0

    .line 161
    new-array v1, v2, [I

    iget v2, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->screenHeight:I

    iget v3, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->bottomHeight:I

    sub-int/2addr v2, v3

    .line 162
    iget v3, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->titleHeight:I

    .line 161
    sub-int/2addr v2, v3

    aput v2, v1, v4

    .line 162
    iget v2, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->screenHeight:I

    aput v2, v1, v5

    invoke-static {v1}, Lcom/nineoldandroids/animation/ValueAnimator;->ofInt([I)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    .line 170
    :goto_0
    new-instance v1, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity$2;

    invoke-direct {v1, p0}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity$2;-><init>(Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 183
    new-instance v1, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity$3;

    invoke-direct {v1, p0}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity$3;-><init>(Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 222
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    .line 223
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V

    .line 224
    return-void

    .line 165
    :cond_0
    new-array v1, v2, [I

    iget v2, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->screenHeight:I

    aput v2, v1, v4

    iget v2, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->screenHeight:I

    .line 166
    iget v3, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->bottomHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->titleHeight:I

    sub-int/2addr v2, v3

    aput v2, v1, v5

    invoke-static {v1}, Lcom/nineoldandroids/animation/ValueAnimator;->ofInt([I)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 76
    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->ll_bottom:Landroid/widget/LinearLayout;

    .line 77
    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->btn1:Landroid/widget/Button;

    .line 78
    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->btn2:Landroid/widget/Button;

    .line 79
    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->btn3:Landroid/widget/Button;

    .line 81
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->tv_bottom_desc:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f080016

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->btn_close:Landroid/widget/Button;

    .line 83
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->btn_commit:Landroid/widget/Button;

    .line 85
    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->et1:Landroid/widget/EditText;

    .line 86
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->et2:Landroid/widget/EditText;

    .line 87
    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->et3:Landroid/widget/EditText;

    .line 89
    return-void
.end method

.method private setData()V
    .locals 2

    .prologue
    .line 109
    iget-object v1, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->ll_bottom:Landroid/widget/LinearLayout;

    .line 110
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 109
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 111
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->screenHeight:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 113
    return-void
.end method

.method private setListener()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->btn1:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->btn2:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->btn3:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->btn_close:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->btn_commit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->isShowBootom:Z

    if-eqz v0, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->animation()V

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 151
    :goto_0
    :pswitch_0
    return-void

    .line 123
    :pswitch_1
    iget-object v3, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->tv_bottom_desc:Landroid/widget/TextView;

    const-string v4, "\u6309\u94ae1\u542f\u52a8\u7684\u5e95\u90e8\u5e03\u5c40"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-direct {p0}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->animation()V

    goto :goto_0

    .line 127
    :pswitch_2
    iget-object v3, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->tv_bottom_desc:Landroid/widget/TextView;

    const-string v4, "\u6309\u94ae2\u542f\u52a8\u7684\u5e95\u90e8\u5e03\u5c40"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-direct {p0}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->animation()V

    goto :goto_0

    .line 131
    :pswitch_3
    iget-object v3, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->tv_bottom_desc:Landroid/widget/TextView;

    const-string v4, "\u6309\u94ae3\u542f\u52a8\u7684\u5e95\u90e8\u5e03\u5c40"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-direct {p0}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->animation()V

    goto :goto_0

    .line 136
    :pswitch_4
    invoke-direct {p0}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->animation()V

    goto :goto_0

    .line 140
    :pswitch_5
    iget-object v3, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->et1:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "data1":Ljava/lang/String;
    iget-object v3, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->et2:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "data2":Ljava/lang/String;
    iget-object v3, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->et3:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "data3":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6570\u636e1\u7684\u8f93\u5165\u5185\u5bb9\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\u6570\u636e2\u7684\u8f93\u5165\u5185\u5bb9\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\u6570\u636e3\u7684\u8f93\u5165\u5185\u5bb9\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 146
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 145
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    const/4 v4, 0x0

    .line 143
    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 146
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 147
    invoke-direct {p0}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->animation()V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x7f080012
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 52
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->screenHeight:I

    .line 54
    invoke-direct {p0}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->findView()V

    .line 56
    iget-object v1, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->ll_bottom:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity$1;

    invoke-direct {v2, p0}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity$1;-><init>(Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 64
    iget-object v1, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->ll_bottom:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 65
    iget-object v1, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->ll_bottom:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->bottomHeight:I

    .line 67
    invoke-direct {p0}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->setListener()V

    .line 69
    invoke-direct {p0}, Lcom/lb/myapidemo/bottomlayout/BottomLayoutActivity;->setData()V

    .line 70
    return-void
.end method
