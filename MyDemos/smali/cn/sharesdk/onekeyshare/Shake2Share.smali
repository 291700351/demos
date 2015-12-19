.class public Lcn/sharesdk/onekeyshare/Shake2Share;
.super Lcom/mob/tools/FakeActivity;
.source "Shake2Share.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/onekeyshare/Shake2Share$OnShakeListener;
    }
.end annotation


# static fields
.field private static final SHAKE_THRESHOLD:I = 0x5dc

.field private static final UPDATE_INTERVAL:I = 0x64


# instance fields
.field private listener:Lcn/sharesdk/onekeyshare/Shake2Share$OnShakeListener;

.field private mLastUpdateTime:J

.field private mLastX:F

.field private mLastY:F

.field private mLastZ:F

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private shaken:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method

.method private startSensor()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 74
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->activity:Landroid/app/Activity;

    const-string v3, "sensor"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->mSensorManager:Landroid/hardware/SensorManager;

    .line 75
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v2, :cond_0

    .line 76
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 78
    :cond_0
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 79
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-nez v0, :cond_1

    .line 80
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 82
    :cond_1
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    .line 83
    .local v1, "success":Z
    if-nez v1, :cond_2

    .line 84
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 86
    :cond_2
    return-void
.end method

.method private stopSensor()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->mSensorManager:Landroid/hardware/SensorManager;

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 131
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 57
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/Shake2Share;->startSensor()V

    .line 59
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->activity:Landroid/app/Activity;

    const-string v3, "ssdk_oks_yaoyiyao"

    invoke-static {v2, v3}, Lcn/sharesdk/framework/utils/ShareSDKR;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 60
    .local v1, "resId":I
    if-lez v1, :cond_0

    .line 61
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 62
    .local v0, "iv":Landroid/widget/ImageView;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 67
    .end local v0    # "iv":Landroid/widget/ImageView;
    :cond_0
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->activity:Landroid/app/Activity;

    const-string v3, "ssdk_oks_shake2share"

    invoke-static {v2, v3}, Lcn/sharesdk/framework/utils/ShareSDKR;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 68
    if-lez v1, :cond_1

    .line 69
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 71
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/Shake2Share;->stopSensor()V

    .line 90
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 16
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 101
    .local v1, "currentTime":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcn/sharesdk/onekeyshare/Shake2Share;->mLastUpdateTime:J

    sub-long v7, v1, v12

    .line 102
    .local v7, "diffTime":J
    const-wide/16 v12, 0x64

    cmp-long v12, v7, v12

    if-lez v12, :cond_3

    .line 103
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcn/sharesdk/onekeyshare/Shake2Share;->mLastUpdateTime:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_2

    .line 104
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v13, 0x0

    aget v9, v12, v13

    .line 105
    .local v9, "x":F
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v13, 0x1

    aget v10, v12, v13

    .line 106
    .local v10, "y":F
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v13, 0x2

    aget v11, v12, v13

    .line 107
    .local v11, "z":F
    move-object/from16 v0, p0

    iget v12, v0, Lcn/sharesdk/onekeyshare/Shake2Share;->mLastX:F

    sub-float v4, v9, v12

    .line 108
    .local v4, "deltaX":F
    move-object/from16 v0, p0

    iget v12, v0, Lcn/sharesdk/onekeyshare/Shake2Share;->mLastY:F

    sub-float v5, v10, v12

    .line 109
    .local v5, "deltaY":F
    move-object/from16 v0, p0

    iget v12, v0, Lcn/sharesdk/onekeyshare/Shake2Share;->mLastZ:F

    sub-float v6, v11, v12

    .line 110
    .local v6, "deltaZ":F
    mul-float v12, v4, v4

    mul-float v13, v5, v5

    add-float/2addr v12, v13

    mul-float v13, v6, v6

    add-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v12, v12

    long-to-float v13, v7

    div-float/2addr v12, v13

    const v13, 0x461c4000

    mul-float v3, v12, v13

    .line 111
    .local v3, "delta":F
    const v12, 0x44bb8000

    cmpl-float v12, v3, v12

    if-lez v12, :cond_1

    .line 112
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcn/sharesdk/onekeyshare/Shake2Share;->shaken:Z

    if-nez v12, :cond_0

    .line 113
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcn/sharesdk/onekeyshare/Shake2Share;->shaken:Z

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/onekeyshare/Shake2Share;->finish()V

    .line 117
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/sharesdk/onekeyshare/Shake2Share;->listener:Lcn/sharesdk/onekeyshare/Shake2Share$OnShakeListener;

    if-eqz v12, :cond_1

    .line 118
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/sharesdk/onekeyshare/Shake2Share;->listener:Lcn/sharesdk/onekeyshare/Shake2Share$OnShakeListener;

    invoke-interface {v12}, Lcn/sharesdk/onekeyshare/Shake2Share$OnShakeListener;->onShake()V

    .line 121
    :cond_1
    move-object/from16 v0, p0

    iput v9, v0, Lcn/sharesdk/onekeyshare/Shake2Share;->mLastX:F

    .line 122
    move-object/from16 v0, p0

    iput v10, v0, Lcn/sharesdk/onekeyshare/Shake2Share;->mLastY:F

    .line 123
    move-object/from16 v0, p0

    iput v11, v0, Lcn/sharesdk/onekeyshare/Shake2Share;->mLastZ:F

    .line 125
    .end local v3    # "delta":F
    .end local v4    # "deltaX":F
    .end local v5    # "deltaY":F
    .end local v6    # "deltaZ":F
    .end local v9    # "x":F
    .end local v10    # "y":F
    .end local v11    # "z":F
    :cond_2
    move-object/from16 v0, p0

    iput-wide v1, v0, Lcn/sharesdk/onekeyshare/Shake2Share;->mLastUpdateTime:J

    .line 127
    :cond_3
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/mob/tools/FakeActivity;->setActivity(Landroid/app/Activity;)V

    .line 47
    const-string v2, "ssdk_oks_shake_to_share_back"

    invoke-static {p1, v2}, Lcn/sharesdk/framework/utils/ShareSDKR;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 48
    .local v0, "resId":I
    if-lez v0, :cond_0

    .line 49
    const v2, 0x103000b

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setTheme(I)V

    .line 50
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 51
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 52
    .local v1, "win":Landroid/view/Window;
    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 54
    .end local v1    # "win":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method public setOnShakeListener(Lcn/sharesdk/onekeyshare/Shake2Share$OnShakeListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/sharesdk/onekeyshare/Shake2Share$OnShakeListener;

    .prologue
    .line 42
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->listener:Lcn/sharesdk/onekeyshare/Shake2Share$OnShakeListener;

    .line 43
    return-void
.end method
