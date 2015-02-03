.class Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;
.super Ljava/lang/Object;
.source "LocationTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/LocationTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationDetailAdapter"
.end annotation


# instance fields
.field private mLocationDetailView:Lcom/android/systemui/qs/tiles/LocationDetailView;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/LocationTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/LocationTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/LocationTile;Lcom/android/systemui/qs/tiles/LocationTile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/LocationTile;->access$700(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040053

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/tiles/LocationDetailView;

    move-object v0, v1

    check-cast v0, Lcom/android/systemui/qs/tiles/LocationDetailView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mLocationDetailView:Lcom/android/systemui/qs/tiles/LocationDetailView;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mLocationDetailView:Lcom/android/systemui/qs/tiles/LocationDetailView;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/LocationTile;->access$300(Lcom/android/systemui/qs/tiles/LocationTile;)Lcom/android/systemui/statusbar/policy/LocationController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/tiles/LocationDetailView;->setLocationController(Lcom/android/systemui/statusbar/policy/LocationController;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/LocationTile;->access$300(Lcom/android/systemui/qs/tiles/LocationTile;)Lcom/android/systemui/statusbar/policy/LocationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/LocationController;->getLocationCurrentState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->setLocationMode(I)V

    return-object v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    invoke-static {}, Lcom/android/systemui/qs/tiles/LocationTile;->access$600()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()I
    .locals 1

    const v0, 0x7f0b01fb

    return v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->access$300(Lcom/android/systemui/qs/tiles/LocationTile;)Lcom/android/systemui/statusbar/policy/LocationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/LocationController;->getLocationCurrentState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLocationEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/LocationTile;->fireToggleStateChanged(Z)V

    return-void
.end method

.method public setLocationMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mLocationDetailView:Lcom/android/systemui/qs/tiles/LocationDetailView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mLocationDetailView:Lcom/android/systemui/qs/tiles/LocationDetailView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/LocationDetailView;->setLocationMode(I)V

    :cond_0
    return-void
.end method

.method public setToggleState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->access$300(Lcom/android/systemui/qs/tiles/LocationTile;)Lcom/android/systemui/statusbar/policy/LocationController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/LocationController;->setLocationEnabled(Z)Z

    return-void
.end method
