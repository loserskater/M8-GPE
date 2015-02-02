.class Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo;
.super Ljava/lang/Object;
.source "VisualizerTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/VisualizerTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackInfo"
.end annotation


# instance fields
.field mCallback:Landroid/media/session/MediaController$Callback;

.field mController:Landroid/media/session/MediaController;

.field mIsPlaying:Z

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/VisualizerTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/VisualizerTile;Landroid/media/session/MediaController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo;->this$0:Lcom/android/systemui/qs/tiles/VisualizerTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo;->mController:Landroid/media/session/MediaController;

    new-instance v0, Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo$1;-><init>(Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo;Lcom/android/systemui/qs/tiles/VisualizerTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo;->mCallback:Landroid/media/session/MediaController$Callback;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo;->mCallback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {p2, v0}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo;->unregister()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo;->this$0:Lcom/android/systemui/qs/tiles/VisualizerTile;

    # getter for: Lcom/android/systemui/qs/tiles/VisualizerTile;->mCallbacks:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VisualizerTile;->access$300(Lcom/android/systemui/qs/tiles/VisualizerTile;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo;->mController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo;->mController:Landroid/media/session/MediaController;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo;->mCallback:Landroid/media/session/MediaController$Callback;

    return-void
.end method

.method public isPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo;->mIsPlaying:Z

    return v0
.end method

.method public unregister()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo;->mController:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo;->mCallback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$CallbackInfo;->mIsPlaying:Z

    return-void
.end method
