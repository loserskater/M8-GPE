.class Lcom/android/systemui/qs/tiles/VisualizerTile$TileBarGraphRenderer;
.super Lcom/pheelicks/visualizer/renderer/Renderer;
.source "VisualizerTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/VisualizerTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TileBarGraphRenderer"
.end annotation


# instance fields
.field private mDbFuzz:I

.field private mDbFuzzFactor:I

.field private mDivisions:I

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(ILandroid/graphics/Paint;II)V
    .locals 0

    invoke-direct {p0}, Lcom/pheelicks/visualizer/renderer/Renderer;-><init>()V

    iput p1, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$TileBarGraphRenderer;->mDivisions:I

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$TileBarGraphRenderer;->mPaint:Landroid/graphics/Paint;

    iput p3, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$TileBarGraphRenderer;->mDbFuzz:I

    iput p4, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$TileBarGraphRenderer;->mDbFuzzFactor:I

    return-void
.end method


# virtual methods
.method public onRender(Landroid/graphics/Canvas;Lcom/pheelicks/visualizer/AudioData;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public onRender(Landroid/graphics/Canvas;Lcom/pheelicks/visualizer/FFTData;Landroid/graphics/Rect;)V
    .locals 10

    const/4 v1, 0x0

    :goto_0
    iget-object v5, p2, Lcom/pheelicks/visualizer/FFTData;->bytes:[B

    array-length v5, v5

    iget v6, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$TileBarGraphRenderer;->mDivisions:I

    div-int/2addr v5, v6

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$TileBarGraphRenderer;->mFFTPoints:[F

    mul-int/lit8 v6, v1, 0x4

    mul-int/lit8 v7, v1, 0x4

    iget v8, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$TileBarGraphRenderer;->mDivisions:I

    mul-int/2addr v7, v8

    int-to-float v7, v7

    aput v7, v5, v6

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$TileBarGraphRenderer;->mFFTPoints:[F

    mul-int/lit8 v6, v1, 0x4

    add-int/lit8 v6, v6, 0x2

    mul-int/lit8 v7, v1, 0x4

    iget v8, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$TileBarGraphRenderer;->mDivisions:I

    mul-int/2addr v7, v8

    int-to-float v7, v7

    aput v7, v5, v6

    iget-object v5, p2, Lcom/pheelicks/visualizer/FFTData;->bytes:[B

    iget v6, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$TileBarGraphRenderer;->mDivisions:I

    mul-int/2addr v6, v1

    aget-byte v4, v5, v6

    iget-object v5, p2, Lcom/pheelicks/visualizer/FFTData;->bytes:[B

    iget v6, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$TileBarGraphRenderer;->mDivisions:I

    mul-int/2addr v6, v1

    add-int/lit8 v6, v6, 0x1

    aget-byte v2, v5, v6

    mul-int v5, v4, v4

    mul-int v6, v2, v2

    add-int/2addr v5, v6

    int-to-float v3, v5

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->log10(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-int v0, v6

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$TileBarGraphRenderer;->mFFTPoints:[F

    mul-int/lit8 v6, v1, 0x4

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$TileBarGraphRenderer;->mFFTPoints:[F

    mul-int/lit8 v6, v1, 0x4

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v8, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$TileBarGraphRenderer;->mDbFuzzFactor:I

    mul-int/2addr v8, v0

    iget v9, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$TileBarGraphRenderer;->mDbFuzz:I

    add-int/2addr v8, v9

    sub-int/2addr v7, v8

    int-to-float v7, v7

    aput v7, v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$TileBarGraphRenderer;->mFFTPoints:[F

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$TileBarGraphRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    return-void
.end method
