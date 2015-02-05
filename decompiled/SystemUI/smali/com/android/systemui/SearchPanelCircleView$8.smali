.class Lcom/android/systemui/SearchPanelCircleView$8;
.super Ljava/lang/Object;
.source "SearchPanelCircleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SearchPanelCircleView;->setDraggedFarEnough(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SearchPanelCircleView;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/systemui/SearchPanelCircleView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/SearchPanelCircleView$8;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    iput p2, p0, Lcom/android/systemui/SearchPanelCircleView$8;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView$8;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    iget v1, p0, Lcom/android/systemui/SearchPanelCircleView$8;->val$index:I

    # invokes: Lcom/android/systemui/SearchPanelCircleView;->addRipple(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/SearchPanelCircleView;->access$1000(Lcom/android/systemui/SearchPanelCircleView;I)V

    return-void
.end method
