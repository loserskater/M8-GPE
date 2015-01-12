.class public Lcom/htc/lockscreen/LockScreenCommandService;
.super Landroid/app/Service;
.source "LockScreenCommandService.java"


# instance fields
.field private final mBinder:Lcom/htc/lockscreen/ILockScreenCommandService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/htc/lockscreen/LockScreenCommandService$1;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/LockScreenCommandService$1;-><init>(Lcom/htc/lockscreen/LockScreenCommandService;)V

    iput-object v0, p0, Lcom/htc/lockscreen/LockScreenCommandService;->mBinder:Lcom/htc/lockscreen/ILockScreenCommandService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/lockscreen/LockScreenCommandService;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/lockscreen/LockScreenCommandService;->forceDismiss()V

    return-void
.end method

.method private forceDismiss()V
    .locals 4

    invoke-virtual {p0}, Lcom/htc/lockscreen/LockScreenCommandService;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/android/systemui/SystemUIApplication;

    if-eqz v3, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/SystemUIApplication;

    const-class v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v2, v3}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->forceDismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method checkPermission()V
    .locals 3

    invoke-virtual {p0}, Lcom/htc/lockscreen/LockScreenCommandService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LockScreenCommandService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller needs permission \'android.permission.CONTROL_KEYGUARD\' to call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "android.permission.CONTROL_KEYGUARD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/LockScreenCommandService;->mBinder:Lcom/htc/lockscreen/ILockScreenCommandService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    return-void
.end method
