.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6$1;
.super Ljava/lang/Object;
.source "KeyguardBottomAreaView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6$1;->this$1:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6$1;->this$1:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mVisualizer:Lcom/pheelicks/visualizer/VisualizerView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1000(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/pheelicks/visualizer/VisualizerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6$1;->this$1:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLinked:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6$1;->this$1:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mVisualizer:Lcom/pheelicks/visualizer/VisualizerView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1000(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/pheelicks/visualizer/VisualizerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pheelicks/visualizer/VisualizerView;->link(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6$1;->this$1:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/4 v1, 0x1

    # setter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLinked:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1102(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Z)Z

    :cond_0
    return-void
.end method
