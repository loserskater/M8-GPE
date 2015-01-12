.class public Lcom/android/systemui/recents/RecentsConfiguration;
.super Ljava/lang/Object;
.source "RecentsConfiguration.java"


# static fields
.field static sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

.field static sPrevConfigurationHashCode:I


# instance fields
.field public altTabKeyDelay:I

.field public animationPxMovementPerSecond:F

.field public debugModeEnabled:Z

.field public developerOptionsEnabled:Z

.field public displayRect:Landroid/graphics/Rect;

.field public fakeShadows:Z

.field public fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field public fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field public filteringCurrentViewsAnimDuration:I

.field public filteringNewViewsAnimDuration:I

.field hasTransposedNavBar:Z

.field hasTransposedSearchBar:Z

.field isLandscape:Z

.field public launchedFromAppWithScreenshot:Z

.field public launchedFromAppWithThumbnail:Z

.field public launchedFromHome:Z

.field public launchedToTaskId:I

.field public launchedWithAltTab:Z

.field public launchedWithNoRecentTasks:Z

.field public linearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field public lockToAppEnabled:Z

.field public maxNumTasksToLoad:I

.field public navBarScrimEnterDuration:I

.field public quintOutInterpolator:Landroid/view/animation/Interpolator;

.field searchBarAppWidgetId:I

.field public searchBarSpaceHeightPx:I

.field public systemInsets:Landroid/graphics/Rect;

.field public taskBarDismissDozeDelaySeconds:I

.field public taskBarEnterAnimDelay:I

.field public taskBarEnterAnimDuration:I

.field public taskBarExitAnimDuration:I

.field public taskBarHeight:I

.field public taskBarViewAffiliationColorMinAlpha:F

.field public taskBarViewDarkTextColor:I

.field public taskBarViewDefaultBackgroundColor:I

.field public taskBarViewHighlightColor:I

.field public taskBarViewLightTextColor:I

.field public taskStackMaxDim:I

.field public taskStackOverscrollPct:F

.field public taskStackScrollDuration:I

.field public taskStackTopPaddingPx:I

.field public taskStackWidthPaddingPct:F

.field public taskViewAffiliateGroupEnterOffsetPx:I

.field public taskViewEnterFromHomeDelay:I

.field public taskViewEnterFromHomeDuration:I

.field public taskViewEnterFromHomeStaggerDelay:I

.field public taskViewExitToHomeDuration:I

.field public taskViewHighlightPx:I

.field public taskViewLockToAppButtonHeight:I

.field public taskViewLockToAppLongAnimDuration:I

.field public taskViewLockToAppShortAnimDuration:I

.field public taskViewRemoveAnimDuration:I

.field public taskViewRemoveAnimTranslationXPx:I

.field public taskViewRoundedCornerRadiusPx:I

.field public taskViewThumbnailAlpha:F

.field public taskViewTranslationZMaxPx:I

.field public taskViewTranslationZMinPx:I

.field public useHardwareLayers:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    .line 138
    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 140
    const v0, 0x10c000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 142
    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->linearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 144
    const v0, 0x10c0005

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    .line 146
    return-void
.end method

.method public static getInstance()Lcom/android/systemui/recents/RecentsConfiguration;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    return-object v0
.end method

.method public static reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)Lcom/android/systemui/recents/RecentsConfiguration;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .prologue
    .line 150
    sget-object v1, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    if-nez v1, :cond_0

    .line 151
    new-instance v1, Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsConfiguration;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 153
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->hashCode()I

    move-result v0

    .line 154
    .local v0, "configHashCode":I
    sget v1, Lcom/android/systemui/recents/RecentsConfiguration;->sPrevConfigurationHashCode:I

    if-eq v1, v0, :cond_1

    .line 155
    sget-object v1, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v1, p0}, Lcom/android/systemui/recents/RecentsConfiguration;->update(Landroid/content/Context;)V

    .line 156
    sput v0, Lcom/android/systemui/recents/RecentsConfiguration;->sPrevConfigurationHashCode:I

    .line 158
    :cond_1
    sget-object v1, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v1, p0, p1}, Lcom/android/systemui/recents/RecentsConfiguration;->updateOnReinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    .line 159
    sget-object v1, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    return-object v1
