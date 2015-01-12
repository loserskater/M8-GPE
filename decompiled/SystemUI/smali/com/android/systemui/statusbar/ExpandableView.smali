.class public abstract Lcom/android/systemui/statusbar/ExpandableView;
.super Landroid/widget/FrameLayout;
.source "ExpandableView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;
    }
.end annotation


# instance fields
.field protected mActualHeight:I

.field private mActualHeightInitialized:Z

.field protected mClipTopAmount:I

.field private mMatchParentViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxNotificationHeight:I

.field private mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mMaxNotificationHeight:I

    .line 48
    return-void
.end method

.method private filterMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipTopAmount:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mActualHeight:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ExpandableView;->filterMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 115
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActualHeight()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mActualHeight:I

    return v0
.end method

.method public getClipTopAmount()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipTopAmount:I

    return v0
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 278
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 279
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 280
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 281
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 282
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 283
    return-void
.end method

.method protected getInitialHeight()I
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getHeight()I

    move-result v0

    return v0
.end method

.method public isContentExpandable()Z
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public isTransparent()Z
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public notifyHeightChanged()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;->onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 236
    :cond_0
    return-void
.end method

.method public onHeightReset()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;->onReset(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 265
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 97
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 98
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mActualHeightInitialized:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mActualHeight:I

    if-nez v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getInitialHeight()I

    move-result v0

    .line 100
    .local v0, "initialHeight":I
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(I)V

    .line 104
    .end local v0    # "initialHeight":I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 52
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/ExpandableView;->mMaxNotificationHeight:I

    move/from16 v16, v0

    .line 53
    .local v16, "ownMaxHeight":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 54
    .local v8, "heightMode":I
    const/high16 v19, 0x40000000

    move/from16 v0, v19

    if-ne v8, v0, :cond_3

    const/4 v7, 0x1

    .line 55
    .local v7, "hasFixedHeight":Z
    :goto_0
    const/high16 v19, -0x80000000

    move/from16 v0, v19

    if-ne v8, v0, :cond_4

    const/4 v11, 0x1

    .line 56
    .local v11, "isHeightLimited":Z
    :goto_1
    if-nez v7, :cond_0

    if-eqz v11, :cond_1

    .line 57
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .line 58
    .local v17, "size":I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 60
    .end local v17    # "size":I
    :cond_1
    const/high16 v19, -0x80000000

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 61
    .local v14, "newHeightSpec":I
    const/4 v13, 0x0

    .line 62
    .local v13, "maxChildHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/ExpandableView;->getChildCount()I

    move-result v4

    .line 63
    .local v4, "childCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v4, :cond_7

    .line 64
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/ExpandableView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 65
    .local v3, "child":Landroid/view/View;
    move v6, v14

    .line 66
    .local v6, "childHeightSpec":I
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 67
    .local v12, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 68
    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v19, v0

    if-ltz v19, :cond_2

    .line 70
    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, v16

    if-le v0, v1, :cond_5

    const/high16 v19, 0x40000000

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 74
    :cond_2
    :goto_3
    const/16 v19, 0x0

    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v20, v0

    move/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->getChildMeasureSpec(III)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v3, v0, v6}, Landroid/view/View;->measure(II)V

    .line 77
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 78
    .local v5, "childHeight":I
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 63
    .end local v5    # "childHeight":I
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 54
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCount":I
    .end local v6    # "childHeightSpec":I
    .end local v7    # "hasFixedHeight":Z
    .end local v9    # "i":I
    .end local v11    # "isHeightLimited":Z
    .end local v12    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v13    # "maxChildHeight":I
    .end local v14    # "newHeightSpec":I
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 55
    .restart local v7    # "hasFixedHeight":Z
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 70
    .restart local v3    # "child":Landroid/view/View;
    .restart local v4    # "childCount":I
    .restart local v6    # "childHeightSpec":I
    .restart local v9    # "i":I
    .restart local v11    # "isHeightLimited":Z
    .restart local v12    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v13    # "maxChildHeight":I
    .restart local v14    # "newHeightSpec":I
    :cond_5
    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v19, v0

    const/high16 v20, 0x40000000

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_3

    .line 80
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 83
    .end local v3    # "child":Landroid/view/View;
    .end local v6    # "childHeightSpec":I
    .end local v12    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    if-eqz v7, :cond_8

    move/from16 v15, v16

    .line 84
    .local v15, "ownHeight":I
    :goto_5
    const/high16 v19, 0x40000000

    move/from16 v0, v19

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 86
    .restart local v3    # "child":Landroid/view/View;
    const/16 v19, 0x0

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v20, v0

    move/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->getChildMeasureSpec(III)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v3, v0, v14}, Landroid/view/View;->measure(II)V

    goto :goto_6

    .end local v3    # "child":Landroid/view/View;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v15    # "ownHeight":I
    :cond_8
    move v15, v13

    .line 83
    goto :goto_5

    .line 90
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v15    # "ownHeight":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 91
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 92
    .local v18, "width":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Lcom/android/systemui/statusbar/ExpandableView;->setMeasuredDimension(II)V

    .line 93
    return-void
.end method

.method public abstract performAddAnimation(JJ)V
.end method

.method public abstract performRemoveAnimation(JFLjava/lang/Runnable;)V
.end method

.method public setActualHeight(I)V
    .locals 1
    .param p1, "actualHeight"    # I

    .prologue
    .line 139
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    .line 140
    return-void
.end method

.method public setActualHeight(IZ)V
    .locals 1
    .param p1, "actualHeight"    # I
    .param p2, "notifyListeners"    # Z

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mActualHeightInitialized:Z

    .line 132
    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mActualHeight:I

    .line 133
    if-eqz p2, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->notifyHeightChanged()V

    .line 136
    :cond_0
    return-void
.end method

.method public setBelowSpeedBump(Z)V
    .locals 0
    .param p1, "below"    # Z

    .prologue
    .line 259
    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 0
    .param p1, "clipTopAmount"    # I

    .prologue
    .line 214
    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipTopAmount:I

    .line 215
    return-void
.end method

.method public setDark(ZZ)V
    .locals 0
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z

    .prologue
    .line 181
    return-void
.end method

.method public setDimmed(ZZ)V
    .locals 0
    .param p1, "dimmed"    # Z
    .param p2, "fade"    # Z

    .prologue
    .line 172
    return-void
.end method

.method public setHideSensitive(ZZJJ)V
    .locals 0
    .param p1, "hideSensitive"    # Z
    .param p2, "animated"    # Z
    .param p3, "delay"    # J
    .param p5, "duration"    # J

    .prologue
    .line 198
    return-void
.end method

.method public setHideSensitiveForIntrinsicHeight(Z)V
    .locals 0
    .param p1, "hideSensitive"    # Z

    .prologue
    .line 191
    return-void
.end method

.method public setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    .line 223
    return-void
.end method
