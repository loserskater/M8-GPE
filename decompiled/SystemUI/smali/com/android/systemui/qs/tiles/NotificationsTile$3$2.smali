.class Lcom/android/systemui/qs/tiles/NotificationsTile$3$2;
.super Ljava/lang/Object;
.source "NotificationsTile.java"

# interfaces
.implements Lcom/android/systemui/volume/ZenModePanel$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/NotificationsTile$3;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/NotificationsTile$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/NotificationsTile$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NotificationsTile$3$2;->this$1:Lcom/android/systemui/qs/tiles/NotificationsTile$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpanded(Z)V
    .locals 0

    return-void
.end method

.method public onInteraction()V
    .locals 0

    return-void
.end method

.method public onMoreSettings()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NotificationsTile$3$2;->this$1:Lcom/android/systemui/qs/tiles/NotificationsTile$3;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/NotificationsTile$3;->this$0:Lcom/android/systemui/qs/tiles/NotificationsTile;

    # getter for: Lcom/android/systemui/qs/tiles/NotificationsTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/NotificationsTile;->access$700(Lcom/android/systemui/qs/tiles/NotificationsTile;)Lcom/android/systemui/qs/QSTile$Host;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/volume/ZenModePanel;->ZEN_SETTINGS:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    return-void
.end method
