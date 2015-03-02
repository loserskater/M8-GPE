.class Lcom/android/systemui/qs/tiles/ScreenshotTile$2;
.super Ljava/lang/Object;
.source "ScreenshotTile.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/ScreenshotTile;->takeScreenshot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ScreenshotTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ScreenshotTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile$2;->this$0:Lcom/android/systemui/qs/tiles/ScreenshotTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile$2;->this$0:Lcom/android/systemui/qs/tiles/ScreenshotTile;

    # getter for: Lcom/android/systemui/qs/tiles/ScreenshotTile;->mScreenshotLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/ScreenshotTile;->access$000(Lcom/android/systemui/qs/tiles/ScreenshotTile;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile$2;->this$0:Lcom/android/systemui/qs/tiles/ScreenshotTile;

    # getter for: Lcom/android/systemui/qs/tiles/ScreenshotTile;->mScreenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/ScreenshotTile;->access$100(Lcom/android/systemui/qs/tiles/ScreenshotTile;)Landroid/content/ServiceConnection;

    move-result-object v4

    if-eq v4, p0, :cond_0

    monitor-exit v5

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    move-object v3, p0

    new-instance v0, Lcom/android/systemui/qs/tiles/ScreenshotTile$2$1;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile$2;->this$0:Lcom/android/systemui/qs/tiles/ScreenshotTile;

    # getter for: Lcom/android/systemui/qs/tiles/ScreenshotTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/ScreenshotTile;->access$300(Lcom/android/systemui/qs/tiles/ScreenshotTile;)Lcom/android/systemui/qs/QSTile$H;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSTile$H;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, p0, v4, v3}, Lcom/android/systemui/qs/tiles/ScreenshotTile$2$1;-><init>(Lcom/android/systemui/qs/tiles/ScreenshotTile$2;Landroid/os/Looper;Landroid/content/ServiceConnection;)V

    new-instance v4, Landroid/os/Messenger;

    invoke-direct {v4, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v4, 0x0

    iput v4, v2, Landroid/os/Message;->arg2:I

    iput v4, v2, Landroid/os/Message;->arg1:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
