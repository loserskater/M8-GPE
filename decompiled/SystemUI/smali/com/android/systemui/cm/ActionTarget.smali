.class public Lcom/android/systemui/cm/ActionTarget;
.super Ljava/lang/Object;
.source "ActionTarget.java"


# instance fields
.field private mAm:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field private mHandler:Landroid/os/Handler;

.field private mInjectKeyCode:I

.field final mInjectKeyDownRunnable:Ljava/lang/Runnable;

.field final mInjectKeyUpRunnable:Ljava/lang/Runnable;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field final mKillRunnable:Ljava/lang/Runnable;

.field private mScreenshotConnection:Landroid/content/ServiceConnection;

.field private final mScreenshotLock:Ljava/lang/Object;

.field final mScreenshotTimeout:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mScreenshotLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mScreenshotConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/systemui/cm/ActionTarget$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/cm/ActionTarget$1;-><init>(Lcom/android/systemui/cm/ActionTarget;)V

    iput-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mInjectKeyDownRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/cm/ActionTarget$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/cm/ActionTarget$2;-><init>(Lcom/android/systemui/cm/ActionTarget;)V

    iput-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mInjectKeyUpRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/cm/ActionTarget$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/cm/ActionTarget$3;-><init>(Lcom/android/systemui/cm/ActionTarget;)V

    iput-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mKillRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/cm/ActionTarget$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/cm/ActionTarget$4;-><init>(Lcom/android/systemui/cm/ActionTarget;)V

    iput-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mScreenshotTimeout:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mAm:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mKeyguardManager:Landroid/app/KeyguardManager;

    new-instance v0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    iget-object v1, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/FlashlightController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/cm/ActionTarget;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/cm/ActionTarget;->mInjectKeyCode:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/cm/ActionTarget;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/cm/ActionTarget;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mScreenshotLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/cm/ActionTarget;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mScreenshotConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/cm/ActionTarget;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/cm/ActionTarget;->mScreenshotConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/cm/ActionTarget;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private dismissKeyguard()V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1

    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    return-object v0
.end method

.method private injectKeyDelayed(I)V
    .locals 4

    iput p1, p0, Lcom/android/systemui/cm/ActionTarget;->mInjectKeyCode:I

    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/cm/ActionTarget;->mInjectKeyDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/cm/ActionTarget;->mInjectKeyUpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/cm/ActionTarget;->mInjectKeyDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/cm/ActionTarget;->mInjectKeyUpRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private switchToNormalRingerMode()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/cm/ActionTarget;->mAm:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x5

    const/16 v2, 0x55

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    return-void
.end method

.method private switchToSilentMode()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mAm:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    return-void
.end method

.method private switchToVibrateMode()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/cm/ActionTarget;->mAm:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    iget-object v1, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method private takeScreenshot()V
    .locals 8

    iget-object v3, p0, Lcom/android/systemui/cm/ActionTarget;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/cm/ActionTarget;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_0

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Lcom/android/systemui/cm/ActionTarget$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/cm/ActionTarget$5;-><init>(Lcom/android/systemui/cm/ActionTarget;)V

    iget-object v2, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mScreenshotConnection:Landroid/content/ServiceConnection;

    iget-object v2, p0, Lcom/android/systemui/cm/ActionTarget;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/cm/ActionTarget;->mScreenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private toggleTorch()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->toggleFlashlight()V

    return-void
.end method


# virtual methods
.method public launchAction(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/cm/ActionTarget;->launchAction(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public launchAction(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "none"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v4, v5

    :goto_0
    return v4

    :cond_1
    const-string v6, "recents"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->dismissKeyguard()V

    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_0

    :cond_2
    const-string v6, "home"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lcom/android/systemui/cm/ActionTarget;->injectKeyDelayed(I)V

    goto :goto_0

    :cond_3
    const-string v6, "back"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/android/systemui/cm/ActionTarget;->injectKeyDelayed(I)V

    goto :goto_0

    :cond_4
    const-string v6, "menu"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v5, 0x52

    invoke-direct {p0, v5}, Lcom/android/systemui/cm/ActionTarget;->injectKeyDelayed(I)V

    goto :goto_0

    :cond_5
    const-string v6, "standby"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v5, 0x1a

    invoke-direct {p0, v5}, Lcom/android/systemui/cm/ActionTarget;->injectKeyDelayed(I)V

    goto :goto_0

    :cond_6
    const-string v6, "imeSwitcher"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v5, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.settings.SHOW_INPUT_METHOD_PICKER"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_7
    const-string v6, "screenshot"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->takeScreenshot()V

    goto :goto_0

    :cond_8
    const-string v6, "assist"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    move v4, v5

    goto :goto_0

    :cond_9
    const-string v6, "killTask"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v5, p0, Lcom/android/systemui/cm/ActionTarget;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/cm/ActionTarget;->mKillRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_a
    const-string v6, "ringVibrate"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v5, p0, Lcom/android/systemui/cm/ActionTarget;->mAm:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    if-eq v5, v4, :cond_b

    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->switchToVibrateMode()V

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->switchToNormalRingerMode()V

    goto/16 :goto_0

    :cond_c
    const-string v6, "ringSilent"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v5, p0, Lcom/android/systemui/cm/ActionTarget;->mAm:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    if-eqz v5, :cond_d

    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->switchToSilentMode()V

    goto/16 :goto_0

    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->switchToNormalRingerMode()V

    goto/16 :goto_0

    :cond_e
    const-string v6, "ringVibrateSilent"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v5, p0, Lcom/android/systemui/cm/ActionTarget;->mAm:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_f

    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->switchToVibrateMode()V

    goto/16 :goto_0

    :cond_f
    if-ne v2, v4, :cond_10

    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->switchToSilentMode()V

    goto/16 :goto_0

    :cond_10
    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->switchToNormalRingerMode()V

    goto/16 :goto_0

    :cond_11
    const-string v6, "notifications"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    :try_start_1
    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v5

    goto/16 :goto_0

    :cond_12
    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->toggleTorch()V

    goto/16 :goto_0

    :cond_13
    const/4 v6, 0x0

    :try_start_2
    invoke-static {p1, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v6, 0x10000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->dismissKeyguard()V

    iget-object v6, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v1, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v4, "ActionTarget"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "URISyntaxException: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v4, v5

    goto/16 :goto_0

    :catch_3
    move-exception v0

    const-string v4, "ActionTarget"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ActivityNotFound: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
