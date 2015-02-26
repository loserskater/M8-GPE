.class Lcom/android/systemui/doze/ShakeSensorManager$ShakeSensorEventListener;
.super Ljava/lang/Object;
.source "ShakeSensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/ShakeSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShakeSensorEventListener"
.end annotation


# instance fields
.field private average:F

.field private fill:I

.field private gravity:[F

.field private final mListener:Lcom/android/systemui/doze/ShakeSensorManager$ShakeListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mShakeSensor:Landroid/hardware/Sensor;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/systemui/doze/ShakeSensorManager$ShakeListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/doze/ShakeSensorManager$ShakeSensorEventListener;->gravity:[F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/doze/ShakeSensorManager$ShakeSensorEventListener;->average:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/doze/ShakeSensorManager$ShakeSensorEventListener;->fill:I

    iput-object p1, p0, Lcom/android/systemui/doze/ShakeSensorManager$ShakeSensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object p2, p0, Lcom/android/systemui/doze/ShakeSensorManager$ShakeSensorEventListener;->mShakeSensor:Landroid/hardware/Sensor;

    iput-object p3, p0, Lcom/android/systemui/doze/ShakeSensorManager$ShakeSensorEventListener;->mListener:Lcom/android/systemui/doze/ShakeSensorManager$ShakeListener;

    return-void
.end method

.method private unregisterWithoutNotification()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/ShakeSensorManager$ShakeSensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const v0, 0x3f4ccccd    # 0.8f

    const/4 v1, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/doze/ShakeSensorManager$ShakeSensorEventListener;->gravity:[F

    const v6, 0x3f4ccccd    # 0.8f

    iget-object v7, p0, Lcom/android/systemui/doze/ShakeSensorManager$ShakeSensorEventListener;->gravity:[F

    aget v7, v7, v1

    mul-float/2addr v6, v7

    const v7, 0x3e4ccccc    # 0.19999999f

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v8, v1

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    aput v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v9

    iget-object v6, p0, Lcom/android/systemui/doze/ShakeSensorManager$ShakeSensorEventListener;->gravity:[F

    aget v6, v6, v9

    sub-float v2, v5, v6

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v10

    iget-object v6, p0, Lcom/android/systemui/doze/ShakeSensorManager$ShakeSensorEventListener;->gravity:[F

    aget v6, v6, v10

    sub-float v3, v5, v6

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v11

    iget-object v6, p0, Lcom/android/systemui/doze/ShakeSensorManager$ShakeSensorEventListener;->gravity:[F

    aget v6, v6, v11

    sub-float v4, v5, v6

    iget v5, p0, Lcom/android/systemui/doze/ShakeSensorManager$ShakeSensorEventListener;->fill:I

    const/4 v6, 0x5

    if-gt v5, v6, :cond_1

    iget v5, p0, Lcom/android/systemui/doze/ShakeSensorManager$ShakeSensorEventListener;->average:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v6, v7

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/systemui/doze/ShakeSensorManager$ShakeSensorEventListener;->average:F

    iget v5, p0, Lcom/android/systemui/doze/ShakeSensorManager$ShakeSensorEventListener;->fill:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/systemui/doze/ShakeSensorManager$ShakeSensorEventListener;->fill:I

    :goto_1
    return-void

    :cond_1
    iget v5, p0, Lcom/android/systemui/doze/ShakeSensorManager$ShakeSensorEventListener;->average:F

    const/high16 v6, 0x40a00000    # 5.0f

    div-float/2addr v5, v6

    # getter for: Lcom/android/systemui/doze/ShakeSensorManager;->SENSITIVITY:F
    invoke-static {}, Lcom/android/systemui/doze/ShakeSensorManager;->access$000()F

    move-result v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/doze/ShakeSensorManager$ShakeSensorEventListener;->mListener:Lcom/android/systemui/doze/ShakeSensorManager$ShakeListener;

    invoke-interface {v5}, Lcom/android/systemui/doze/ShakeSensorManager$ShakeListener;->onShake()V

    :cond_2
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/systemui/doze/ShakeSensorManager$ShakeSensorEventListener;->average:F

    iput v9, p0, Lcom/android/systemui/doze/ShakeSensorManager$ShakeSensorEventListener;->fill:I

    goto :goto_1
.end method

.method public declared-synchronized register()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/doze/ShakeSensorManager$ShakeSensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/systemui/doze/ShakeSensorManager$ShakeSensorEventListener;->mShakeSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    const v3, 0xc350

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterWhenIdle()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/doze/ShakeSensorManager$ShakeSensorEventListener;->unregisterWithoutNotification()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
