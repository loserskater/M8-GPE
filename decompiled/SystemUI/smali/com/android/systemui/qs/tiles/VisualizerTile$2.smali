.class Lcom/android/systemui/qs/tiles/VisualizerTile$2;
.super Ljava/lang/Object;
.source "VisualizerTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/VisualizerTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/VisualizerTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/VisualizerTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$2;->this$0:Lcom/android/systemui/qs/tiles/VisualizerTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$2;->this$0:Lcom/android/systemui/qs/tiles/VisualizerTile;

    # getter for: Lcom/android/systemui/qs/tiles/VisualizerTile;->mVisualizer:Lcom/pheelicks/visualizer/VisualizerView;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VisualizerTile;->access$000(Lcom/android/systemui/qs/tiles/VisualizerTile;)Lcom/pheelicks/visualizer/VisualizerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$2;->this$0:Lcom/android/systemui/qs/tiles/VisualizerTile;

    # getter for: Lcom/android/systemui/qs/tiles/VisualizerTile;->mLinked:Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VisualizerTile;->access$100(Lcom/android/systemui/qs/tiles/VisualizerTile;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$2;->this$0:Lcom/android/systemui/qs/tiles/VisualizerTile;

    # getter for: Lcom/android/systemui/qs/tiles/VisualizerTile;->mVisualizer:Lcom/pheelicks/visualizer/VisualizerView;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VisualizerTile;->access$000(Lcom/android/systemui/qs/tiles/VisualizerTile;)Lcom/pheelicks/visualizer/VisualizerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pheelicks/visualizer/VisualizerView;->link(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$2;->this$0:Lcom/android/systemui/qs/tiles/VisualizerTile;

    const/4 v1, 0x1

    # setter for: Lcom/android/systemui/qs/tiles/VisualizerTile;->mLinked:Z
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/VisualizerTile;->access$102(Lcom/android/systemui/qs/tiles/VisualizerTile;Z)Z

    :cond_0
    return-void
.end method
