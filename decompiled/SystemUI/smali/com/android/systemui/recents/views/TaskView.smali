.class public Lcom/android/systemui/recents/views/TaskView;
.super Landroid/widget/FrameLayout;
.source "TaskView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/systemui/recents/model/Task$TaskCallbacks;
.implements Lcom/android/systemui/recents/views/TaskViewFooter$TaskFooterViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;
    }
.end annotation


# instance fields
.field mActionButtonView:Landroid/view/View;

.field mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

.field mClipViewInStack:Z

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mContent:Landroid/view/View;

.field mDim:I

.field mDimAnimator:Landroid/animation/ObjectAnimator;

.field mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field mDimInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field mFocusAnimationsEnabled:Z

.field mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

.field mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

.field mIsFocused:Z

.field mIsFullScreenView:Z

.field mLayerPaint:Landroid/graphics/Paint;

.field mMaxDimScale:F

.field mTask:Lcom/android/systemui/recents/model/Task;

.field mTaskDataLoaded:Z

.field mTaskProgress:F

.field mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

.field mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

.field mUpdateDimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 60
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3f800000

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDimInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 61
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mLayerPaint:Landroid/graphics/Paint;

    .line 80
    new-instance v0, Lcom/android/systemui/recents/views/TaskView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/TaskView$1;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mUpdateDimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 103
    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 104
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackMaxDim:I

    int-to-float v0, v0

    const/high16 v1, 0x437f0000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/recents/views/TaskView;->mMaxDimScale:F

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    .line 106
    new-instance v0, Lcom/android/systemui/recents/views/AnimateableViewBounds;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRoundedCornerRadiusPx:I

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/views/AnimateableViewBounds;-><init>(Lcom/android/systemui/recents/views/TaskView;I)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getTaskProgress()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setTaskProgress(F)V

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDim()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setDim(I)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/FakeShadowDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/systemui/recents/RecentsConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 113
    return-void
.end method


# virtual methods
.method animateDimToProgress(IILandroid/animation/Animator$AnimatorListener;)V
    .locals 5
    .param p1, "delay"    # I
    .param p2, "duration"    # I
    .param p3, "postAnimRunnable"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDimFromTaskProgress()I

    move-result v1

    .line 680
    .local v1, "toDim":I
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDim()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 681
    const-string v2, "dim"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 682
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 683
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 684
    if-eqz p3, :cond_0

    .line 685
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 687
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 689
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_1
    return-void
.end method

.method animateFooterVisibility(ZI)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "duration"    # I

    .prologue
    .line 619
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFullScreenView:Z

    if-eqz v0, :cond_1

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->lockToTaskEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->lockToThisTask:Z

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/views/TaskViewFooter;->animateFooterVisibility(ZI)V

    goto :goto_0
.end method

.method dismissTask()V
    .locals 3

    .prologue
    .line 565
    move-object v0, p0

    .line 566
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    new-instance v1, Lcom/android/systemui/recents/views/TaskView$10;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/recents/views/TaskView$10;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->startDeleteTaskAnimation(Ljava/lang/Runnable;)V

    .line 573
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRemoveAnimDuration:I

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/views/TaskView;->animateFooterVisibility(ZI)V

    .line 574
    return-void
.end method

.method enableFocusAnimations()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 765
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFocusAnimationsEnabled:Z

    .line 766
    .local v0, "wasFocusAnimationsEnabled":Z
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/TaskView;->mFocusAnimationsEnabled:Z

    .line 767
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFocused:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 769
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewFocusChanged(Z)V

    .line 771
    :cond_0
    return-void
.end method

.method public getDim()I
    .locals 1

    .prologue
    .line 673
    iget v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDim:I

    return v0
.end method

