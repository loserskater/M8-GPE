.class Lcom/android/systemui/qs/tiles/LockscreenToggleTile$1;
.super Landroid/content/BroadcastReceiver;
.source "LockscreenToggleTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/LockscreenToggleTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/LockscreenToggleTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/LockscreenToggleTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile$1;->this$0:Lcom/android/systemui/qs/tiles/LockscreenToggleTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile$1;->this$0:Lcom/android/systemui/qs/tiles/LockscreenToggleTile;

    const-string v1, "active"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mKeyguardBound:Z
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->access$002(Lcom/android/systemui/qs/tiles/LockscreenToggleTile;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile$1;->this$0:Lcom/android/systemui/qs/tiles/LockscreenToggleTile;

    # invokes: Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->applyLockscreenState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->access$100(Lcom/android/systemui/qs/tiles/LockscreenToggleTile;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile$1;->this$0:Lcom/android/systemui/qs/tiles/LockscreenToggleTile;

    # invokes: Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->access$200(Lcom/android/systemui/qs/tiles/LockscreenToggleTile;)V

    return-void
.end method
