.class Lcom/android/systemui/qs/tiles/VisualizerTile$3;
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

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$3;->this$0:Lcom/android/systemui/qs/tiles/VisualizerTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$3;->this$0:Lcom/android/systemui/qs/tiles/VisualizerTile;

    # invokes: Lcom/android/systemui/qs/tiles/VisualizerTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VisualizerTile;->access$400(Lcom/android/systemui/qs/tiles/VisualizerTile;)V

    return-void
.end method
