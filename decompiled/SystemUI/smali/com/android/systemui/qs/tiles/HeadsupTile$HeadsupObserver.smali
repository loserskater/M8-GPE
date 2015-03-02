.class Lcom/android/systemui/qs/tiles/HeadsupTile$HeadsupObserver;
.super Landroid/database/ContentObserver;
.source "HeadsupTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/HeadsupTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadsupObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/HeadsupTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/HeadsupTile;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HeadsupTile$HeadsupObserver;->this$0:Lcom/android/systemui/qs/tiles/HeadsupTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public endObserving()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HeadsupTile$HeadsupObserver;->this$0:Lcom/android/systemui/qs/tiles/HeadsupTile;

    # getter for: Lcom/android/systemui/qs/tiles/HeadsupTile;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HeadsupTile;->access$200(Lcom/android/systemui/qs/tiles/HeadsupTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HeadsupTile$HeadsupObserver;->this$0:Lcom/android/systemui/qs/tiles/HeadsupTile;

    # invokes: Lcom/android/systemui/qs/tiles/HeadsupTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HeadsupTile;->access$000(Lcom/android/systemui/qs/tiles/HeadsupTile;)V

    return-void
.end method

.method public startObserving()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HeadsupTile$HeadsupObserver;->this$0:Lcom/android/systemui/qs/tiles/HeadsupTile;

    # getter for: Lcom/android/systemui/qs/tiles/HeadsupTile;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HeadsupTile;->access$100(Lcom/android/systemui/qs/tiles/HeadsupTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "heads_up_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