.method getDimFromTaskProgress()I
    .locals 5

    .prologue
    .line 693
    iget v1, p0, Lcom/android/systemui/recents/views/TaskView;->mMaxDimScale:F

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDimInterpolator:Landroid/view/animation/AccelerateInterpolator;

    const/high16 v3, 0x3f800000

    iget v4, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgress:F

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float v0, v1, v2

    .line 694
    .local v0, "dim":F
    const/high16 v1, 0x437f0000

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method public getMaxFooterHeight()I
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskViewFooter;->mMaxFooterHeight:I

    .line 612
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTask()Lcom/android/systemui/recents/model/Task;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    return-object v0
.end method

.method public getTaskProgress()F
    .locals 1

    .prologue
    .line 637
    iget v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgress:F

    return v0
.end method

.method getViewBounds()Lcom/android/systemui/recents/views/AnimateableViewBounds;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    return-object v0
.end method

.method public isFocusedTask()Z
    .locals 1

    .prologue
    .line 760
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFocused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFullScreenView()Z
    .locals 1

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFullScreenView:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 860
    move-object v1, p0

    .line 861
    .local v1, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eq p1, p0, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-eq p1, v4, :cond_0

    move v0, v3

    .line 862
    .local v0, "delayViewClick":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 864
    new-instance v2, Lcom/android/systemui/recents/views/TaskView$11;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/systemui/recents/views/TaskView$11;-><init>(Lcom/android/systemui/recents/views/TaskView;Landroid/view/View;Lcom/android/systemui/recents/views/TaskView;)V

    const-wide/16 v4, 0x7d

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/systemui/recents/views/TaskView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 882
    :goto_1
    return-void

    .end local v0    # "delayViewClick":Z
    :cond_0
    move v0, v2

    .line 861
    goto :goto_0

    .line 875
    .restart local v0    # "delayViewClick":Z
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-ne p1, v4, :cond_2

    .line 877
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationZ(F)V

    .line 879
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    if-eq p1, v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-ne p1, v6, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    invoke-interface {v4, v1, v5, v2}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Z)V

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 133
    const v0, 0x7f0e00bf

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mContent:Landroid/view/View;

    .line 134
    const v0, 0x7f0e00c2

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 135
    const v0, 0x7f0e00c0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    .line 136
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->enableTaskBarClip(Landroid/view/View;)V

    .line 137
    const v0, 0x7f0e00c1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/recents/views/TaskView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/TaskView$2;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 145
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/views/TaskViewFooter;->setCallbacks(Lcom/android/systemui/recents/views/TaskViewFooter$TaskFooterViewCallbacks;)V

    .line 148
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 750
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 751
    if-nez p1, :cond_0

    .line 752
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->unsetFocusedTask()V

    .line 754
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v0, p0}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewAppInfoClicked(Lcom/android/systemui/recents/views/TaskView;)V

    .line 890
    const/4 v0, 0x1

    .line 892
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, -0x80000000

    const/high16 v7, 0x40000000

    .line 152
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 153
    .local v2, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 155
    .local v0, "height":I
    iget v4, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingLeft:I

    sub-int v4, v2, v4

    iget v5, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingRight:I

    sub-int v3, v4, v5

    .line 156
    .local v3, "widthWithoutPadding":I
    iget v4, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingTop:I

    sub-int v4, v0, v4

    iget v5, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingBottom:I

    sub-int v1, v4, v5

    .line 159
    .local v1, "heightWithoutPadding":I
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mContent:Landroid/view/View;

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 163
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarHeight:I

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->measure(II)V

    .line 165
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    if-eqz v4, :cond_0

    .line 166
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewLockToAppButtonHeight:I

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/recents/views/TaskViewFooter;->measure(II)V

    .line 171
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 174
    iget-boolean v4, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFullScreenView:Z

    if-eqz v4, :cond_1

    .line 176
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->measure(II)V

    .line 185
    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/recents/views/TaskView;->setMeasuredDimension(II)V

    .line 186
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->invalidateOutline()V

    .line 187
    return-void

    .line 181
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->measure(II)V

    goto :goto_0
.end method

