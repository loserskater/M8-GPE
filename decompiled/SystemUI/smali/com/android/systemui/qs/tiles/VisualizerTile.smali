.class public Lcom/android/systemui/qs/tiles/VisualizerTile;
.super Lcom/android/systemui/qs/QSTile;
.source "VisualizerTile.java"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/VisualizerTile$TileBarGraphRenderer;,
        Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$State;",
        ">;",
        "Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;"
    }
.end annotation


# instance fields
.field private mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/media/session/MediaSession$Token;",
            "Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLinkVisualizer:Ljava/lang/Runnable;

.field private mLinked:Z

.field private mListening:Z

.field private mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private mTileVisible:Z

.field private final mUnlinkVisualizer:Ljava/lang/Runnable;

.field private mVisualizer:Lcom/pheelicks/visualizer/VisualizerView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/VisualizerTile;->mCallbacks:Ljava/util/Map;

    new-instance v4, Lcom/android/systemui/qs/tiles/VisualizerTile$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/VisualizerTile$2;-><init>(Lcom/android/systemui/qs/tiles/VisualizerTile;)V

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/VisualizerTile;->mLinkVisualizer:Ljava/lang/Runnable;

    new-instance v4, Lcom/android/systemui/qs/tiles/VisualizerTile$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/VisualizerTile$3;-><init>(Lcom/android/systemui/qs/tiles/VisualizerTile;)V

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/VisualizerTile;->mUnlinkVisualizer:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/VisualizerTile;->mContext:Landroid/content/Context;

    const-string v5, "media_session"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/session/MediaSessionManager;

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/VisualizerTile;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/VisualizerTile;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/VisualizerTile;->mTileVisible:Z

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/VisualizerTile;)Lcom/pheelicks/visualizer/VisualizerView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VisualizerTile;->mVisualizer:Lcom/pheelicks/visualizer/VisualizerView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/VisualizerTile;Lcom/pheelicks/visualizer/VisualizerView;)Lcom/pheelicks/visualizer/VisualizerView;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VisualizerTile;->mVisualizer:Lcom/pheelicks/visualizer/VisualizerView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/VisualizerTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/VisualizerTile;->mLinked:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/tiles/VisualizerTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/VisualizerTile;->mLinked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/VisualizerTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VisualizerTile;->checkIfPlaying()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/VisualizerTile;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VisualizerTile;->mCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method private checkIfPlaying()V
    .locals 4

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/VisualizerTile;->mCallbacks:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo;

    invoke-virtual {v3}, Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/VisualizerTile;->mTileVisible:Z

    if-eq v0, v3, :cond_2

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/VisualizerTile;->mTileVisible:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VisualizerTile;->refreshState()V

    :cond_2
    return-void
.end method


# virtual methods
.method public createTileView(Landroid/content/Context;)Lcom/android/systemui/qs/QSTileView;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/tiles/VisualizerTile$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/VisualizerTile$1;-><init>(Lcom/android/systemui/qs/tiles/VisualizerTile;Landroid/content/Context;)V

    return-object v0
.end method

.method protected handleClick()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VisualizerTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected handleDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VisualizerTile;->mCallbacks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo;

    invoke-virtual {v2}, Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo;->unregister()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VisualizerTile;->mCallbacks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/VisualizerTile;->mTileVisible:Z

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$State;->visible:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VisualizerTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0204

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSTile$State;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$State;-><init>()V

    return-object v0
.end method

.method public onActiveSessionsChanged(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VisualizerTile;->mCallbacks:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VisualizerTile;->mCallbacks:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo;-><init>(Lcom/android/systemui/qs/tiles/VisualizerTile;Landroid/media/session/MediaController;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setListening(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/VisualizerTile;->mListening:Z

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/VisualizerTile;->mListening:Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VisualizerTile;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/VisualizerTile;->mTileVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VisualizerTile;->mLinkVisualizer:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VisualizerTile;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v0, p0}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VisualizerTile;->mUnlinkVisualizer:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
