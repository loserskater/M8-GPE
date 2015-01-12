.class Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;
.super Ljava/lang/Object;
.source "HeadsUpNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdgeSwipeHelper"
.end annotation


# instance fields
.field private mConsuming:Z

.field private mFirstX:F

.field private mFirstY:F

.field private final mTouchSlop:F

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;F)V
    .locals 0
    .param p2, "touchSlop"    # F

    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iput p2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mTouchSlop:F

    .line 385
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 389
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 421
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mConsuming:Z

    return v3

    .line 392
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mFirstX:F

    .line 393
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mFirstY:F

    .line 394
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mConsuming:Z

    goto :goto_0

    .line 399
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mFirstY:F

    sub-float v0, v3, v4

    .line 400
    .local v0, "dY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mFirstX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 401
    .local v1, "daX":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 402
    .local v2, "daY":F
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mConsuming:Z

    if-nez v3, :cond_0

    const/high16 v3, 0x40800000

    mul-float/2addr v3, v1

    cmpg-float v3, v3, v2

    if-gez v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mTouchSlop:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 403
    cmpl-float v3, v0, v5

    if-lez v3, :cond_1

    .line 405
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    # getter for: Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->access$000(Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandNotificationsPanel()V

    .line 407
    :cond_1
    cmpg-float v3, v0, v5

    if-gez v3, :cond_2

    .line 409
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    # getter for: Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->access$000(Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onHeadsUpDismissed()V

    .line 411
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mConsuming:Z

    goto :goto_0

    .line 418
    .end local v0    # "dY":F
    .end local v1    # "daX":F
    .end local v2    # "daY":F
    :pswitch_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mConsuming:Z

    goto :goto_0

    .line 389
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$EdgeSwipeHelper;->mConsuming:Z

    return v0
.end method
