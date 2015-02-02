.class Lcom/android/systemui/qs/tiles/PerfProfileTile$PerformanceProfileObserver;
.super Landroid/database/ContentObserver;
.source "PerfProfileTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/PerfProfileTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformanceProfileObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/PerfProfileTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/PerfProfileTile;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile$PerformanceProfileObserver;->this$0:Lcom/android/systemui/qs/tiles/PerfProfileTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public endObserving()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile$PerformanceProfileObserver;->this$0:Lcom/android/systemui/qs/tiles/PerfProfileTile;

    # getter for: Lcom/android/systemui/qs/tiles/PerfProfileTile;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/PerfProfileTile;->access$300(Lcom/android/systemui/qs/tiles/PerfProfileTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile$PerformanceProfileObserver;->this$0:Lcom/android/systemui/qs/tiles/PerfProfileTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile$PerformanceProfileObserver;->this$0:Lcom/android/systemui/qs/tiles/PerfProfileTile;

    # invokes: Lcom/android/systemui/qs/tiles/PerfProfileTile;->getCurrentProfileIndex()I
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/PerfProfileTile;->access$000(Lcom/android/systemui/qs/tiles/PerfProfileTile;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/PerfProfileTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/PerfProfileTile;->access$100(Lcom/android/systemui/qs/tiles/PerfProfileTile;Ljava/lang/Object;)V

    return-void
.end method

.method public startObserving()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile$PerformanceProfileObserver;->this$0:Lcom/android/systemui/qs/tiles/PerfProfileTile;

    # getter for: Lcom/android/systemui/qs/tiles/PerfProfileTile;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/PerfProfileTile;->access$200(Lcom/android/systemui/qs/tiles/PerfProfileTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "performance_profile"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