.end method


# virtual methods
.method public getSearchBarBounds(IIILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "windowWidth"    # I
    .param p2, "windowHeight"    # I
    .param p3, "topInset"    # I
    .param p4, "searchBarSpaceBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 370
    iget v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarSpaceHeightPx:I

    .line 371
    .local v0, "searchBarSize":I
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsConfiguration;->hasSearchBarAppWidget()Z

    move-result v1

    if-nez v1, :cond_0

    .line 372
    const/4 v0, 0x0

    .line 375
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedSearchBar:Z

    if-eqz v1, :cond_1

    .line 377
    invoke-virtual {p4, v2, p3, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 382
    :goto_0
    return-void

    .line 380
    :cond_1
    add-int v1, p3, v0

    invoke-virtual {p4, v2, p3, p1, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public getTaskStackBounds(IIIILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "windowWidth"    # I
    .param p2, "windowHeight"    # I
    .param p3, "topInset"    # I
    .param p4, "rightInset"    # I
    .param p5, "taskStackBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 352
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 353
    .local v0, "searchBarBounds":Landroid/graphics/Rect;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getSearchBarBounds(IIILandroid/graphics/Rect;)V

    .line 354
    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedSearchBar:Z

    if-eqz v1, :cond_0

    .line 356
    sub-int v1, p1, p4

    invoke-virtual {p5, v2, p3, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 361
    :goto_0
    return-void

    .line 359
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p5, v2, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public hasHorizontalLayout()Z
    .locals 1

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedSearchBar:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNavBarScrim()Z
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSearchBarAppWidget()Z
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatusBarScrim()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldAnimateNavBarScrim()Z
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method public shouldAnimateStatusBarScrim()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    return v0
.end method

.method update(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 170
    .local v3, "settings":Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 171
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 174
    .local v1, "dm":Landroid/util/DisplayMetrics;
    sget-object v7, Lcom/android/systemui/recents/Constants$Values$App;->Key_DebugModeEnabled:Ljava/lang/String;

    invoke-interface {v3, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    .line 175
    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v7, :cond_0

    .line 176
    sput-boolean v8, Lcom/android/systemui/recents/misc/Console;->Enabled:Z

    .line 180
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v7, v10, :cond_1

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    .line 181
    const v7, 0x7f08000e

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedSearchBar:Z

    .line 182
    const v7, 0x7f08000f

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    .line 185
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    iget v10, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v7, v9, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 188
    const v7, 0x7f0c0064

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->animationPxMovementPerSecond:F

    .line 192
    const v7, 0x7f090015

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->filteringCurrentViewsAnimDuration:I

    .line 194
    const v7, 0x7f090016

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->filteringNewViewsAnimDuration:I

    .line 198
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->maxNumTasksToLoad:I

    .line 201
    const v7, 0x7f0c0060

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarSpaceHeightPx:I

    .line 202
    sget-object v7, Lcom/android/systemui/recents/Constants$Values$App;->Key_SearchAppWidgetId:Ljava/lang/String;

    const/4 v9, -0x1

    invoke-interface {v3, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    .line 205
    const v7, 0x7f090022

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackScrollDuration:I

    .line 207
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 208
    .local v6, "widthPaddingPctValue":Landroid/util/TypedValue;
    const v7, 0x7f0c0061

    invoke-virtual {v2, v7, v6, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 209
    invoke-virtual {v6}, Landroid/util/TypedValue;->getFloat()F

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackWidthPaddingPct:F

    .line 210
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 211
    .local v4, "stackOverscrollPctValue":Landroid/util/TypedValue;
    const v7, 0x7f0c0062

    invoke-virtual {v2, v7, v4, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 212
    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackOverscrollPct:F

    .line 213
    const v7, 0x7f090023

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackMaxDim:I

    .line 214
    const v7, 0x7f0c0063

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackTopPaddingPx:I

    .line 217
    const v7, 0x7f09001b

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeDelay:I

    .line 219
    const v7, 0x7f09001c

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeDuration:I

    .line 221
    const v7, 0x7f09001d

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeStaggerDelay:I

    .line 223
    const v7, 0x7f090019

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewExitToHomeDuration:I

    .line 225
    const v7, 0x7f090021

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRemoveAnimDuration:I

    .line 227
    const v7, 0x7f0c005a

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRemoveAnimTranslationXPx:I

    .line 229
    const v7, 0x7f0c0057

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRoundedCornerRadiusPx:I

    .line 231
    const v7, 0x7f0c005b

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewHighlightPx:I

    .line 232
    const v7, 0x7f0c0058

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewTranslationZMinPx:I

    .line 233
    const v7, 0x7f0c0059

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewTranslationZMaxPx:I

    .line 234
    const v7, 0x7f0c005d

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewAffiliateGroupEnterOffsetPx:I

    .line 236
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 237
    .local v5, "thumbnailAlphaValue":Landroid/util/TypedValue;
    const v7, 0x7f0c005e

    invoke-virtual {v2, v7, v5, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 238
    invoke-virtual {v5}, Landroid/util/TypedValue;->getFloat()F

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewThumbnailAlpha:F

    .line 241
    const v7, 0x7f07001b

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewDefaultBackgroundColor:I

    .line 243
    const v7, 0x7f07001c

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewLightTextColor:I

    .line 245
    const v7, 0x7f07001d

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewDarkTextColor:I

    .line 247
    const v7, 0x7f070020

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewHighlightColor:I

    .line 249
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 250
    .local v0, "affMinAlphaPctValue":Landroid/util/TypedValue;
    const v7, 0x7f0c0065

    invoke-virtual {v2, v7, v0, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 251
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewAffiliationColorMinAlpha:F

    .line 254
    const v7, 0x7f0c005f

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarHeight:I

    .line 255
    const v7, 0x7f090017

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarEnterAnimDuration:I

    .line 257
    const v7, 0x7f090018

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarEnterAnimDelay:I

    .line 259
    const v7, 0x7f09001a

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarExitAnimDuration:I

    .line 261
    const v7, 0x7f090014

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarDismissDozeDelaySeconds:I

    .line 265
    const v7, 0x7f0c005c

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewLockToAppButtonHeight:I

    .line 267
    const v7, 0x7f09001e

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewLockToAppShortAnimDuration:I

    .line 269
    const v7, 0x7f09001f

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewLockToAppLongAnimDuration:I

    .line 273
    const v7, 0x7f090020

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->navBarScrimEnterDuration:I

    .line 277
    const v7, 0x7f080002

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->useHardwareLayers:Z

    .line 278
    const v7, 0x7f090024

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->altTabKeyDelay:I

    .line 279
    const v7, 0x7f080003

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    .line 280
    return-void

    .end local v0    # "affMinAlphaPctValue":Landroid/util/TypedValue;
    .end local v4    # "stackOverscrollPctValue":Landroid/util/TypedValue;
    .end local v5    # "thumbnailAlphaValue":Landroid/util/TypedValue;
    .end local v6    # "widthPaddingPctValue":Landroid/util/TypedValue;
    :cond_1
    move v7, v9

    .line 180
    goto/16 :goto_0
.end method

.method public updateOnConfigurationChange()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 307
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithAltTab:Z

    .line 308
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    .line 309
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    .line 310
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithScreenshot:Z

    .line 311
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    .line 312
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    .line 313
    return-void
.end method

.method updateOnReinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 298
    const-string v0, "development_settings_enabled"

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getGlobalSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->developerOptionsEnabled:Z

    .line 300
    const-string v0, "lock_to_app_enabled"

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->lockToAppEnabled:Z

    .line 302
    return-void

    :cond_0
    move v0, v2

    .line 298
    goto :goto_0

    :cond_1
    move v1, v2

    .line 300
    goto :goto_1
.end method

.method public updateSearchBarAppWidgetId(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I

    .prologue
    .line 289
    iput p2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    .line 290
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 291
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/recents/Constants$Values$App;->Key_SearchAppWidgetId:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 293
    return-void
.end method

.method public updateSystemInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 285
    return-void
.end method
