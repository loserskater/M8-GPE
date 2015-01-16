.class public Lcom/android/internal/policy/impl/BackKill;
.super Ljava/lang/Object;
.source "BackKill.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/internal/policy/impl/BackKill;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/BackKill;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static killForegroundApp(Landroid/content/Context;I)Z
    .locals 3
    .param p0    # Landroid/content/Context;
    .param p1    # I

    :try_start_0
    invoke-static {p0, p1}, Lcom/android/internal/policy/impl/BackKill;->killForegroundAppInternal(Landroid/content/Context;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/internal/policy/impl/BackKill;->TAG:Ljava/lang/String;

    const-string v2, "Could not kill foreground app"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static killForegroundAppInternal(Landroid/content/Context;I)Z
    .locals 14
    .param p0    # Landroid/content/Context;
    .param p1    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    new-instance v7, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.android.launcher"

    const-string v12, "android.intent.category.HOME"

    invoke-virtual {v7, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v7, v13}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v12, :cond_0

    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v13, "android"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v11, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    const/16 v12, 0x2710

    if-lt v11, v12, :cond_1

    const/16 v12, 0x4e1f

    if-gt v11, v12, :cond_1

    iget v12, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v13, 0x64

    if-ne v12, v13, :cond_1

    iget-object v12, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v12, :cond_3

    iget-object v12, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v12, v12

    if-lez v12, :cond_3

    iget-object v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v8, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v9, v3, v6

    const-string v12, "com.android.systemui"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v12, -0x2

    invoke-interface {v0, v9, v12}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    const/4 v12, 0x1

    :goto_1
    return v12

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    iget v12, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v12}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v12, 0x1

    goto :goto_1

    :catch_0
    move-exception v12

    :cond_4
    const/4 v12, 0x0

    goto :goto_1
.end method
