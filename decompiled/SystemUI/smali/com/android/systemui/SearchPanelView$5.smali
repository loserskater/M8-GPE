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
    .locals 4

    const/4 v3, 0x1

    const-string v1, "edit_state_extra"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/SearchPanelView$5;->this$0:Lcom/android/systemui/SearchPanelView;

    # getter for: Lcom/android/systemui/SearchPanelView;->mInEditMode:Z
    invoke-static {v1}, Lcom/android/systemui/SearchPanelView;->access$500(Lcom/android/systemui/SearchPanelView;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView$5;->this$0:Lcom/android/systemui/SearchPanelView;

    # setter for: Lcom/android/systemui/SearchPanelView;->mInEditMode:Z
    invoke-static {v1, v0}, Lcom/android/systemui/SearchPanelView;->access$502(Lcom/android/systemui/SearchPanelView;Z)Z

    iget-object v1, p0, Lcom/android/systemui/SearchPanelView$5;->this$0:Lcom/android/systemui/SearchPanelView;

    # getter for: Lcom/android/systemui/SearchPanelView;->mInEditMode:Z
    invoke-static {v1}, Lcom/android/systemui/SearchPanelView;->access$500(Lcom/android/systemui/SearchPanelView;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/SearchPanelView$5;->this$0:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v1, v3, v3}, Lcom/android/systemui/SearchPanelView;->show(ZZ)V

    iget-object v1, p0, Lcom/android/systemui/SearchPanelView$5;->this$0:Lcom/android/systemui/SearchPanelView;

    # invokes: Lcom/android/systemui/SearchPanelView;->startEditAnimation(Z)V
    invoke-static {v1, v3}, Lcom/android/systemui/SearchPanelView;->access$600(Lcom/android/systemui/SearchPanelView;Z)V

    iget-object v1, p0, Lcom/android/systemui/SearchPanelView$5;->this$0:Lcom/android/systemui/SearchPanelView;

    # invokes: Lcom/android/systemui/SearchPanelView;->updateTargetVisibility()V
    invoke-static {v1}, Lcom/android/systemui/SearchPanelView;->access$700(Lcom/android/systemui/SearchPanelView;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView$5;->this$0:Lcom/android/systemui/SearchPanelView;

    # getter for: Lcom/android/systemui/SearchPanelView;->mEditButton:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/SearchPanelView;->access$800(Lcom/android/systemui/SearchPanelView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    goto :goto_0
.end method
