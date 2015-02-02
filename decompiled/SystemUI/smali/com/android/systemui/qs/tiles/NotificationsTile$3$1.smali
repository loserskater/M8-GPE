.class Lcom/android/systemui/qs/tiles/NotificationsTile$3$1;
.super Ljava/lang/Object;
.source "NotificationsTile.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


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

.field final synthetic val$volumeComponent:Lcom/android/systemui/volume/VolumeComponent;

.field final synthetic val$vp:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/NotificationsTile$3;Lcom/android/systemui/volume/VolumeComponent;Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NotificationsTile$3$1;->this$1:Lcom/android/systemui/qs/tiles/NotificationsTile$3;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/NotificationsTile$3$1;->val$volumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/NotificationsTile$3$1;->val$vp:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NotificationsTile$3$1;->val$vp:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumePanel;->updateStates()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NotificationsTile$3$1;->val$vp:Lcom/android/systemui/volume/VolumePanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumePanel;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NotificationsTile$3$1;->val$volumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NotificationsTile$3$1;->val$vp:Lcom/android/systemui/volume/VolumePanel;

    invoke-interface {v0, v1}, Lcom/android/systemui/volume/VolumeComponent;->setVolumePanel(Lcom/android/systemui/volume/VolumePanel;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NotificationsTile$3$1;->val$volumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/volume/VolumeComponent;->setVolumePanel(Lcom/android/systemui/volume/VolumePanel;)V

    return-void
.end method
