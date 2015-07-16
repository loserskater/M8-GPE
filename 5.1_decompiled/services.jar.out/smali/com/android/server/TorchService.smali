.class public Lcom/android/server/TorchService;
.super Landroid/hardware/ITorchService$Stub;
.source "TorchService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TorchService$CameraUserRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DISPATCH_AVAILABILITY_CHANGED:I = 0x2

.field private static final DISPATCH_ERROR:I = 0x0

.field private static final DISPATCH_OFF:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mCamerasInUse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/TorchService$CameraUserRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mFlashlightRequest:Landroid/hardware/camera2/CaptureRequest;

.field private mHandler:Landroid/os/Handler;

.field private final mKillFlashlightRunnable:Ljava/lang/Runnable;

.field private mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/hardware/ITorchCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTorchAppUid:I

.field private mTorchAvailable:Z

.field private mTorchCameraId:I

.field private final mTorchCameraListener:Landroid/hardware/camera2/CameraDevice$StateListener;

.field private mTorchEnabled:Z

.field private final mTorchSessionListener:Landroid/hardware/camera2/CameraCaptureSession$StateListener;

.field private final mUpdateFlashlightRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/server/TorchService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/TorchService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/ITorchService$Stub;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TorchService;->mListeners:Landroid/os/RemoteCallbackList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/TorchService;->mTorchAppUid:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/TorchService;->mTorchCameraId:I

    new-instance v0, Lcom/android/server/TorchService$2;

    invoke-direct {v0, p0}, Lcom/android/server/TorchService$2;-><init>(Lcom/android/server/TorchService;)V

    iput-object v0, p0, Lcom/android/server/TorchService;->mUpdateFlashlightRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/TorchService$3;

    invoke-direct {v0, p0}, Lcom/android/server/TorchService$3;-><init>(Lcom/android/server/TorchService;)V

    iput-object v0, p0, Lcom/android/server/TorchService;->mKillFlashlightRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/TorchService$4;

    invoke-direct {v0, p0}, Lcom/android/server/TorchService$4;-><init>(Lcom/android/server/TorchService;)V

    iput-object v0, p0, Lcom/android/server/TorchService;->mTorchCameraListener:Landroid/hardware/camera2/CameraDevice$StateListener;

    new-instance v0, Lcom/android/server/TorchService$5;

    invoke-direct {v0, p0}, Lcom/android/server/TorchService$5;-><init>(Lcom/android/server/TorchService;)V

    iput-object v0, p0, Lcom/android/server/TorchService;->mTorchSessionListener:Landroid/hardware/camera2/CameraCaptureSession$StateListener;

    new-instance v0, Lcom/android/server/TorchService$6;

    invoke-direct {v0, p0}, Lcom/android/server/TorchService$6;-><init>(Lcom/android/server/TorchService;)V

    iput-object v0, p0, Lcom/android/server/TorchService;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iput-object p1, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/server/TorchService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p0}, Lcom/android/server/TorchService;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/TorchService;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/TorchService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/TorchService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/TorchService;->handleError()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/TorchService;)Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/android/server/TorchService;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/TorchService;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1

    iget-object v0, p0, Lcom/android/server/TorchService;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/TorchService;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iput-object p1, p0, Lcom/android/server/TorchService;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/TorchService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/TorchService;->mTorchCameraId:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/TorchService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/TorchService;->mTorchAvailable:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/TorchService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/TorchService;->mTorchAvailable:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/TorchService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/TorchService;->dispatchAvailabilityChanged(Z)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/TorchService;Landroid/os/IBinder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/TorchService;->removeCameraUserLocked(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/TorchService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/TorchService;->updateFlashlight(Z)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/server/TorchService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/TorchService;->mTorchEnabled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/TorchService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/TorchService;->dispatchOff()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/TorchService;)Landroid/hardware/camera2/CameraDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/TorchService;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/TorchService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/TorchService;->postUpdateFlashlight()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/TorchService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/TorchService;->teardownTorch()V

    return-void
.end method

