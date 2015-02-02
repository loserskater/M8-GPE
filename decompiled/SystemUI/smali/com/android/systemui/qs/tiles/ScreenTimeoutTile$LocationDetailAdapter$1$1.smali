.class Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter$1$1;
.super Ljava/lang/Object;
.source "ScreenTimeoutTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter$1;->onViewDetachedFromWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter$1$1;->this$2:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter$1$1;->this$2:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter$1;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mShowingDetail:Z
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->access$702(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter$1$1;->this$2:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter$1;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->access$800(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;Ljava/lang/Object;)V

    return-void
.end method
