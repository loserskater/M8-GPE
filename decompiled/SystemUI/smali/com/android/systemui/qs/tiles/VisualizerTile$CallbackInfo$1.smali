.class Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo$1;
.super Landroid/media/session/MediaController$Callback;
.source "VisualizerTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo;-><init>(Lcom/android/systemui/qs/tiles/VisualizerTile;Landroid/media/session/MediaController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo;

.field final synthetic val$this$0:Lcom/android/systemui/qs/tiles/VisualizerTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo;Lcom/android/systemui/qs/tiles/VisualizerTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo$1;->this$1:Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo$1;->val$this$0:Lcom/android/systemui/qs/tiles/VisualizerTile;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo$1;->this$1:Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo;

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo;->mIsPlaying:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo$1;->this$1:Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo;->this$0:Lcom/android/systemui/qs/tiles/VisualizerTile;

    # invokes: Lcom/android/systemui/qs/tiles/VisualizerTile;->checkIfPlaying()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VisualizerTile;->access$200(Lcom/android/systemui/qs/tiles/VisualizerTile;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSessionDestroyed()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo$1;->this$1:Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo;->destroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo$1;->this$1:Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo;->this$0:Lcom/android/systemui/qs/tiles/VisualizerTile;

    # invokes: Lcom/android/systemui/qs/tiles/VisualizerTile;->checkIfPlaying()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VisualizerTile;->access$200(Lcom/android/systemui/qs/tiles/VisualizerTile;)V

    return-void
.end method
