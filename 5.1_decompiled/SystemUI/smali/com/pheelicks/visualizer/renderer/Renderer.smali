.class public abstract Lcom/pheelicks/visualizer/renderer/Renderer;
.super Ljava/lang/Object;
.source "Renderer.java"


# instance fields
.field protected mFFTPoints:[F

.field protected mPoints:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onRender(Landroid/graphics/Canvas;Lcom/pheelicks/visualizer/AudioData;Landroid/graphics/Rect;)V
.end method

.method public abstract onRender(Landroid/graphics/Canvas;Lcom/pheelicks/visualizer/FFTData;Landroid/graphics/Rect;)V
.end method

.method public final render(Landroid/graphics/Canvas;Lcom/pheelicks/visualizer/AudioData;Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/pheelicks/visualizer/renderer/Renderer;->mPoints:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pheelicks/visualizer/renderer/Renderer;->mPoints:[F

    array-length v0, v0

    iget-object v1, p2, Lcom/pheelicks/visualizer/AudioData;->bytes:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_1

    :cond_0
    iget-object v0, p2, Lcom/pheelicks/visualizer/AudioData;->bytes:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/pheelicks/visualizer/renderer/Renderer;->mPoints:[F

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/pheelicks/visualizer/renderer/Renderer;->onRender(Landroid/graphics/Canvas;Lcom/pheelicks/visualizer/AudioData;Landroid/graphics/Rect;)V

    return-void
.end method

.method public final render(Landroid/graphics/Canvas;Lcom/pheelicks/visualizer/FFTData;Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/pheelicks/visualizer/renderer/Renderer;->mFFTPoints:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pheelicks/visualizer/renderer/Renderer;->mFFTPoints:[F

    array-length v0, v0

    iget-object v1, p2, Lcom/pheelicks/visualizer/FFTData;->bytes:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_1

    :cond_0
    iget-object v0, p2, Lcom/pheelicks/visualizer/FFTData;->bytes:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/pheelicks/visualizer/renderer/Renderer;->mFFTPoints:[F

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/pheelicks/visualizer/renderer/Renderer;->onRender(Landroid/graphics/Canvas;Lcom/pheelicks/visualizer/FFTData;Landroid/graphics/Rect;)V

    return-void
.end method
