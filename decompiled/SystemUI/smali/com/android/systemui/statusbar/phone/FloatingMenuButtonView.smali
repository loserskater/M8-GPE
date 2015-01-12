.class public Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;
.super Landroid/widget/ImageView;
.source "FloatingMenuButtonView.java"


# instance fields
.field private circlePaint:Landroid/graphics/Paint;

.field private circleRadius:I

.field private displayFrame:Landroid/graphics/Rect;

.field private downXPos:I

.field private downYPos:I

.field private isEverShow:Z

.field private isWindowMove:Z

.field private isWindowShow:Z

.field private keyDownTime:J

.field private orientation:I

.field private prevXPos:I

.field private prevYPos:I

.field private sendEventListener:Landroid/view/View$OnClickListener;

.field private touchSlop:I

.field private updateCond:I

.field private winLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrset"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput v1, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->orientation:I

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->circlePaint:Landroid/graphics/Paint;

    .line 48
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->isEverShow:Z

    .line 49
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->isWindowShow:Z

    .line 50
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->isWindowMove:Z

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->displayFrame:Landroid/graphics/Rect;

    .line 216
    new-instance v0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView$1;-><init>(Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->sendEventListener:Landroid/view/View$OnClickListener;

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->circlePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->circlePaint:Landroid/graphics/Paint;

    const-string v1, "#CC5D5D5D"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->circleRadius:I

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->updateCond:I

    .line 65
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->touchSlop:I

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->keyDownTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;IIIJJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # J
    .param p6, "x5"    # J

    .prologue
    .line 31
    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->sendEvent(IIIJJ)V

    return-void
.end method

.method private adjustPosition()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 204
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->displayFrame:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 206
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->displayFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->displayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->getWidth()I

    move-result v3

    sub-int v1, v2, v3

    .line 207
    .local v1, "maximumR":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->displayFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->displayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->getHeight()I

    move-result v3

    sub-int v0, v2, v3

    .line 209
    .local v0, "maximumB":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 210
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 212
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 213
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 214
    return-void
.end method

.method private sendEvent(IIIJJ)V
    .locals 16
    .param p1, "keyCode"    # I
    .param p2, "action"    # I
    .param p3, "flags"    # I
    .param p4, "when"    # J
    .param p6, "downTime"    # J

    .prologue
    .line 230
    const-string v2, "FloatingMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendEvent("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    move/from16 v0, p3

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    const/4 v10, 0x1

    .line 233
    .local v10, "repeatCount":I
    :goto_0
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    or-int/lit8 v2, p3, 0x8

    or-int/lit8 v14, v2, 0x40

    const/16 v15, 0x101

    move-wide/from16 v4, p6

    move-wide/from16 v6, p4

    move/from16 v8, p2

    move/from16 v9, p1

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 237
    .local v3, "event":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 239
    return-void

    .line 232
    .end local v3    # "event":Landroid/view/KeyEvent;
    .end local v10    # "repeatCount":I
    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method


# virtual methods
.method attach(Landroid/view/WindowManager;)V
    .locals 6
    .param p1, "_windowManager"    # Landroid/view/WindowManager;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c00bd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 74
    .local v1, "windowSize":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7dc

    const/16 v4, 0x68

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v2, "FloatingMenuWindow"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x1030002

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 88
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->windowManager:Landroid/view/WindowManager;

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    .end local v1    # "windowSize":I
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 247
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 250
    iget v2, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->orientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_0

    .line 252
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->orientation:I

    .line 253
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->displayFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->displayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->getWidth()I

    move-result v3

    sub-int v1, v2, v3

    .line 254
    .local v1, "maximumR":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->displayFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->displayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->getHeight()I

    move-result v3

    sub-int v0, v2, v3

    .line 257
    .local v0, "maximumB":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->displayFrame:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 258
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->displayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->displayFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 259
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->displayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->displayFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, v0

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 261
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->adjustPosition()V

    .line 262
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->windowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, p0, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    .end local v0    # "maximumB":I
    .end local v1    # "maximumR":I
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->circleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 123
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 124
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v10, v0

    .line 130
    .local v10, "rawX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v11, v0

    .line 132
    .local v11, "rawY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 198
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 135
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->isWindowMove:Z

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->downXPos:I

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->downYPos:I

    .line 138
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->keyDownTime:J

    .line 139
    const/16 v1, 0x52

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->keyDownTime:J

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->sendEvent(IIIJJ)V

    .line 141
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->adjustPosition()V

    .line 142
    iput v10, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->prevXPos:I

    .line 143
    iput v11, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->prevYPos:I

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0xe

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 151
    :pswitch_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->prevXPos:I

    sub-int v8, v0, v10

    .line 152
    .local v8, "deltaX":I
    iget v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->prevYPos:I

    sub-int v9, v0, v11

    .line 154
    .local v9, "deltaY":I
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->isWindowMove:Z

    if-nez v0, :cond_2

    .line 157
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->touchSlop:I

    if-gt v0, v1, :cond_1

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->touchSlop:I

    if-le v0, v1, :cond_2

    .line 159
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->isWindowMove:Z

    .line 160
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 165
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->isWindowMove:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->updateCond:I

    if-gt v0, v1, :cond_3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->updateCond:I

    if-le v0, v1, :cond_0

    .line 167
    :cond_3
    iput v10, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->prevXPos:I

    .line 168
    iput v11, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->prevYPos:I

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->displayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int v1, v10, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->displayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v11, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 179
    .end local v8    # "deltaX":I
    .end local v9    # "deltaY":I
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->isWindowMove:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->downXPos:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->downYPos:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v0, v1, :cond_5

    .line 181
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->downXPos:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->downYPos:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 183
    const-string v0, "FloatingMenu"

    const-string v1, "action:fallback to initial position!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->isWindowMove:Z

    if-nez v0, :cond_6

    const/4 v3, 0x0

    .line 189
    .local v3, "eventFlag":I
    :goto_2
    const/16 v1, 0x52

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->keyDownTime:J

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->sendEvent(IIIJJ)V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->isWindowMove:Z

    goto/16 :goto_0

    .line 186
    .end local v3    # "eventFlag":I
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->adjustPosition()V

    goto :goto_1

    .line 188
    :cond_6
    const/16 v3, 0x20

    goto :goto_2

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setVisibility(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    const/4 v5, 0x1

    .line 96
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->isWindowShow:Z

    if-eq p1, v3, :cond_1

    .line 98
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->isWindowShow:Z

    .line 99
    if-eqz p1, :cond_2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->setVisibility(I)V

    .line 102
    if-ne p1, v5, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->isEverShow:Z

    if-nez v3, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00bd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 105
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 106
    .local v1, "xoffset":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 108
    .local v2, "yoffset":I
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->isEverShow:Z

    .line 109
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->displayFrame:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 110
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->displayFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->displayFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    sub-int/2addr v4, v1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 111
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->displayFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->displayFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 112
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->windowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->winLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, p0, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    .end local v0    # "size":I
    .end local v1    # "xoffset":I
    .end local v2    # "yoffset":I
    :cond_0
    const-string v3, "FloatingMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "visibility:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->isWindowShow:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " visibleF:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->displayFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " slop:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->touchSlop:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_1
    return-void

    .line 99
    :cond_2
    const/4 v3, 0x4

    goto/16 :goto_0
.end method
