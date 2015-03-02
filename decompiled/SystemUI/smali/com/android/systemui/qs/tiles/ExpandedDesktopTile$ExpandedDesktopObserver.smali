.class Lcom/android/systemui/qs/tiles/ExpandedDesktopTile$ExpandedDesktopObserver;
.super Landroid/database/ContentObserver;
.source "ExpandedDesktopTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedDesktopObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile$ExpandedDesktopObserver;->this$0:Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public endObserving()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile$ExpandedDesktopObserver;->this$0:Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;

    # getter for: Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->access$500(Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile$ExpandedDesktopObserver;->this$0:Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;

    # invokes: Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->access$000(Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;)V

    return-void
.end method

.method public startObserving()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile$ExpandedDesktopObserver;->this$0:Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile$ExpandedDesktopObserver;->this$0:Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile$ExpandedDesktopObserver;->this$0:Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;

    # getter for: Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->access$200(Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    # invokes: Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->getExpandedDesktopState(Landroid/content/ContentResolver;)I
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->access$300(Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;Landroid/content/ContentResolver;)I

    move-result v1

    # setter for: Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->mExpandedDesktopState:I
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->access$102(Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;I)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile$ExpandedDesktopObserver;->this$0:Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;

    # getter for: Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->access$400(Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "policy_control"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
