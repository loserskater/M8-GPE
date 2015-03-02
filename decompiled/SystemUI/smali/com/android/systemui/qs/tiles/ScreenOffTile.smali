.class public Lcom/android/systemui/qs/tiles/ScreenOffTile;
.super Lcom/android/systemui/qs/QSTile;
.source "ScreenOffTile.java"


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

.field private mPm:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenOffTile;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenOffTile;->mPm:Landroid/os/PowerManager;

    return-void
.end method

.method private triggerVirtualKeypress(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/qs/tiles/ScreenOffTile$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/systemui/qs/tiles/ScreenOffTile$1;-><init>(Lcom/android/systemui/qs/tiles/ScreenOffTile;ZI)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public handleClick()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenOffTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenOffTile;->mPm:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    return-void
.end method

.method public handleLongClick()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenOffTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    const/16 v0, 0x1a

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/tiles/ScreenOffTile;->triggerVirtualKeypress(IZ)V

    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenOffTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    const/16 v0, 0x1a

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/tiles/ScreenOffTile;->triggerVirtualKeypress(IZ)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenOffTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0229

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    const v0, 0x7f0201ac

    iput v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->iconId:I

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/ScreenOffTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

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

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ScreenOffTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ScreenOffTile;->mListening:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/ScreenOffTile;->mListening:Z

    goto :goto_0
.end method