.method public onTaskBound(Lcom/android/systemui/recents/model/Task;)V
    .locals 3
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/16 v2, 0x8

    .line 777
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    .line 778
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/model/Task;->setCallbacks(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V

    .line 779
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_1

    .line 781
    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->lockToThisTask:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/TaskView;->animateFooterVisibility(ZI)V

    .line 786
    :goto_0
    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->lockToTaskEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 787
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 789
    :cond_0
    return-void

    .line 783
    :cond_1
    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->lockToThisTask:Z

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewLockToAppLongAnimDuration:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/TaskView;->animateFooterVisibility(ZI)V

    goto :goto_0
.end method

.method public onTaskDataLoaded()V
    .locals 2

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    if-eqz v0, :cond_1

    .line 795
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFullScreenView:Z

    if-eqz v0, :cond_2

    .line 796
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-static {}, Lcom/android/systemui/recents/AlternateRecentsComponent;->getLastScreenshot()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->bindToScreenshot(Landroid/graphics/Bitmap;)Z

    .line 800
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->rebindToTask(Lcom/android/systemui/recents/model/Task;)V

    .line 802
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 803
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 804
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/views/TaskViewFooter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 809
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->developerOptionsEnabled:Z

    if-eqz v0, :cond_1

    .line 810
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 814
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskDataLoaded:Z

    .line 815
    return-void

    .line 798
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->rebindToTask(Lcom/android/systemui/recents/model/Task;)V

    goto :goto_0
.end method

.method public onTaskDataUnloaded()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 819
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    if-eqz v0, :cond_1

    .line 821
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/Task;->setCallbacks(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V

    .line 822
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->unbindFromTask()V

    .line 823
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->unbindFromTask()V

    .line 825
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 826
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 827
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewFooter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 832
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 835
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskDataLoaded:Z

    .line 836
    return-void
.end method

.method public onTaskFooterHeightChanged(II)V
    .locals 2
    .param p1, "height"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 847
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFullScreenView:Z

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setOutlineClipBottom(I)V

    .line 854
    :goto_0
    return-void

    .line 852
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    sub-int v1, p2, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setOutlineClipBottom(I)V

    goto :goto_0
.end method

.method prepareEnterRecentsAnimation(ZZI)V
    .locals 5
    .param p1, "isTaskViewLaunchTargetTask"    # Z
    .param p2, "occludesLaunchTarget"    # Z
    .param p3, "offscreenY"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000

    const/4 v2, 0x0

    .line 255
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDim()I

    move-result v0

    .line 256
    .local v0, "initialDim":I
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithScreenshot:Z

    if-eqz v1, :cond_1

    .line 257
    if-eqz p1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    invoke-virtual {v1, v4, v4}, Lcom/android/systemui/recents/views/TaskViewFooter;->animateFooterVisibility(ZI)V

    .line 285
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setDim(I)V

    .line 287
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->prepareEnterRecentsAnimation(Z)V

    .line 288
    return-void

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    if-eqz v1, :cond_3

    .line 267
    if-eqz p1, :cond_2

    .line 269
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 271
    const/4 v0, 0x0

    goto :goto_0

    .line 272
    :cond_2
    if-eqz p2, :cond_0

    .line 274
    int-to-float v1, p3

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->setTranslationY(F)V

    goto :goto_0

    .line 277
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    if-eqz v1, :cond_0

    .line 279
    int-to-float v1, p3

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->setTranslationY(F)V

    .line 280
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskView;->setTranslationZ(F)V

    .line 281
    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskView;->setScaleX(F)V

    .line 282
    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskView;->setScaleY(F)V

    goto :goto_0
.end method

.method resetViewProperties()V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setDim(I)V

    .line 228
    invoke-static {p0}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset(Landroid/view/View;)V

    .line 229
    return-void
.end method

.method setCallbacks(Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    .line 118
    return-void
.end method

.method setClipViewInStack(Z)V
    .locals 1
    .param p1, "clip"    # Z

    .prologue
    .line 601
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    if-eq p1, v0, :cond_0

    .line 602
    iput-boolean p1, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    .line 603
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v0, p0}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewClipStateChanged(Lcom/android/systemui/recents/views/TaskView;)V

    .line 605
    :cond_0
    return-void
.end method

.method public setDim(I)V
    .locals 5
    .param p1, "dim"    # I

    .prologue
    .line 642
    iput p1, p0, Lcom/android/systemui/recents/views/TaskView;->mDim:I

    .line 643
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_0

    .line 644
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 645
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 647
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->useHardwareLayers:Z

    if-eqz v2, :cond_3

    .line 649
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredWidth()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredHeight()I

    move-result v2

    if-lez v2, :cond_2

    .line 650
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_1

    .line 651
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 652
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 655
    :cond_1
    iget v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDim:I

    rsub-int v1, v2, 0xff

    .line 656
    .local v1, "inverse":I
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

    const/16 v3, 0xff

    invoke-static {v3, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    .line 657
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mLayerPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 658
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mContent:Landroid/view/View;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 669
    .end local v1    # "inverse":I
    :cond_2
    :goto_0
    return-void

    .line 661
    :cond_3
    iget v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDim:I

    int-to-float v2, v2

    const/high16 v3, 0x437f0000

    div-float v0, v2, v3

    .line 662
    .local v0, "dimAlpha":F
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    if-eqz v2, :cond_4

    .line 663
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setDimAlpha(F)V

    .line 665
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    if-eqz v2, :cond_2

    .line 666
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskViewHeader;->setDimAlpha(I)V

    goto :goto_0
.end method

.method public setFocusedTask()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 710
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFocused:Z

    .line 711
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFocusAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewFocusChanged(Z)V

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->onFocusChanged(Z)V

    .line 718
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewFocusChanged(Lcom/android/systemui/recents/views/TaskView;Z)V

    .line 722
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->setFocusableInTouchMode(Z)V

    .line 723
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->requestFocus()Z

    .line 724
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setFocusableInTouchMode(Z)V

    .line 725
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->invalidate()V

    .line 726
    return-void
.end method

.method setIsFullScreen(Z)V
    .locals 2
    .param p1, "isFullscreen"    # Z

    .prologue
    .line 578
    iput-boolean p1, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFullScreenView:Z

    .line 579
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskViewHeader;->setIsFullscreen(Z)V

    .line 580
    if-eqz p1, :cond_0

    .line 582
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setOutlineClipBottom(I)V

    .line 584
    :cond_0
    return-void
.end method

.method setNoUserInteractionState()V
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->setNoUserInteractionState()V

    .line 560
    return-void
.end method

.method public setTaskProgress(F)V
    .locals 1
    .param p1, "p"    # F

    .prologue
    .line 630
    iput p1, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgress:F

    .line 631
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setAlpha(F)V

    .line 632
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->updateDimFromTaskProgress()V

    .line 633
    return-void
.end method

.method setTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 840
    if-eqz p1, :cond_0

    move-object v0, p0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 841
    return-void

    .line 840
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shouldClipViewInStack()Z
    .locals 1

    .prologue
    .line 596
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFullScreenView:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method startDeleteTaskAnimation(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 527
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 529
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRemoveAnimTranslationXPx:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRemoveAnimDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/views/TaskView$9;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/views/TaskView$9;-><init>(Lcom/android/systemui/recents/views/TaskView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 550
    return-void
.end method

.method startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V
    .locals 20
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    .prologue
    .line 292
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentTaskTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 293
    .local v14, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    const/4 v11, 0x0

    .line 295
    .local v11, "startDelay":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithScreenshot:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 297
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentTaskRect:Landroid/graphics/Rect;

    .line 298
    .local v12, "taskRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeDuration:I

    move/from16 v16, v0

    mul-int/lit8 v5, v16, 0xa

    .line 299
    .local v5, "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v15, v0, Landroid/graphics/Rect;->top:I

    .line 300
    .local v15, "windowInsetTop":I
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    iget v0, v14, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    move/from16 v17, v0

    mul-float v13, v16, v17

    .line 301
    .local v13, "taskScale":F
    const/high16 v16, 0x3f800000

    sub-float v16, v16, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    const/high16 v17, 0x40000000

    div-float v9, v16, v17

    .line 302
    .local v9, "scaledYOffset":F
    int-to-float v0, v15

    move/from16 v16, v0

    mul-float v16, v16, v13

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v8, v0

    .line 303
    .local v8, "scaledWindowInsetTop":F
    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    iget v0, v14, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v17, v8, v9

    sub-float v7, v16, v17

    .line 305
    .local v7, "scaledTranslationY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v11, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeStaggerDelay:I

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/systemui/recents/views/TaskView$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/TaskView$3;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v5, v1}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->animateClipTop(IILandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 317
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v16, v16, v13

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 318
    .local v10, "size":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/RecentsConfiguration;->hasHorizontalLayout()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredWidth()I

    move-result v17

    sub-int v17, v17, v10

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->animateClipRight(II)V

    .line 324
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    int-to-long v0, v5

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    new-instance v17, Lcom/android/systemui/recents/views/TaskView$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskView$4;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 360
    .end local v5    # "duration":I
    .end local v7    # "scaledTranslationY":F
    .end local v8    # "scaledWindowInsetTop":F
    .end local v9    # "scaledYOffset":F
    .end local v10    # "size":I
    .end local v12    # "taskRect":Landroid/graphics/Rect;
    .end local v13    # "taskScale":F
    .end local v15    # "windowInsetTop":I
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 457
    :goto_2
    new-instance v16, Lcom/android/systemui/recents/views/TaskView$8;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/TaskView$8;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    div-int/lit8 v17, v11, 0x2

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 463
    return-void

    .line 321
    .restart local v5    # "duration":I
    .restart local v7    # "scaledTranslationY":F
    .restart local v8    # "scaledWindowInsetTop":F
    .restart local v9    # "scaledYOffset":F
    .restart local v10    # "size":I
    .restart local v12    # "taskRect":Landroid/graphics/Rect;
    .restart local v13    # "taskScale":F
    .restart local v15    # "windowInsetTop":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredHeight()I

    move-result v17

    add-int v18, v15, v10

    sub-int v17, v17, v18

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->animateClipBottom(II)V

    goto :goto_0

    .line 358
    .end local v5    # "duration":I
    .end local v7    # "scaledTranslationY":F
    .end local v8    # "scaledWindowInsetTop":F
    .end local v9    # "scaledYOffset":F
    .end local v10    # "size":I
    .end local v12    # "taskRect":Landroid/graphics/Rect;
    .end local v13    # "taskScale":F
    .end local v15    # "windowInsetTop":I
    :cond_1
    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskView;->animateFooterVisibility(ZI)V

    goto :goto_1

    .line 362
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarEnterAnimDelay:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarEnterAnimDuration:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskView;->animateDimToProgress(IILandroid/animation/Animator$AnimatorListener;)V

    .line 382
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 385
    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarEnterAnimDuration:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskView;->animateFooterVisibility(ZI)V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    const/high16 v17, 0x3f800000

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarEnterAnimDelay:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarEnterAnimDuration:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 416
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v11, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarEnterAnimDelay:I

    goto/16 :goto_2

    .line 396
    :cond_4
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentTaskOccludesLaunchTarget:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 397
    iget v0, v14, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewAffiliateGroupEnterOffsetPx:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setTranslationY(F)V

    .line 398
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setAlpha(F)V

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    const/high16 v17, 0x3f800000

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    iget v0, v14, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarEnterAnimDelay:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeDuration:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    new-instance v17, Lcom/android/systemui/recents/views/TaskView$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskView$6;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 413
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    goto/16 :goto_3

    .line 418
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    move/from16 v16, v0

    if-eqz v16, :cond_7

    .line 420
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentStackViewCount:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentStackViewIndex:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    add-int/lit8 v6, v16, -0x1

    .line 421
    .local v6, "frontIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeDelay:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeStaggerDelay:I

    move/from16 v17, v0

    mul-int v17, v17, v6

    add-int v4, v16, v17

    .line 424
    .local v4, "delay":I
    iget v0, v14, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setScaleX(F)V

    .line 425
    iget v0, v14, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setScaleY(F)V

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    move/from16 v16, v0

    if-nez v16, :cond_6

    .line 427
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    iget v0, v14, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    .line 429
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    iget v0, v14, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    int-to-long v0, v4

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeDuration:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeStaggerDelay:I

    move/from16 v18, v0

    mul-int v18, v18, v6

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    new-instance v17, Lcom/android/systemui/recents/views/TaskView$7;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskView$7;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 444
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 447
    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeDuration:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskView;->animateFooterVisibility(ZI)V

    .line 448
    move v11, v4

    .line 450
    goto/16 :goto_2

    .line 452
    .end local v4    # "delay":I
    .end local v6    # "frontIndex":I
    :cond_7
    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskView;->animateFooterVisibility(ZI)V

    goto/16 :goto_2
.end method

.method startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V
    .locals 4
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->offscreenTranslationY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewExitToHomeDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementAsRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 475
    iget-object v0, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 476
    return-void
.end method

.method startLaunchTaskAnimation(Ljava/lang/Runnable;ZZZ)V
    .locals 8
    .param p1, "postAnimRunnable"    # Ljava/lang/Runnable;
    .param p2, "isLaunchingTask"    # Z
    .param p3, "occludesLaunchTarget"    # Z
    .param p4, "lockToTask"    # Z

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 481
    if-eqz p2, :cond_3

    .line 483
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->startLaunchTaskAnimation(Ljava/lang/Runnable;)V

    .line 486
    iget v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDim:I

    if-lez v2, :cond_0

    .line 487
    const-string v2, "dim"

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v5, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 488
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarExitAnimDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 489
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 490
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 494
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    if-nez p4, :cond_1

    .line 495
    const v1, 0x3f666666

    .line 496
    .local v1, "toScale":F
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 500
    .end local v1    # "toScale":F
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarExitAnimDuration:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 522
    :cond_2
    :goto_0
    return-void

    .line 509
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->startLaunchTaskDismissAnimation()V

    .line 512
    if-eqz p3, :cond_2

    .line 513
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getTranslationY()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewAffiliateGroupEnterOffsetPx:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarExitAnimDuration:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method startNoUserInteractionAnimation()V
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->startNoUserInteractionAnimation()V

    .line 555
    return-void
.end method

.method unsetFocusedTask()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 732
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFocused:Z

    .line 733
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFocusAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewFocusChanged(Z)V

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->onFocusChanged(Z)V

    .line 741
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewFocusChanged(Lcom/android/systemui/recents/views/TaskView;Z)V

    .line 742
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->invalidate()V

    .line 743
    return-void
.end method

.method updateDimFromTaskProgress()V
    .locals 1

    .prologue
    .line 699
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDimFromTaskProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setDim(I)V

    .line 700
    return-void
.end method

.method updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;I)V
    .locals 1
    .param p1, "toTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p2, "duration"    # I

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;ILandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 192
    return-void
.end method

.method updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;ILandroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 8
    .param p1, "toTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p2, "duration"    # I
    .param p3, "updateCallback"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 198
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIsFullScreenView:Z

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getTranslationZ()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasTranslationZChangedFrom(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setTranslationZ(F)V

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    if-nez v0, :cond_3

    move v5, v7

    :goto_1
    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskViewTransform;->applyToTaskView(Landroid/view/View;ILandroid/view/animation/Interpolator;ZZLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 215
    :cond_2
    if-gtz p2, :cond_4

    .line 216
    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setTaskProgress(F)V

    goto :goto_0

    :cond_3
    move v5, v4

    .line 207
    goto :goto_1

    .line 218
    :cond_4
    const-string v0, "taskProgress"

    new-array v1, v7, [F

    iget v2, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    aput v2, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    .line 219
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 220
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mUpdateDimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 221
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskProgressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method
