.class public Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;
.super Ljava/lang/Object;
.source "TaskStackViewLayoutAlgorithm.java"


# static fields
.field static px:[F

.field static xp:[F


# instance fields
.field mBetweenAffiliationOffset:I

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mInitialScrollP:F

.field mMaxScrollP:F

.field mMinScrollP:F

.field mStackRect:Landroid/graphics/Rect;

.field mStackVisibleRect:Landroid/graphics/Rect;

.field mTaskProgressMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field mTaskRect:Landroid/graphics/Rect;

.field mViewRect:Landroid/graphics/Rect;

.field mWithinAffiliationOffset:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/RecentsConfiguration;)V
    .locals 1
    .param p1, "config"    # Lcom/android/systemui/recents/RecentsConfiguration;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    .line 62
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 65
    invoke-static {}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->initializeCurve()V

    .line 66
    return-void
.end method

.method public static initializeCurve()V
    .locals 16

    .prologue
    .line 220
    sget-object v9, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    if-eqz v9, :cond_1

    sget-object v9, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    if-eqz v9, :cond_1

    .line 271
    .local v0, "dx":[F
    .local v2, "fx":[F
    .local v3, "p":F
    .local v4, "pLength":F
    .local v5, "pStep":I
    .local v6, "step":F
    .local v7, "x":F
    .local v8, "xStep":I
    :cond_0
    return-void

    .line 221
    .end local v0    # "dx":[F
    .end local v2    # "fx":[F
    .end local v3    # "p":F
    .end local v4    # "pLength":F
    .end local v5    # "pStep":I
    .end local v6    # "step":F
    .end local v7    # "x":F
    .end local v8    # "xStep":I
    :cond_1
    const/16 v9, 0xfb

    new-array v9, v9, [F

    sput-object v9, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    .line 222
    const/16 v9, 0xfb

    new-array v9, v9, [F

    sput-object v9, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    .line 225
    const/16 v9, 0xfb

    new-array v2, v9, [F

    .line 226
    .restart local v2    # "fx":[F
    const v6, 0x3b83126f

    .line 227
    .restart local v6    # "step":F
    const/4 v7, 0x0

    .line 228
    .restart local v7    # "x":F
    const/4 v8, 0x0

    .restart local v8    # "xStep":I
    :goto_0
    const/16 v9, 0xfa

    if-gt v8, v9, :cond_2

    .line 229
    invoke-static {v7}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->logFunc(F)F

    move-result v9

    aput v9, v2, v8

    .line 230
    add-float/2addr v7, v6

    .line 228
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 233
    :cond_2
    const/4 v4, 0x0

    .line 234
    .restart local v4    # "pLength":F
    const/16 v9, 0xfb

    new-array v0, v9, [F

    .line 235
    .restart local v0    # "dx":[F
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v0, v9

    .line 236
    const/4 v8, 0x1

    :goto_1
    const/16 v9, 0xfa

    if-ge v8, v9, :cond_3

    .line 237
    aget v9, v2, v8

    add-int/lit8 v10, v8, -0x1

    aget v10, v2, v10

    sub-float/2addr v9, v10

    float-to-double v10, v9

    const-wide/high16 v12, 0x4000000000000000L

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    float-to-double v12, v6

    const-wide/high16 v14, 0x4000000000000000L

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v9, v10

    aput v9, v0, v8

    .line 238
    aget v9, v0, v8

    add-float/2addr v4, v9

    .line 236
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 241
    :cond_3
    const/4 v3, 0x0

    .line 242
    .restart local v3    # "p":F
    sget-object v9, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 243
    sget-object v9, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    const/16 v10, 0xfa

    const/high16 v11, 0x3f800000

    aput v11, v9, v10

    .line 244
    const/4 v8, 0x1

    :goto_2
    const/16 v9, 0xfa

    if-gt v8, v9, :cond_4

    .line 245
    aget v9, v0, v8

    div-float/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    add-float/2addr v3, v9

    .line 246
    sget-object v9, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    aput v3, v9, v8

    .line 244
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 250
    :cond_4
    const/4 v8, 0x0

    .line 251
    const/4 v3, 0x0

    .line 252
    sget-object v9, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 253
    sget-object v9, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    const/16 v10, 0xfa

    const/high16 v11, 0x3f800000

    aput v11, v9, v10

    .line 254
    const/4 v5, 0x0

    .restart local v5    # "pStep":I
    :goto_3
    const/16 v9, 0xfa

    if-ge v5, v9, :cond_0

    .line 256
    :goto_4
    const/16 v9, 0xfa

    if-ge v8, v9, :cond_5

    .line 257
    sget-object v9, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    aget v9, v9, v8

    cmpl-float v9, v9, v3

    if-lez v9, :cond_6

    .line 261
    :cond_5
    if-nez v8, :cond_7

    .line 262
    sget-object v9, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    const/4 v10, 0x0

    aput v10, v9, v5

    .line 269
    :goto_5
    add-float/2addr v3, v6

    .line 254
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 258
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 265
    :cond_7
    sget-object v9, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    add-int/lit8 v10, v8, -0x1

    aget v9, v9, v10

    sub-float v9, v3, v9

    sget-object v10, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    aget v10, v10, v8

    sget-object v11, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    add-int/lit8 v12, v8, -0x1

    aget v11, v11, v12

    sub-float/2addr v10, v11

    div-float v1, v9, v10

    .line 266
    .local v1, "fraction":F
    add-int/lit8 v9, v8, -0x1

    int-to-float v9, v9

    add-float/2addr v9, v1

    mul-float v7, v9, v6

    .line 267
    sget-object v9, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    aput v7, v9, v5

    goto :goto_5
.end method

.method static logFunc(F)F
    .locals 6
    .param p0, "x"    # F

    .prologue
    .line 279
    const/high16 v0, 0x3f800000

    const-wide v2, 0x40a7700000000000L

    invoke-static {p0}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->reverse(F)F

    move-result v1

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    const v2, 0x453b8000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method static reverse(F)F
    .locals 2
    .param p0, "x"    # F

    .prologue
    .line 275
    neg-float v0, p0

    const/high16 v1, 0x3fe00000

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method computeMinMaxScroll(Ljava/util/ArrayList;ZZ)V
    .locals 21
    .param p2, "launchedWithAltTab"    # Z
    .param p3, "launchedFromHome"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->clear()V

    .line 100
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 101
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMinScrollP:F

    .line 154
    :goto_0
    return-void

    .line 106
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v17

    .line 107
    .local v17, "taskHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v4

    .line 108
    .local v4, "pAtBottomOfStackRect":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mWithinAffiliationOffset:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v12

    .line 110
    .local v12, "pWithinAffiliateTop":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->curveProgressToScale(F)F

    move-result v13

    .line 111
    .local v13, "scale":F
    const/high16 v18, 0x3f800000

    sub-float v18, v18, v13

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    const/high16 v19, 0x40000000

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v14, v0

    .line 112
    .local v14, "scaleYOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mWithinAffiliationOffset:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    add-int v18, v18, v14

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v12

    .line 114
    sub-float v11, v4, v12

    .line 115
    .local v11, "pWithinAffiliateOffset":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mBetweenAffiliationOffset:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v18

    sub-float v7, v4, v18

    .line 117
    .local v7, "pBetweenAffiliateOffset":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v18, v18, v17

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v18

    sub-float v10, v4, v18

    .line 119
    .local v10, "pTaskHeightOffset":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v18

    sub-float v8, v4, v18

    .line 123
    .local v8, "pNavBarOffset":F
    const/high16 v3, 0x3f000000

    .line 124
    .local v3, "pAtBackMostCardTop":F
    move v5, v3

    .line 125
    .local v5, "pAtFrontMostCardTop":F
    move v6, v3

    .line 126
    .local v6, "pAtSecondFrontMostCardTop":F
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 127
    .local v16, "taskCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v2, v0, :cond_3

    .line 128
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/recents/model/Task;

    .line 129
    .local v15, "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v19, v0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    add-int/lit8 v18, v16, -0x1

    move/from16 v0, v18

    if-ge v2, v0, :cond_1

    .line 133
    iget-object v0, v15, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/android/systemui/recents/model/TaskGrouping;->isFrontMostTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v18

    if-eqz v18, :cond_2

    move v9, v7

    .line 135
    .local v9, "pPeek":F
    :goto_2
    move v6, v5

    .line 136
    add-float/2addr v5, v9

    .line 127
    .end local v9    # "pPeek":F
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v9, v11

    .line 133
    goto :goto_2

    .line 140
    .end local v15    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_3
    const/high16 v18, 0x3f800000

    sub-float v18, v18, v10

    sub-float v18, v18, v8

    sub-float v18, v5, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    .line 141
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v18

    :goto_3
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMinScrollP:F

    .line 142
    if-eqz p2, :cond_6

    .line 143
    if-eqz p3, :cond_5

    .line 145
    const/high16 v18, 0x3f000000

    sub-float v18, v6, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mInitialScrollP:F

    .line 153
    :goto_4
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mInitialScrollP:F

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mInitialScrollP:F

    goto/16 :goto_0

    .line 141
    :cond_4
    const/16 v18, 0x0

    goto :goto_3

    .line 148
    :cond_5
    const/high16 v18, 0x3f000000

    sub-float v18, v6, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mInitialScrollP:F

    goto :goto_4

    .line 151
    :cond_6
    const v18, 0x3f533333

    sub-float v18, v5, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mInitialScrollP:F

    goto :goto_4
.end method

.method public computeRects(IILandroid/graphics/Rect;)V
    .locals 9
    .param p1, "windowWidth"    # I
    .param p2, "windowHeight"    # I
    .param p3, "taskStackBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    .line 71
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, v6, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 72
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v5, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 73
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v5, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 74
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 76
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackWidthPaddingPct:F

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 77
    .local v4, "widthPadding":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v5, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackTopPaddingPx:I

    .line 78
    .local v0, "heightPadding":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v4, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 81
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 82
    .local v2, "size":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    add-int v1, v5, v6

    .line 83
    .local v1, "left":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int v7, v1, v2

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v2

    invoke-virtual {v5, v1, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 87
    const/high16 v3, 0x3f000000

    .line 88
    .local v3, "visibleTaskPct":F
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarHeight:I

    iput v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mWithinAffiliationOffset:I

    .line 89
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mBetweenAffiliationOffset:I

    .line 90
    return-void
.end method

.method curveProgressToScale(F)F
    .locals 4
    .param p1, "p"    # F

    .prologue
    const/high16 v2, 0x3f800000

    const v0, 0x3f4ccccd

    .line 303
    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    .line 307
    :goto_0
    return v0

    .line 304
    :cond_0
    cmpl-float v3, p1, v2

    if-lez v3, :cond_1

    move v0, v2

    goto :goto_0

    .line 305
    :cond_1
    const v1, 0x3e4ccccc

    .line 306
    .local v1, "scaleRange":F
    mul-float v2, p1, v1

    add-float/2addr v0, v2

    .line 307
    .local v0, "scale":F
    goto :goto_0
.end method

.method curveProgressToScreenY(F)I
    .locals 8
    .param p1, "p"    # F

    .prologue
    .line 288
    const/4 v6, 0x0

    cmpg-float v6, p1, v6

    if-ltz v6, :cond_0

    const/high16 v6, 0x3f800000

    cmpl-float v6, p1, v6

    if-lez v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p1

    float-to-int v7, v7

    add-int/2addr v6, v7

    .line 298
    :goto_0
    return v6

    .line 289
    :cond_1
    const/high16 v6, 0x437a0000

    mul-float v3, p1, v6

    .line 290
    .local v3, "pIndex":F
    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 291
    .local v1, "pFloorIndex":I
    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 292
    .local v0, "pCeilIndex":I
    const/4 v5, 0x0

    .line 293
    .local v5, "xFraction":F
    const/16 v6, 0xfa

    if-ge v1, v6, :cond_2

    if-eq v0, v1, :cond_2

    .line 294
    int-to-float v6, v1

    sub-float v6, v3, v6

    sub-int v7, v0, v1

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 295
    .local v2, "pFraction":F
    sget-object v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    aget v6, v6, v0

    sget-object v7, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    aget v7, v7, v1

    sub-float/2addr v6, v7

    mul-float v5, v6, v2

    .line 297
    .end local v2    # "pFraction":F
    :cond_2
    sget-object v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    aget v6, v6, v1

    add-float v4, v6, v5

    .line 298
    .local v4, "x":F
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    float-to-int v7, v7

    add-int/2addr v6, v7

    goto :goto_0
.end method

.method getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getStackTransform(FFLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 9
    .param p1, "taskProgress"    # F
    .param p2, "stackScroll"    # F
    .param p3, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p4, "prevTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    const/high16 v8, 0x3f800000

    const/4 v7, 0x0

    .line 169
    sub-float v3, p1, p2

    .line 170
    .local v3, "pTaskRelative":F
    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 172
    .local v2, "pBounded":F
    cmpl-float v6, v3, v8

    if-lez v6, :cond_0

    .line 173
    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    .line 174
    iget-object v6, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 199
    :goto_0
    return-object p3

    .line 179
    :cond_0
    cmpg-float v6, v3, v7

    if-gez v6, :cond_1

    .line 180
    if-eqz p4, :cond_1

    iget v6, p4, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    invoke-static {v6, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-gtz v6, :cond_1

    .line 181
    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    .line 182
    iget-object v6, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 186
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->curveProgressToScale(F)F

    move-result v4

    .line 187
    .local v4, "scale":F
    sub-float v6, v8, v4

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    float-to-int v5, v6

    .line 188
    .local v5, "scaleYOffset":I
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v6, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewTranslationZMinPx:I

    .line 189
    .local v1, "minZ":I
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v6, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewTranslationZMaxPx:I

    .line 190
    .local v0, "maxZ":I
    iput v4, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 191
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->curveProgressToScreenY(F)I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    sub-int/2addr v6, v5

    iput v6, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    .line 193
    int-to-float v6, v1

    int-to-float v7, v1

    sub-int v8, v0, v1

    int-to-float v8, v8

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 194
    iget-object v6, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 195
    iget-object v6, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    const/4 v7, 0x0

    iget v8, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 196
    iget-object v6, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget v7, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-static {v6, v7}, Lcom/android/systemui/recents/misc/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 197
    const/4 v6, 0x1

    iput-boolean v6, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 198
    iput v3, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    goto :goto_0
.end method

.method public getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 2
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "stackScroll"    # F
    .param p3, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p4, "prevTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    .line 160
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    :cond_0
    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    .line 164
    .end local p3    # "transformOut":Lcom/android/systemui/recents/views/TaskViewTransform;
    :goto_0
    return-object p3

    .restart local p3    # "transformOut":Lcom/android/systemui/recents/views/TaskViewTransform;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(FFLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object p3

    goto :goto_0
.end method

.method public getUntransformedTaskViewSize()Landroid/graphics/Rect;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 206
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 207
    .local v0, "tvSize":Landroid/graphics/Rect;
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 208
    return-object v0
.end method

.method screenYToCurveProgress(I)F
    .locals 8
    .param p1, "screenY"    # I

    .prologue
    .line 312
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v6, p1, v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float v1, v6, v7

    .line 313
    .local v1, "x":F
    const/4 v6, 0x0

    cmpg-float v6, v1, v6

    if-ltz v6, :cond_0

    const/high16 v6, 0x3f800000

    cmpl-float v6, v1, v6

    if-lez v6, :cond_1

    .line 322
    .end local v1    # "x":F
    :cond_0
    :goto_0
    return v1

    .line 314
    .restart local v1    # "x":F
    :cond_1
    const/high16 v6, 0x437a0000

    mul-float v5, v1, v6

    .line 315
    .local v5, "xIndex":F
    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 316
    .local v3, "xFloorIndex":I
    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 317
    .local v2, "xCeilIndex":I
    const/4 v0, 0x0

    .line 318
    .local v0, "pFraction":F
    const/16 v6, 0xfa

    if-ge v3, v6, :cond_2

    if-eq v2, v3, :cond_2

    .line 319
    int-to-float v6, v3

    sub-float v6, v5, v6

    sub-int v7, v2, v3

    int-to-float v7, v7

    div-float v4, v6, v7

    .line 320
    .local v4, "xFraction":F
    sget-object v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    aget v6, v6, v2

    sget-object v7, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    aget v7, v7, v3

    sub-float/2addr v6, v7

    mul-float v0, v6, v4

    .line 322
    .end local v4    # "xFraction":F
    :cond_2
    sget-object v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    aget v6, v6, v3

    add-float v1, v6, v0

    goto :goto_0
.end method
