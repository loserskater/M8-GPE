.class Lcom/android/systemui/SearchPanelCircleView$RectDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SearchPanelCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/SearchPanelCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RectDrawable"
.end annotation


# instance fields
.field private final mRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/systemui/SearchPanelCircleView;


# direct methods
.method constructor <init>(Lcom/android/systemui/SearchPanelCircleView;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/SearchPanelCircleView$RectDrawable;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/SearchPanelCircleView$RectDrawable;->mRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView$RectDrawable;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView$RectDrawable;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView$RectDrawable;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView$RectDrawable;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView$RectDrawable;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    # getter for: Lcom/android/systemui/SearchPanelCircleView;->mBackgroundPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/android/systemui/SearchPanelCircleView;->access$400(Lcom/android/systemui/SearchPanelCircleView;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView$RectDrawable;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    # invokes: Lcom/android/systemui/SearchPanelCircleView;->drawRipples(Landroid/graphics/Canvas;)V
    invoke-static {v0, p1}, Lcom/android/systemui/SearchPanelCircleView;->access$1600(Lcom/android/systemui/SearchPanelCircleView;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView$RectDrawable;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    # getter for: Lcom/android/systemui/SearchPanelCircleView;->mOutlineAlpha:F
    invoke-static {v0}, Lcom/android/systemui/SearchPanelCircleView;->access$500(Lcom/android/systemui/SearchPanelCircleView;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView$RectDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
