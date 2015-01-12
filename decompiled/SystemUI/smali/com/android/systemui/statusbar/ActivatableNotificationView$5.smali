.class Lcom/android/systemui/statusbar/ActivatableNotificationView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActivatableNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ActivatableNotificationView;->startAppearAnimation(ZFJJLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mWasCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

.field final synthetic val$onFinishedRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$5;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$5;->val$onFinishedRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$5;->mWasCancelled:Z

    .line 576
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$5;->val$onFinishedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$5;->val$onFinishedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 561
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$5;->mWasCancelled:Z

    if-nez v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$5;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    const/high16 v1, -0x40800000

    # setter for: Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->access$402(Lcom/android/systemui/statusbar/ActivatableNotificationView;F)F

    .line 563
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$5;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setOutlineRect(Landroid/graphics/RectF;)V

    .line 564
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$5;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    const/4 v1, 0x0

    # invokes: Lcom/android/systemui/statusbar/ActivatableNotificationView;->enableAppearDrawing(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->access$700(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)V

    .line 566
    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 570
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$5;->mWasCancelled:Z

    .line 571
    return-void
.end method
