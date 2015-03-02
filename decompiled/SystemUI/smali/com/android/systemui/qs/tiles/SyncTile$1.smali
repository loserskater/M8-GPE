.class Lcom/android/systemui/qs/tiles/SyncTile$1;
.super Ljava/lang/Object;
.source "SyncTile.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SyncTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SyncTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SyncTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SyncTile$1;->this$0:Lcom/android/systemui/qs/tiles/SyncTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SyncTile$1;->this$0:Lcom/android/systemui/qs/tiles/SyncTile;

    # getter for: Lcom/android/systemui/qs/tiles/SyncTile;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SyncTile;->access$100(Lcom/android/systemui/qs/tiles/SyncTile;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/tiles/SyncTile$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/SyncTile$1$1;-><init>(Lcom/android/systemui/qs/tiles/SyncTile$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
