.class public Lcom/android/systemui/qs/tiles/SyncTile;
.super Lcom/android/systemui/qs/QSTile;
.source "SyncTile.java"


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
.field private mHandler:Landroid/os/Handler;

.field private mListening:Z

.field private mSyncObserver:Landroid/content/SyncStatusObserver;

.field private mSyncObserverHandle:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mSyncObserverHandle:Ljava/lang/Object;

    new-instance v0, Lcom/android/systemui/qs/tiles/SyncTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SyncTile$1;-><init>(Lcom/android/systemui/qs/tiles/SyncTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mSyncObserver:Landroid/content/SyncStatusObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/SyncTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SyncTile;->refreshState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/SyncTile;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private isSyncEnabled()Z
    .locals 1

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public handleClick()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SyncTile;->isSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SyncTile;->refreshState()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SyncTile;->qsCollapsePanel()V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    goto :goto_0
.end method

.method protected handleDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mSyncObserverHandle:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mSyncObserverHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mSyncObserverHandle:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public handleLongClick()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SyncTile;->isSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f020114

    iput v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->iconId:I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mContext:Landroid/content/Context;

    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f020113

    iput v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->iconId:I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mContext:Landroid/content/Context;

    const v1, 0x7f090041

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    goto :goto_0
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/SyncTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

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

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SyncTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mListening:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mListening:Z

    goto :goto_0
.end method
