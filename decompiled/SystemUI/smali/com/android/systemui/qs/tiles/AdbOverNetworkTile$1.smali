.class Lcom/android/systemui/qs/tiles/AdbOverNetworkTile$1;
.super Landroid/database/ContentObserver;
.source "AdbOverNetworkTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile$1;->this$0:Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile$1;->this$0:Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;

    # invokes: Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;->access$000(Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;)V

    return-void
.end method
