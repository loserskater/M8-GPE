.class Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter$1;
.super Ljava/lang/Object;
.source "ScreenTimeoutTile.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;

    # getter for: Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->access$900(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter$1$1;-><init>(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter$1;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
