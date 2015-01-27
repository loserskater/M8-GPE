.class Lcom/android/systemui/recents/views/TaskStackView$8;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackView;->onTaskViewLongClicked(Lcom/android/systemui/recents/views/TaskView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView$8;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView$8;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/recents/views/TaskStackView;->mPopup:Landroid/widget/PopupMenu;
    invoke-static {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->access$102(Lcom/android/systemui/recents/views/TaskStackView;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;

    return-void
.end method