.method private dispatchAvailabilityChanged(Z)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/TorchService;->dispatchListeners(IZ)V

    return-void
.end method

.method private dispatchError()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/server/TorchService;->dispatchListeners(IZ)V

    return-void
.end method

.method private dispatchListeners(IZ)V
    .locals 7

    iget-object v5, p0, Lcom/android/server/TorchService;->mListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/TorchService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v4, p0, Lcom/android/server/TorchService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/hardware/ITorchCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    :try_start_1
    invoke-interface {v3}, Landroid/hardware/ITorchCallback;->onTorchError()V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    if-ne p1, v4, :cond_2

    invoke-interface {v3}, Landroid/hardware/ITorchCallback;->onTorchOff()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v4, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    const-string v6, "Unable to post progress to client listener"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :cond_2
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    :try_start_3
    invoke-interface {v3, p2}, Landroid/hardware/ITorchCallback;->onTorchAvailabilityChanged(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_3
    :try_start_4
    iget-object v4, p0, Lcom/android/server/TorchService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void
.end method

.method private dispatchOff()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/TorchService;->dispatchListeners(IZ)V

    return-void
.end method

.method private declared-synchronized ensureHandler()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/TorchService;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/TorchService;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getCameraId()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v8, p0, Lcom/android/server/TorchService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v8}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    array-length v6, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v4, v0, v3

    iget-object v8, p0, Lcom/android/server/TorchService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v8, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    :goto_1
    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getSmallestSize(Ljava/lang/String;)Landroid/util/Size;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v6, p0, Lcom/android/server/TorchService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v6, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const-class v7, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v6, v4

    if-nez v6, :cond_1

    :cond_0
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Camera "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "doesn\'t support any outputSize."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    const/4 v6, 0x0

    aget-object v1, v4, v6

    move-object v0, v4

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-lt v6, v7, :cond_2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v7

    if-lt v6, v7, :cond_2

    move-object v1, v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private handleError()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/TorchService;->mTorchEnabled:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/TorchService;->dispatchError()V

    invoke-direct {p0}, Lcom/android/server/TorchService;->dispatchOff()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/TorchService;->updateFlashlight(Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private postUpdateFlashlight()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/TorchService;->ensureHandler()V

    iget-object v0, p0, Lcom/android/server/TorchService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/TorchService;->mUpdateFlashlightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private removeCameraUserLocked(Landroid/os/IBinder;I)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TorchService$CameraUserRecord;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/TorchService$CameraUserRecord;->token:Landroid/os/IBinder;

    if-ne v1, p1, :cond_1

    sget-boolean v1, Lcom/android/server/TorchService;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing camera user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->delete(I)V

    :cond_1
    return-void
.end method

.method private startDevice()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/TorchService;->mTorchAppUid:I

    invoke-direct {p0}, Lcom/android/server/TorchService;->getCameraId()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TorchService;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startDevice(), cameraID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/TorchService;->mTorchCameraId:I

    iget-object v1, p0, Lcom/android/server/TorchService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/android/server/TorchService;->mTorchCameraListener:Landroid/hardware/camera2/CameraDevice$StateListener;

    iget-object v3, p0, Lcom/android/server/TorchService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private startSession()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    new-instance v2, Landroid/graphics/SurfaceTexture;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/SurfaceTexture;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/TorchService;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/TorchService;->getSmallestSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/TorchService;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance v2, Landroid/view/Surface;

    iget-object v3, p0, Lcom/android/server/TorchService;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v2, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v2, p0, Lcom/android/server/TorchService;->mSurface:Landroid/view/Surface;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/TorchService;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v3, p0, Lcom/android/server/TorchService;->mTorchSessionListener:Landroid/hardware/camera2/CameraCaptureSession$StateListener;

    iget-object v4, p0, Lcom/android/server/TorchService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v3, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private teardownTorch()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iput-object v1, p0, Lcom/android/server/TorchService;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object v1, p0, Lcom/android/server/TorchService;->mFlashlightRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v0, p0, Lcom/android/server/TorchService;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/TorchService;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iget-object v0, p0, Lcom/android/server/TorchService;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_0
    iput-object v1, p0, Lcom/android/server/TorchService;->mSurface:Landroid/view/Surface;

    iput-object v1, p0, Lcom/android/server/TorchService;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method private updateFlashlight(Z)V
    .locals 7

    const/4 v2, 0x1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-boolean v4, p0, Lcom/android/server/TorchService;->mTorchEnabled:Z

    if-eqz v4, :cond_1

    if-nez p1, :cond_1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_4

    :try_start_2
    iget-object v4, p0, Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/android/server/TorchService;->startDevice()V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_0
    move-exception v1

    :goto_2
    sget-object v4, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    const-string v5, "Error in updateFlashlight"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/server/TorchService;->handleError()V

    goto :goto_1

    :cond_2
    :try_start_5
    iget-object v4, p0, Lcom/android/server/TorchService;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v4, :cond_3

    invoke-direct {p0}, Lcom/android/server/TorchService;->startSession()V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/android/server/TorchService;->mFlashlightRequest:Landroid/hardware/camera2/CaptureRequest;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/server/TorchService;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/TorchService;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/TorchService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    iput-object v3, p0, Lcom/android/server/TorchService;->mFlashlightRequest:Landroid/hardware/camera2/CaptureRequest;

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/TorchService;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v4}, Landroid/hardware/camera2/CameraDevice;->close()V

    invoke-direct {p0}, Lcom/android/server/TorchService;->teardownTorch()V
    :try_end_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1
