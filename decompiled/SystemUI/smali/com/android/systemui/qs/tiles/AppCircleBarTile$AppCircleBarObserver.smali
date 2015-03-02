.class Lcom/android/systemui/qs/tiles/AppCircleBarTile$AppCircleBarObserver;
.super Landroid/database/ContentObserver;
.source "AppCircleBarTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/AppCircleBarTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppCircleBarObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AppCircleBarTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/AppCircleBarTile;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AppCircleBarTile$AppCircleBarObserver;->this$0:Lcom/android/systemui/qs/tiles/AppCircleBarTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public endObserving()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AppCircleBarTile$AppCircleBarObserver;->this$0:Lcom/android/systemui/qs/tiles/AppCircleBarTile;

    # getter for: Lcom/android/systemui/qs/tiles/AppCircleBarTile;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AppCircleBarTile;->access$200(Lcom/android/systemui/qs/tiles/AppCircleBarTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AppCircleBarTile$AppCircleBarObserver;->this$0:Lcom/android/systemui/qs/tiles/AppCircleBarTile;

    # invokes: Lcom/android/systemui/qs/tiles/AppCircleBarTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AppCircleBarTile;->access$000(Lcom/android/systemui/qs/tiles/AppCircleBarTile;)V

    return-void
.end method

.method public startObserving()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AppCircleBarTile$AppCircleBarObserver;->this$0:Lcom/android/systemui/qs/tiles/AppCircleBarTile;

    # getter for: Lcom/android/systemui/qs/tiles/AppCircleBarTile;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AppCircleBarTile;->access$100(Lcom/android/systemui/qs/tiles/AppCircleBarTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_app_circle_bar"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
