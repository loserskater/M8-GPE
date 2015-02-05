.class Lcom/android/systemui/SearchPanelView$5;
.super Landroid/content/BroadcastReceiver;
.source "SearchPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/SearchPanelView;
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

    iput-object p1, p0, Lcom/android/systemui/SearchPanelView$5;->this$0:Lcom/android/systemui/SearchPanelView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$5;->this$0:Lcom/android/systemui/SearchPanelView;

    # setter for: Lcom/android/systemui/SearchPanelView;->mInEditMode:Z
    invoke-static {v0, v1}, Lcom/android/systemui/SearchPanelView;->access$502(Lcom/android/systemui/SearchPanelView;Z)Z

    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$5;->this$0:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/SearchPanelView;->show(ZZ)V

    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$5;->this$0:Lcom/android/systemui/SearchPanelView;

    # invokes: Lcom/android/systemui/SearchPanelView;->startEditAnimation(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/SearchPanelView;->access$600(Lcom/android/systemui/SearchPanelView;Z)V

    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$5;->this$0:Lcom/android/systemui/SearchPanelView;

    # invokes: Lcom/android/systemui/SearchPanelView;->updateTargetVisibility()V
    invoke-static {v0}, Lcom/android/systemui/SearchPanelView;->access$700(Lcom/android/systemui/SearchPanelView;)V

    return-void
.end method
