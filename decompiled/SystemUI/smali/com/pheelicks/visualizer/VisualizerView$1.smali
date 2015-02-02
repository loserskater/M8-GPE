.class Lcom/pheelicks/visualizer/VisualizerView$1;
.super Ljava/lang/Object;
.source "VisualizerView.java"

# interfaces
.implements Landroid/media/audiofx/Visualizer$OnDataCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pheelicks/visualizer/VisualizerView;->link(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pheelicks/visualizer/VisualizerView;


# direct methods
.method constructor <init>(Lcom/pheelicks/visualizer/VisualizerView;)V
    .locals 0

    iput-object p1, p0, Lcom/pheelicks/visualizer/VisualizerView$1;->this$0:Lcom/pheelicks/visualizer/VisualizerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 1

    iget-object v0, p0, Lcom/pheelicks/visualizer/VisualizerView$1;->this$0:Lcom/pheelicks/visualizer/VisualizerView;

    invoke-virtual {v0, p2}, Lcom/pheelicks/visualizer/VisualizerView;->updateVisualizerFFT([B)V

    return-void
.end method

.method public onWaveFormDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 1

    iget-object v0, p0, Lcom/pheelicks/visualizer/VisualizerView$1;->this$0:Lcom/pheelicks/visualizer/VisualizerView;

    invoke-virtual {v0, p2}, Lcom/pheelicks/visualizer/VisualizerView;->updateVisualizer([B)V

    return-void
.end method
