.class Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView$1;
.super Ljava/lang/Object;
.source "FloatingMenuButtonView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView$1;->this$0:Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    const/16 v1, 0x52

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView$1;->this$0:Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView$1;->this$0:Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;

    # getter for: Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->keyDownTime:J
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->access$000(Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;)J

    move-result-wide v6

    move v3, v2

    # invokes: Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->sendEvent(IIIJJ)V
    invoke-static/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->access$100(Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;IIIJJ)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView$1;->this$0:Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView$1;->this$0:Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;

    # getter for: Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->keyDownTime:J
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->access$000(Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;)J

    move-result-wide v10

    move v5, v1

    move v7, v2

    # invokes: Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->sendEvent(IIIJJ)V
    invoke-static/range {v4 .. v11}, Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;->access$100(Lcom/android/systemui/statusbar/phone/FloatingMenuButtonView;IIIJJ)V

    const-string v0, "FloatingMenu"

    const-string v1, "click.sendMenuEvent!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
