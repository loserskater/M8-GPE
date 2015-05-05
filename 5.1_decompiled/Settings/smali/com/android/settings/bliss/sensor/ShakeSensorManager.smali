.class public Lcom/android/settings/bliss/sensor/ShakeSensorManager;
.super Ljava/lang/Object;
.source "ShakeSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bliss/sensor/ShakeSensorManager$ShakeSensorEventListener;,
        Lcom/android/settings/bliss/sensor/ShakeSensorManager$ShakeListener;
    }
.end annotation


# static fields
.field private static SENSITIVITY:F


# instance fields
.field private mManagerEnabled:Z

.field private final mShakeSensorListener:Lcom/android/settings/bliss/sensor/ShakeSensorManager$ShakeSensorEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x41200000    # 10.0f

    sput v0, Lcom/android/settings/bliss/sensor/ShakeSensorManager;->SENSITIVITY:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/bliss/sensor/ShakeSensorManager$ShakeListener;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "sensor"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/bliss/sensor/ShakeSensorManager;->mShakeSensorListener:Lcom/android/settings/bliss/sensor/ShakeSensorManager$ShakeSensorEventListener;

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/android/settings/bliss/sensor/ShakeSensorManager$ShakeSensorEventListener;

    invoke-direct {v2, v0, v1, p2}, Lcom/android/settings/bliss/sensor/ShakeSensorManager$ShakeSensorEventListener;-><init>(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/settings/bliss/sensor/ShakeSensorManager$ShakeListener;)V

    iput-object v2, p0, Lcom/android/settings/bliss/sensor/ShakeSensorManager;->mShakeSensorListener:Lcom/android/settings/bliss/sensor/ShakeSensorManager$ShakeSensorEventListener;

    goto :goto_0
.end method

.method static synthetic access$000()F
    .locals 1

    sget v0, Lcom/android/settings/bliss/sensor/ShakeSensorManager;->SENSITIVITY:F

    return v0
.end method


# virtual methods
.method public disable()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bliss/sensor/ShakeSensorManager;->mShakeSensorListener:Lcom/android/settings/bliss/sensor/ShakeSensorManager$ShakeSensorEventListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/bliss/sensor/ShakeSensorManager;->mManagerEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bliss/sensor/ShakeSensorManager;->mShakeSensorListener:Lcom/android/settings/bliss/sensor/ShakeSensorManager$ShakeSensorEventListener;

    invoke-virtual {v0}, Lcom/android/settings/bliss/sensor/ShakeSensorManager$ShakeSensorEventListener;->unregisterWhenIdle()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bliss/sensor/ShakeSensorManager;->mManagerEnabled:Z

    :cond_0
    return-void
.end method

.method public enable(F)V
    .locals 1

    sput p1, Lcom/android/settings/bliss/sensor/ShakeSensorManager;->SENSITIVITY:F

    iget-object v0, p0, Lcom/android/settings/bliss/sensor/ShakeSensorManager;->mShakeSensorListener:Lcom/android/settings/bliss/sensor/ShakeSensorManager$ShakeSensorEventListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/bliss/sensor/ShakeSensorManager;->mManagerEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bliss/sensor/ShakeSensorManager;->mShakeSensorListener:Lcom/android/settings/bliss/sensor/ShakeSensorManager$ShakeSensorEventListener;

    invoke-virtual {v0}, Lcom/android/settings/bliss/sensor/ShakeSensorManager$ShakeSensorEventListener;->register()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bliss/sensor/ShakeSensorManager;->mManagerEnabled:Z

    :cond_0
    return-void
.end method
