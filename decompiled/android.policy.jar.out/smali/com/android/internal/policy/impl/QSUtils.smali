.class public Lcom/android/internal/policy/impl/QSUtils;
.super Ljava/lang/Object;
.source "QSUtils.java"


# static fields
.field private static sAvailableTilesFiltered:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deviceSupportsBluetooth()Z
    .locals 1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static deviceSupportsCompass(Landroid/content/Context;)Z
    .locals 3
    .param p0    # Landroid/content/Context;

    const/4 v1, 0x1

    const-string v2, "sensor"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static deviceSupportsFlashLight(Landroid/content/Context;)Z
    .locals 11
    .param p0    # Landroid/content/Context;

    const/4 v9, 0x1

    const-string v10, "camera"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    :try_start_0
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    array-length v7, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v7, :cond_1

    aget-object v5, v0, v4

    invoke-virtual {v2, v5}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_0

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-ne v10, v9, :cond_0

    :goto_1
    return v9

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v9

    :cond_1
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public static deviceSupportsNfc(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static filterTiles(Landroid/content/Context;)V
    .locals 7
    .param p0    # Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-boolean v5, Lcom/android/internal/policy/impl/QSUtils;->sAvailableTilesFiltered:Z

    if-nez v5, :cond_8

    sget-object v5, Lcom/android/internal/policy/impl/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v5, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v5, :pswitch_data_0

    :goto_2
    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    sget-object v5, Lcom/android/internal/policy/impl/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_0
    const-string v6, "flashlight"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v4

    goto :goto_1

    :sswitch_1
    const-string v6, "bt"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v3

    goto :goto_1

    :sswitch_2
    const-string v6, "nfc"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_3
    const-string v6, "compass"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x3

    goto :goto_1

    :sswitch_4
    const-string v6, "visualizer"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x4

    goto :goto_1

    :sswitch_5
    const-string v6, "lte"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x5

    goto :goto_1

    :sswitch_6
    const-string v6, "screen_timeout"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x6

    goto :goto_1

    :sswitch_7
    const-string v6, "profiles"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x7

    goto :goto_1

    :sswitch_8
    const-string v6, "performance"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x8

    goto :goto_1

    :pswitch_0
    invoke-static {p0}, Lcom/android/internal/policy/impl/QSUtils;->deviceSupportsFlashLight(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    move v1, v3

    :goto_3
    goto :goto_2

    :cond_2
    move v1, v4

    goto :goto_3

    :pswitch_1
    invoke-static {}, Lcom/android/internal/policy/impl/QSUtils;->deviceSupportsBluetooth()Z

    move-result v5

    if-nez v5, :cond_3

    move v1, v3

    :goto_4
    goto :goto_2

    :cond_3
    move v1, v4

    goto :goto_4

    :pswitch_2
    invoke-static {p0}, Lcom/android/internal/policy/impl/QSUtils;->deviceSupportsNfc(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    move v1, v3

    :goto_5
    goto/16 :goto_2

    :cond_4
    move v1, v4

    goto :goto_5

    :pswitch_3
    invoke-static {p0}, Lcom/android/internal/policy/impl/QSUtils;->deviceSupportsCompass(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_5

    move v1, v3

    :goto_6
    goto/16 :goto_2

    :cond_5
    move v1, v4

    goto :goto_6

    :pswitch_4
    invoke-static {p0}, Lcom/android/internal/policy/impl/QSUtils;->isAudioFXInstalled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_6

    move v1, v3

    :goto_7
    goto/16 :goto_2

    :cond_6
    move v1, v4

    goto :goto_7

    :pswitch_5
    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_7
    sput-boolean v3, Lcom/android/internal/policy/impl/QSUtils;->sAvailableTilesFiltered:Z

    :cond_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x583cefd0 -> :sswitch_8
        -0x468444da -> :sswitch_0
        -0x3bbd5416 -> :sswitch_7
        -0x130a8722 -> :sswitch_4
        0xc52 -> :sswitch_1
        0x1a3dd -> :sswitch_5
        0x1a9ab -> :sswitch_2
        0x3343888e -> :sswitch_6
        0x38a73d12 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static getAvailableTiles(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/internal/policy/impl/QSUtils;->filterTiles(Landroid/content/Context;)V

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getDefaultTiles(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/internal/policy/impl/QSUtils;->filterTiles(Landroid/content/Context;)V

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getDefaultTilesAsString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/android/internal/policy/impl/QSUtils;->getDefaultTiles(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static isAudioFXInstalled(Landroid/content/Context;)Z
    .locals 5
    .param p0    # Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    const-string v3, "org.cyanogenmod.audiofx"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0
.end method
