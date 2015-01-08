.class public Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;
.super Landroid/widget/FrameLayout;
.source "HeadsUpNotificationView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;
.implements Lcom/android/systemui/ExpandHelper$Callback;
.implements Lcom/android/systemui/SwipeHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;
    }
.end annotation


# static fields
.field private static final CONTENT_HOLDER_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mContentHolder:Landroid/view/ViewGroup;

.field private mEdgeSwipeHelper:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;

.field private mExpandHelper:Lcom/android/systemui/ExpandHelper;

.field private mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

.field private final mMaxAlpha:F

.field private mStartTouchTime:J

.field private mSwipeHelper:Lcom/android/systemui/SwipeHelper;

.field mTmpRect:Landroid/graphics/Rect;

.field mTmpTwoArray:[I

.field private final mTouchSensitivityDelay:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->CONTENT_HOLDER_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mTmpRect:Landroid/graphics/Rect;

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mTmpTwoArray:[I

    .line 52
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mMaxAlpha:F

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mTouchSensitivityDelay:I

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 310
    const/4 v0, 0x1

    return v0
.end method

.method public canChildBeExpanded(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->scheduleHeadsUpClose()V

    .line 147
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onNotificationClear(Landroid/service/notification/StatusBarNotification;)V

    .line 157
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->scheduleHeadsUpClose()V

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->release()V

    goto :goto_1
.end method

.method public expansionStateChanged(Z)V
    .locals 0
    .param p1, "isExpanding"    # Z

    .prologue
    .line 304
    return-void
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    goto :goto_0
.end method

.method public getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 274
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    return-object v0
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    return-object v0
.end method

.method public getFalsingThresholdFactor()F
    .locals 1

    .prologue
    .line 320
    const/high16 v0, 0x3f800000

    return v0
.end method

.method public getHolder()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isAntiFalsingNeeded()Z
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public isClearable()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

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

.method public isShowing(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 7

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 201
    .local v3, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    int-to-float v2, v4

    .line 202
    .local v2, "touchSlop":F
    new-instance v4, Lcom/android/systemui/SwipeHelper;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v5, p0, v6}, Lcom/android/systemui/SwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    .line 203
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    const/high16 v5, 0x3f800000

    invoke-virtual {v4, v5}, Lcom/android/systemui/SwipeHelper;->setMaxSwipeProgress(F)V

    .line 204
    new-instance v4, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;

    invoke-direct {v4, p0, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;-><init>(Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;F)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mEdgeSwipeHelper:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;

    .line 206
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c001a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 207
    .local v1, "minHeight":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c001b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 208
    .local v0, "maxHeight":I
    new-instance v4, Lcom/android/systemui/ExpandHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, p0, v1, v0}, Lcom/android/systemui/ExpandHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;II)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    .line 210
    const v4, 0x7f0e0038

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    .line 211
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->CONTENT_HOLDER_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 213
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v4, :cond_0

    .line 215
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->showNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 219
    return-void
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 331
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 325
    const-string v0, "HeadsUpNotificationView"

    const-string v1, "User swiped heads up to dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onHeadsUpDismissed()V

    .line 327
    return-void
.end method

.method public onChildSnappedBack(Landroid/view/View;)V
    .locals 0
    .param p1, "animView"    # Landroid/view/View;

    .prologue
    .line 340
    return-void
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 6
    .param p1, "info"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 360
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mTmpTwoArray:[I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 362
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 363
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mTmpTwoArray:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mTmpTwoArray:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mTmpTwoArray:[I

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mTmpTwoArray:[I

    aget v4, v4, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Region;->set(IIII)Z

    .line 366
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 263
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 264
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 265
    .local v0, "densityScale":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/SwipeHelper;->setDensityScale(F)V

    .line 266
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 267
    .local v1, "pagingTouchSlop":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/SwipeHelper;->setPagingTouchSlop(F)V

    .line 268
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 336
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 237
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 247
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mStartTouchTime:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mEdgeSwipeHelper:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/ExpandHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mStartTouchTime:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v0

    .line 254
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetHeadsUpDecayTimer()V

    .line 255
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mEdgeSwipeHelper:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/ExpandHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 133
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 135
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->sendAccessibilityEvent(I)V

    .line 137
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->displayNotificationFromHeadsUp(Landroid/service/notification/StatusBarNotification;)V

    .line 166
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 167
    return-void
.end method

.method public releaseAndClose()V
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->release()V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->scheduleHeadsUpClose()V

    .line 172
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 85
    return-void
.end method

.method public setUserExpandedChild(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "userExpanded"    # Z

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-ne v0, p1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 292
    :cond_0
    return-void
.end method

.method public setUserLockedChild(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "userLocked"    # Z

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-ne v0, p1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 299
    :cond_0
    return-void
.end method

.method public showNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 9
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/high16 v8, 0x3f800000

    const/4 v2, 0x0

    .line 92
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->release()V

    .line 97
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 98
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v1, :cond_3

    .line 103
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemExpanded(Z)V

    .line 104
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSensitive(Z)V

    .line 105
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move v3, v2

    move-wide v6, v4

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHideSensitive(ZZJJ)V

    .line 107
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    if-nez v1, :cond_2

    .line 128
    :goto_0
    return v2

    .line 111
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setX(F)V

    .line 112
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 113
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 114
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 115
    const/16 v1, 0x800

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->sendAccessibilityEvent(I)V

    .line 117
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v8}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;F)V

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mTouchSensitivityDelay:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mStartTouchTime:J

    .line 120
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mHeadsUp:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setInterruption()V

    .line 123
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->scheduleHeadsUpOpen()V

    .line 126
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetHeadsUpDecayTimer()V

    :cond_3
    move v2, v0

    .line 128
    goto :goto_0
.end method

.method public updateResources()V
    .locals 3

    .prologue
    .line 75
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 77
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 79
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContentHolder:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public updateSwipeProgress(Landroid/view/View;ZF)Z
    .locals 2
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "dismissable"    # Z
    .param p3, "swipeProgress"    # F

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, 0x437f0000

    mul-float/2addr v1, p3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 345
    const/4 v0, 0x0

    return v0
.end method
