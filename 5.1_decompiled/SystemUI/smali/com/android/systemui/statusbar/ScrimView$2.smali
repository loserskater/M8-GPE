.class Lcom/android/systemui/statusbar/ScrimView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScrimView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/ScrimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ScrimView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ScrimView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView$2;->this$0:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView$2;->this$0:Lcom/android/systemui/statusbar/ScrimView;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/ScrimView;->access$102(Lcom/android/systemui/statusbar/ScrimView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