.end method


# virtual methods
.method public addListener(Landroid/hardware/ITorchCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_TORCH_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/TorchService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public initialize()V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/TorchService;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/TorchService;->mTorchCameraId:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    iget v1, p0, Lcom/android/server/TorchService;->mTorchCameraId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/TorchService;->ensureHandler()V

    iget-object v1, p0, Lcom/android/server/TorchService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/android/server/TorchService;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v3, p0, Lcom/android/server/TorchService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t initialize."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized isAvailable()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_TORCH_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/TorchService;->mTorchAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isTorchOn()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_TORCH_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/TorchService;->mTorchEnabled:Z

    return v0
.end method

.method public onCameraClosed(Landroid/os/IBinder;I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/TorchService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraClosed(token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/TorchService;->removeCameraUserLocked(Landroid/os/IBinder;I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCameraOpened(Landroid/os/IBinder;I)V
    .locals 4

    sget-boolean v1, Lcom/android/server/TorchService;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraOpened(token= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cameraId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget v1, p0, Lcom/android/server/TorchService;->mTorchAppUid:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget v3, p0, Lcom/android/server/TorchService;->mTorchAppUid:I

    if-ne v1, v3, :cond_4

    sget-boolean v1, Lcom/android/server/TorchService;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    const-string v3, "Camera was opened by torch app"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput p2, p0, Lcom/android/server/TorchService;->mTorchCameraId:I

    :cond_2
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/server/TorchService;->mKillFlashlightRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_3
    :try_start_1
    new-instance v1, Lcom/android/server/TorchService$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/TorchService$1;-><init>(Lcom/android/server/TorchService;ILandroid/os/IBinder;)V

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v2, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/TorchService$CameraUserRecord;

    invoke-direct {v3, p1}, Lcom/android/server/TorchService$CameraUserRecord;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    return-void

    :cond_4
    :try_start_3
    iget v1, p0, Lcom/android/server/TorchService;->mTorchCameraId:I

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/server/TorchService;->DEBUG:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    const-string v3, "Need to kill torch"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public removeListener(Landroid/hardware/ITorchCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_TORCH_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/TorchService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public declared-synchronized setTorchEnabled(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_TORCH_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/TorchService;->mTorchEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/TorchService;->mTorchEnabled:Z

    invoke-direct {p0}, Lcom/android/server/TorchService;->postUpdateFlashlight()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toggleTorch()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_TORCH_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/TorchService;->mTorchEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/TorchService;->setTorchEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
