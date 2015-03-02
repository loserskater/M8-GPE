.class Lcom/android/systemui/qs/tiles/ScreenOffTile$1;
.super Ljava/lang/Object;
.source "ScreenOffTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/ScreenOffTile;->triggerVirtualKeypress(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ScreenOffTile;

.field final synthetic val$keyCode:I

.field final synthetic val$longPress:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ScreenOffTile;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenOffTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenOffTile;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/ScreenOffTile$1;->val$longPress:Z

    iput p3, p0, Lcom/android/systemui/qs/tiles/ScreenOffTile$1;->val$keyCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/ScreenOffTile$1;->val$longPress:Z

    if-eqz v2, :cond_0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/qs/tiles/ScreenOffTile$1;->val$keyCode:I

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    const/16 v2, 0x88

    invoke-static {v1, v2}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    :goto_0
    invoke-virtual {v0, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void

    :cond_0
    new-instance v1, Landroid/view/KeyEvent;

    iget v2, p0, Lcom/android/systemui/qs/tiles/ScreenOffTile$1;->val$keyCode:I

    invoke-direct {v1, v4, v2}, Landroid/view/KeyEvent;-><init>(II)V

    const/16 v2, 0x8

    invoke-static {v1, v2}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    goto :goto_0
.end method
