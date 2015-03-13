.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$DetailCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetailChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setTopOfContainer(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setDetailOffset(I)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCloseQsRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
