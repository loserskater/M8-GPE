.class Lcom/android/systemui/SearchPanelView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SearchPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SearchPanelView;->startEditAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SearchPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/SearchPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/SearchPanelView$6;->this$0:Lcom/android/systemui/SearchPanelView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$6;->this$0:Lcom/android/systemui/SearchPanelView;

    # getter for: Lcom/android/systemui/SearchPanelView;->mEditButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/SearchPanelView;->access$800(Lcom/android/systemui/SearchPanelView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
