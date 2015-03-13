.class Lcom/android/systemui/qs/tiles/VisualizerTile$1;
.super Landroid/content/BroadcastReceiver;
.source "VisualizerTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/VisualizerTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/VisualizerTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/VisualizerTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$1;->this$0:Lcom/android/systemui/qs/tiles/VisualizerTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$1;->this$0:Lcom/android/systemui/qs/tiles/VisualizerTile;

    const-string v1, "mode"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/android/systemui/qs/tiles/VisualizerTile;->mPowerSaveModeEnabled:Z
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/VisualizerTile;->access$002(Lcom/android/systemui/qs/tiles/VisualizerTile;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VisualizerTile$1;->this$0:Lcom/android/systemui/qs/tiles/VisualizerTile;

    # invokes: Lcom/android/systemui/qs/tiles/VisualizerTile;->checkIfPlaying()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VisualizerTile;->access$100(Lcom/android/systemui/qs/tiles/VisualizerTile;)V

    :cond_0
    return-void
.end method
