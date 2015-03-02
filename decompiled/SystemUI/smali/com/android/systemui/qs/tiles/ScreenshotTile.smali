.class public Lcom/android/systemui/qs/tiles/ScreenshotTile;
.super Lcom/android/systemui/qs/QSTile;
.source "ScreenshotTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private mListening:Z

.field private mScreenshotConnection:Landroid/content/ServiceConnection;

.field private final mScreenshotLock:Ljava/lang/Object;

.field final mScreenshotTimeout:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mScreenshotLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mScreenshotConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/systemui/qs/tiles/ScreenshotTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/ScreenshotTile$1;-><init>(Lcom/android/systemui/qs/tiles/ScreenshotTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mScreenshotTimeout:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/ScreenshotTile;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mScreenshotLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/ScreenshotTile;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mScreenshotConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/tiles/ScreenshotTile;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mScreenshotConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/ScreenshotTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/ScreenshotTile;)Lcom/android/systemui/qs/QSTile$H;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/ScreenshotTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/ScreenshotTile;)Lcom/android/systemui/qs/QSTile$H;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    return-object v0
.end method

.method private takeScreenshot()V
    .locals 8

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_0

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Lcom/android/systemui/qs/tiles/ScreenshotTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/ScreenshotTile$2;-><init>(Lcom/android/systemui/qs/tiles/ScreenshotTile;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mScreenshotConnection:Landroid/content/ServiceConnection;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mScreenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-virtual {v2, v4, v6, v7}, Lcom/android/systemui/qs/QSTile$H;->postDelayed(Ljava/lang/Runnable;J)Z

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


# virtual methods
.method public handleClick()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ScreenshotTile;->takeScreenshot()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public handleLongClick()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.gallery3d"

    const-string v2, "com.android.gallery3d.app.GalleryActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.gallery3d"

    const-string v2, "com.android.gallery3d.app.GalleryActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0222

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    const v0, 0x7f0201b1

    iput v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->iconId:I

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/ScreenshotTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

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

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ScreenshotTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mListening:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mListening:Z

    goto :goto_0
.end method
