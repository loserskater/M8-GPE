.class Lcom/android/systemui/qs/tiles/VisualizerTile$1;
.super Lcom/android/systemui/qs/QSTileView;
.source "VisualizerTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/VisualizerTile;->createTileView(Landroid/content/Context;)Lcom/android/systemui/qs/QSTileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/VisualizerTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/VisualizerTile;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$1;->this$0:Lcom/android/systemui/qs/tiles/VisualizerTile;

    invoke-direct {p0, p2}, Lcom/android/systemui/qs/QSTileView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected createIcon()Landroid/view/View;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$1;->this$0:Lcom/android/systemui/qs/tiles/VisualizerTile;

    new-instance v4, Lcom/pheelicks/visualizer/VisualizerView;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$1;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/pheelicks/visualizer/VisualizerView;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/systemui/qs/tiles/VisualizerTile;->mVisualizer:Lcom/pheelicks/visualizer/VisualizerView;
    invoke-static {v3, v4}, Lcom/android/systemui/qs/tiles/VisualizerTile;->access$002(Lcom/android/systemui/qs/tiles/VisualizerTile;Lcom/pheelicks/visualizer/VisualizerView;)Lcom/pheelicks/visualizer/VisualizerView;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$1;->this$0:Lcom/android/systemui/qs/tiles/VisualizerTile;

    # getter for: Lcom/android/systemui/qs/tiles/VisualizerTile;->mVisualizer:Lcom/pheelicks/visualizer/VisualizerView;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/VisualizerTile;->access$000(Lcom/android/systemui/qs/tiles/VisualizerTile;)Lcom/pheelicks/visualizer/VisualizerView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/pheelicks/visualizer/VisualizerView;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$1;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const v3, 0x7f0c0123

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v3, 0x7f070046

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Landroid/graphics/DashPathEffect;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const v5, 0x7f0c0121

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    const v5, 0x7f0c0122

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v7

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$1;->this$0:Lcom/android/systemui/qs/tiles/VisualizerTile;

    # getter for: Lcom/android/systemui/qs/tiles/VisualizerTile;->mVisualizer:Lcom/pheelicks/visualizer/VisualizerView;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/VisualizerTile;->access$000(Lcom/android/systemui/qs/tiles/VisualizerTile;)Lcom/pheelicks/visualizer/VisualizerView;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/qs/tiles/VisualizerTile$TileBarGraphRenderer;

    const v5, 0x7f09003a

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const v6, 0x7f09003c

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const v7, 0x7f09003b

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-direct {v4, v5, v0, v6, v7}, Lcom/android/systemui/qs/tiles/VisualizerTile$TileBarGraphRenderer;-><init>(ILandroid/graphics/Paint;II)V

    invoke-virtual {v3, v4}, Lcom/pheelicks/visualizer/VisualizerView;->addRenderer(Lcom/pheelicks/visualizer/renderer/Renderer;)V

    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$1;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$1;->this$0:Lcom/android/systemui/qs/tiles/VisualizerTile;

    # getter for: Lcom/android/systemui/qs/tiles/VisualizerTile;->mVisualizer:Lcom/pheelicks/visualizer/VisualizerView;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/VisualizerTile;->access$000(Lcom/android/systemui/qs/tiles/VisualizerTile;)Lcom/pheelicks/visualizer/VisualizerView;

    move-result-object v3

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const v5, 0x7f0c0120

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v2
.end method