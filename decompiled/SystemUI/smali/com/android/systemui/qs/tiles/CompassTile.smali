.class public Lcom/android/systemui/qs/tiles/CompassTile;
.super Lcom/android/systemui/qs/QSTile;
.source "CompassTile.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;",
        "Landroid/hardware/SensorEventListener;"
    }
.end annotation


# instance fields
.field private mAcceleration:[F

.field private mAccelerationSensor:Landroid/hardware/Sensor;

.field private mActive:Z

.field private mGeomagnetic:[F

.field private mGeomagneticFieldSensor:Landroid/hardware/Sensor;

.field private mImage:Landroid/widget/ImageView;

.field private mListeningSensors:Z

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mActive:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mAccelerationSensor:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mGeomagneticFieldSensor:Landroid/hardware/Sensor;

    return-void
.end method

.method private formatValueWithCardinalDirection(F)Ljava/lang/String;
    .locals 7

    float-to-double v2, p1

    const-wide v4, 0x4036800000000000L    # 22.5

    sub-double/2addr v2, v4

    const-wide v4, 0x4076800000000000L    # 360.0

    rem-double/2addr v2, v4

    const-wide v4, 0x4046800000000000L    # 45.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    double-to-int v2, v2

    rem-int/lit8 v0, v2, 0x8

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0b01ff

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aget-object v6, v1, v0

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private setListeningSensors(Z)V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mListeningSensors:Z

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mListeningSensors:Z

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mListeningSensors:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mAccelerationSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mGeomagneticFieldSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method


# virtual methods
.method public createTileView(Landroid/content/Context;)Lcom/android/systemui/qs/QSTileView;
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSTile;->createTileView(Landroid/content/Context;)Lcom/android/systemui/qs/QSTileView;

    move-result-object v0

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected handleClick()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mActive:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mActive:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CompassTile;->refreshState()V

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mActive:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/CompassTile;->setListeningSensors(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/CompassTile;->setListeningSensors(Z)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mImage:Landroid/widget/ImageView;

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 6

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    if-nez p2, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mActive:Z

    iput-boolean v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    iget-boolean v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v3, :cond_3

    const v3, 0x7f020152

    iput v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->iconId:I

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tiles/CompassTile;->formatValueWithCardinalDirection(F)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float v2, v5, v3

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getRotation()F

    move-result v3

    sub-float v1, v2, v3

    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    sub-float/2addr v1, v5

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getRotation()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v1, v5

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setRotation(F)V

    :goto_1
    return-void

    :cond_1
    move-object v3, p2

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0200

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_1

    :cond_3
    const v3, 0x7f020151

    iput v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->iconId:I

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mContext:Landroid/content/Context;

    const v5, 0x7f0b01fe

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/CompassTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CompassTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12

    const/16 v11, 0x9

    const/4 v10, 0x3

    const/high16 v9, 0x43b40000    # 360.0f

    iget-object v6, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mAcceleration:[F

    if-nez v6, :cond_0

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v6}, [F->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    iput-object v6, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mAcceleration:[F

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mAcceleration:[F

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v10, :cond_3

    const v6, 0x3f7851ec    # 0.97f

    aget v7, v5, v2

    mul-float/2addr v6, v7

    const v7, 0x3cf5c280    # 0.029999971f

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v8, v2

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    aput v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mGeomagnetic:[F

    if-nez v6, :cond_2

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v6}, [F->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    iput-object v6, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mGeomagnetic:[F

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mGeomagnetic:[F

    goto :goto_0

    :cond_3
    iget-boolean v6, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mActive:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mListeningSensors:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mAcceleration:[F

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mGeomagnetic:[F

    if-nez v6, :cond_5

    :cond_4
    :goto_2
    return-void

    :cond_5
    new-array v1, v11, [F

    new-array v0, v11, [F

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mAcceleration:[F

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mGeomagnetic:[F

    invoke-static {v1, v0, v6, v7}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v6

    if-eqz v6, :cond_4

    new-array v4, v10, [F

    invoke-static {v1, v4}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    const/4 v6, 0x0

    aget v6, v4, v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v6, v9

    rem-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tiles/CompassTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public setListening(Z)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/CompassTile;->setListeningSensors(Z)V

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/CompassTile;->mActive:Z

    :cond_0
    return-void
.end method
