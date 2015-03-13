.class Lcom/android/systemui/qs/tiles/VisualizerTile$4;
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

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$4;->this$0:Lcom/android/systemui/qs/tiles/VisualizerTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-wide/16 v6, 0xc8

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$4;->this$0:Lcom/android/systemui/qs/tiles/VisualizerTile;

    # getter for: Lcom/android/systemui/qs/tiles/VisualizerTile;->mIsAnythingPlaying:Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/VisualizerTile;->access$500(Lcom/android/systemui/qs/tiles/VisualizerTile;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$4;->this$0:Lcom/android/systemui/qs/tiles/VisualizerTile;

    # getter for: Lcom/android/systemui/qs/tiles/VisualizerTile;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/VisualizerTile;->access$600(Lcom/android/systemui/qs/tiles/VisualizerTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$4;->this$0:Lcom/android/systemui/qs/tiles/VisualizerTile;

    # getter for: Lcom/android/systemui/qs/tiles/VisualizerTile;->mVisualizer:Lcom/pheelicks/visualizer/VisualizerView;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/VisualizerTile;->access$200(Lcom/android/systemui/qs/tiles/VisualizerTile;)Lcom/pheelicks/visualizer/VisualizerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pheelicks/visualizer/VisualizerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$4;->this$0:Lcom/android/systemui/qs/tiles/VisualizerTile;

    # getter for: Lcom/android/systemui/qs/tiles/VisualizerTile;->mVisualizer:Lcom/pheelicks/visualizer/VisualizerView;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/VisualizerTile;->access$200(Lcom/android/systemui/qs/tiles/VisualizerTile;)Lcom/pheelicks/visualizer/VisualizerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pheelicks/visualizer/VisualizerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz v0, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$4;->this$0:Lcom/android/systemui/qs/tiles/VisualizerTile;

    # getter for: Lcom/android/systemui/qs/tiles/VisualizerTile;->mStaticVisualizerIcon:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/VisualizerTile;->access$300(Lcom/android/systemui/qs/tiles/VisualizerTile;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$4;->this$0:Lcom/android/systemui/qs/tiles/VisualizerTile;

    # getter for: Lcom/android/systemui/qs/tiles/VisualizerTile;->mStaticVisualizerIcon:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/VisualizerTile;->access$300(Lcom/android/systemui/qs/tiles/VisualizerTile;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2
.end method
