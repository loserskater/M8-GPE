.class public Lcom/android/systemui/qs/tiles/FlashlightTile;
.super Lcom/android/systemui/qs/QSTile;
.source "FlashlightTile.java"

# interfaces
.implements Landroid/hardware/TorchManager$TorchCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;",
        "Landroid/hardware/TorchManager$TorchCallback;"
    }
.end annotation


# instance fields
.field private final mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private mRecentlyOnTimeout:Ljava/lang/Runnable;

.field private final mTorchManager:Landroid/hardware/TorchManager;

.field private mWasLastOn:J


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0200b7

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0200b5

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    new-instance v0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/FlashlightTile$1;-><init>(Lcom/android/systemui/qs/tiles/FlashlightTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mRecentlyOnTimeout:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/TorchManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mTorchManager:Landroid/hardware/TorchManager;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mTorchManager:Landroid/hardware/TorchManager;

    invoke-virtual {v0, p0}, Landroid/hardware/TorchManager;->addListener(Landroid/hardware/TorchManager$TorchCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/FlashlightTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->refreshState()V

    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00b1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00b0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected handleClick()V
    .locals 2

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mTorchManager:Landroid/hardware/TorchManager;

    invoke-virtual {v1, v0}, Landroid/hardware/TorchManager;->setTorchEnabled(Z)V

    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/systemui/qs/QSTile$UserBoolean;->USER_TRUE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/android/systemui/qs/QSTile$UserBoolean;->USER_FALSE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    goto :goto_2
.end method

.method protected handleDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mTorchManager:Landroid/hardware/TorchManager;

    invoke-virtual {v0, p0}, Landroid/hardware/TorchManager;->removeListener(Landroid/hardware/TorchManager$TorchCallback;)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 8

    iget-boolean v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mWasLastOn:J

    :cond_0
    instance-of v2, p2, Lcom/android/systemui/qs/QSTile$UserBoolean;

    if-eqz v2, :cond_1

    move-object v2, p2

    check-cast v2, Lcom/android/systemui/qs/QSTile$UserBoolean;

    iget-boolean v2, v2, Lcom/android/systemui/qs/QSTile$UserBoolean;->value:Z

    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    :cond_1
    iget-boolean v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mWasLastOn:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mWasLastOn:J

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mWasLastOn:J

    :cond_2
    :goto_0
    iget-wide v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mWasLastOn:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mTorchManager:Landroid/hardware/TorchManager;

    invoke-virtual {v2}, Landroid/hardware/TorchManager;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v2}, Lcom/android/systemui/qs/QSTile$Host;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c00fa

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    :goto_2
    instance-of v2, p2, Lcom/android/systemui/qs/QSTile$UserBoolean;

    if-eqz v2, :cond_7

    check-cast p2, Lcom/android/systemui/qs/QSTile$UserBoolean;

    iget-boolean v2, p2, Lcom/android/systemui/qs/QSTile$UserBoolean;->userInitiated:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget-boolean v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v2, :cond_8

    const v1, 0x7f0c00af

    :goto_4
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mRecentlyOnTimeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSTile$H;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mRecentlyOnTimeout:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mWasLastOn:J

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/qs/QSTile$H;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    :cond_8
    const v1, 0x7f0c00ae

    goto :goto_4
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/FlashlightTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUserSwitch(I)V
    .locals 0

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

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public onTorchAvailabilityChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mTorchManager:Landroid/hardware/TorchManager;

    invoke-virtual {v0}, Landroid/hardware/TorchManager;->isTorchOn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public onTorchError()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public onTorchOff()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public setListening(Z)V
    .locals 0

    return-void
.end method
