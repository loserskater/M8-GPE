.class public Lcom/pheelicks/visualizer/VisualizerView;
.super Landroid/view/View;
.source "VisualizerView.java"


# instance fields
.field private mAudioSessionId:I

.field private mBytes:[B

.field mCanvas:Landroid/graphics/Canvas;

.field mCanvasBitmap:Landroid/graphics/Bitmap;

.field private mFFTBytes:[B

.field private mFadePaint:Landroid/graphics/Paint;

.field mFlash:Z

.field private mFlashPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mRenderers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/pheelicks/visualizer/renderer/Renderer;",
            ">;"
        }
    .end annotation
.end field

.field private mVisualizer:Landroid/media/audiofx/Visualizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/pheelicks/visualizer/VisualizerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/pheelicks/visualizer/VisualizerView;->mRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pheelicks/visualizer/VisualizerView;->mFlashPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pheelicks/visualizer/VisualizerView;->mFadePaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pheelicks/visualizer/VisualizerView;->mFlash:Z

    invoke-direct {p0}, Lcom/pheelicks/visualizer/VisualizerView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    const/4 v0, 0x0

    const/16 v2, 0xff

    iput-object v0, p0, Lcom/pheelicks/visualizer/VisualizerView;->mBytes:[B

    iput-object v0, p0, Lcom/pheelicks/visualizer/VisualizerView;->mFFTBytes:[B

    iget-object v0, p0, Lcom/pheelicks/visualizer/VisualizerView;->mFlashPaint:Landroid/graphics/Paint;

    const/16 v1, 0x7a

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/pheelicks/visualizer/VisualizerView;->mFadePaint:Landroid/graphics/Paint;

    const/16 v1, 0xc8

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/pheelicks/visualizer/VisualizerView;->mFadePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/pheelicks/visualizer/VisualizerView;->mRenderers:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addRenderer(Lcom/pheelicks/visualizer/renderer/Renderer;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/pheelicks/visualizer/VisualizerView;->mRenderers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public link(I)V
    .locals 9

    const/4 v5, 0x0

    const/4 v8, 0x1

    iget-object v2, p0, Lcom/pheelicks/visualizer/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/pheelicks/visualizer/VisualizerView;->mAudioSessionId:I

    if-eq p1, v2, :cond_0

    iget-object v2, p0, Lcom/pheelicks/visualizer/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v2, v5}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    iget-object v2, p0, Lcom/pheelicks/visualizer/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v2}, Landroid/media/audiofx/Visualizer;->release()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/pheelicks/visualizer/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    :cond_0
    const-string v2, "VisualizerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/pheelicks/visualizer/VisualizerView;->mAudioSessionId:I

    iget-object v2, p0, Lcom/pheelicks/visualizer/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-nez v2, :cond_1

    :try_start_0
    new-instance v2, Landroid/media/audiofx/Visualizer;

    invoke-direct {v2, p1}, Landroid/media/audiofx/Visualizer;-><init>(I)V

    iput-object v2, p0, Lcom/pheelicks/visualizer/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/pheelicks/visualizer/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v2, v5}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    iget-object v2, p0, Lcom/pheelicks/visualizer/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-static {}, Landroid/media/audiofx/Visualizer;->getCaptureSizeRange()[I

    move-result-object v3

    aget v3, v3, v8

    invoke-virtual {v2, v3}, Landroid/media/audiofx/Visualizer;->setCaptureSize(I)I

    new-instance v0, Lcom/pheelicks/visualizer/VisualizerView$1;

    invoke-direct {v0, p0}, Lcom/pheelicks/visualizer/VisualizerView$1;-><init>(Lcom/pheelicks/visualizer/VisualizerView;)V

    iget-object v2, p0, Lcom/pheelicks/visualizer/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    move-result v3

    int-to-double v4, v3

    const-wide/high16 v6, 0x3fe8000000000000L

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-virtual {v2, v0, v3, v8, v8}, Landroid/media/audiofx/Visualizer;->setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I

    :cond_1
    iget-object v2, p0, Lcom/pheelicks/visualizer/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v2, v8}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "VisualizerView"

    const-string v3, "Error enabling visualizer!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v4, p0, Lcom/pheelicks/visualizer/VisualizerView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/pheelicks/visualizer/VisualizerView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/pheelicks/visualizer/VisualizerView;->getHeight()I

    move-result v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Lcom/pheelicks/visualizer/VisualizerView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/pheelicks/visualizer/VisualizerView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v4, p0, Lcom/pheelicks/visualizer/VisualizerView;->mCanvas:Landroid/graphics/Canvas;

    if-nez v4, :cond_1

    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/pheelicks/visualizer/VisualizerView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/pheelicks/visualizer/VisualizerView;->mCanvas:Landroid/graphics/Canvas;

    :cond_1
    iget-object v4, p0, Lcom/pheelicks/visualizer/VisualizerView;->mBytes:[B

    if-eqz v4, :cond_2

    new-instance v0, Lcom/pheelicks/visualizer/AudioData;

    iget-object v4, p0, Lcom/pheelicks/visualizer/VisualizerView;->mBytes:[B

    invoke-direct {v0, v4}, Lcom/pheelicks/visualizer/AudioData;-><init>([B)V

    iget-object v4, p0, Lcom/pheelicks/visualizer/VisualizerView;->mRenderers:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pheelicks/visualizer/renderer/Renderer;

    iget-object v4, p0, Lcom/pheelicks/visualizer/VisualizerView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/pheelicks/visualizer/VisualizerView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v0, v5}, Lcom/pheelicks/visualizer/renderer/Renderer;->render(Landroid/graphics/Canvas;Lcom/pheelicks/visualizer/AudioData;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/pheelicks/visualizer/VisualizerView;->mFFTBytes:[B

    if-eqz v4, :cond_3

    new-instance v1, Lcom/pheelicks/visualizer/FFTData;

    iget-object v4, p0, Lcom/pheelicks/visualizer/VisualizerView;->mFFTBytes:[B

    invoke-direct {v1, v4}, Lcom/pheelicks/visualizer/FFTData;-><init>([B)V

    iget-object v4, p0, Lcom/pheelicks/visualizer/VisualizerView;->mRenderers:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pheelicks/visualizer/renderer/Renderer;

    iget-object v4, p0, Lcom/pheelicks/visualizer/VisualizerView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/pheelicks/visualizer/VisualizerView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v1, v5}, Lcom/pheelicks/visualizer/renderer/Renderer;->render(Landroid/graphics/Canvas;Lcom/pheelicks/visualizer/FFTData;Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/pheelicks/visualizer/VisualizerView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/pheelicks/visualizer/VisualizerView;->mFadePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    iget-boolean v4, p0, Lcom/pheelicks/visualizer/VisualizerView;->mFlash:Z

    if-eqz v4, :cond_4

    iput-boolean v7, p0, Lcom/pheelicks/visualizer/VisualizerView;->mFlash:Z

    iget-object v4, p0, Lcom/pheelicks/visualizer/VisualizerView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/pheelicks/visualizer/VisualizerView;->mFlashPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    :cond_4
    iget-object v4, p0, Lcom/pheelicks/visualizer/VisualizerView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method public unlink()V
    .locals 2

    iget-object v0, p0, Lcom/pheelicks/visualizer/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pheelicks/visualizer/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    iget-object v0, p0, Lcom/pheelicks/visualizer/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Visualizer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pheelicks/visualizer/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    :cond_0
    return-void
.end method

.method public updateVisualizer([B)V
    .locals 0

    iput-object p1, p0, Lcom/pheelicks/visualizer/VisualizerView;->mBytes:[B

    invoke-virtual {p0}, Lcom/pheelicks/visualizer/VisualizerView;->invalidate()V

    return-void
.end method

.method public updateVisualizerFFT([B)V
    .locals 0

    iput-object p1, p0, Lcom/pheelicks/visualizer/VisualizerView;->mFFTBytes:[B

    invoke-virtual {p0}, Lcom/pheelicks/visualizer/VisualizerView;->invalidate()V

    return-void
.end method
