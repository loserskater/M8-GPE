.class Lcom/android/systemui/cm/ActionTarget$1;
.super Ljava/lang/Object;
.source "ActionTarget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/cm/ActionTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/cm/ActionTarget;


# direct methods
.method constructor <init>(Lcom/android/systemui/cm/ActionTarget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/cm/ActionTarget$1;->this$0:Lcom/android/systemui/cm/ActionTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v6, 0x0

    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget$1;->this$0:Lcom/android/systemui/cm/ActionTarget;

    # getter for: Lcom/android/systemui/cm/ActionTarget;->mInjectKeyCode:I
    invoke-static {v0}, Lcom/android/systemui/cm/ActionTarget;->access$000(Lcom/android/systemui/cm/ActionTarget;)I

    move-result v7

    const/4 v10, -0x1

    const/16 v12, 0x48

    const/16 v13, 0x101

    move v8, v6

    move v9, v6

    move v11, v6

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, v1, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method
