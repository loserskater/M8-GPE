.class Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;
.super Ljava/lang/Object;
.source "LocationTile.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
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
.field private mAdapter:Lcom/android/systemui/qs/tiles/LocationTile$AdvancedLocationAdapter;

.field private mDetails:Lcom/android/systemui/qs/QSDetailItemsList;

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

.method private rebuildLocationList(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    # getter for: Lcom/android/systemui/qs/tiles/LocationTile;->mLocationList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->access$400(Lcom/android/systemui/qs/tiles/LocationTile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    # getter for: Lcom/android/systemui/qs/tiles/LocationTile;->mLocationList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->access$400(Lcom/android/systemui/qs/tiles/LocationTile;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/qs/tiles/LocationTile;->LOCATION_SETTINGS:[Ljava/lang/Integer;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mDetails:Lcom/android/systemui/qs/QSDetailItemsList;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetailItemsList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mAdapter:Lcom/android/systemui/qs/tiles/LocationTile$AdvancedLocationAdapter;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    # getter for: Lcom/android/systemui/qs/tiles/LocationTile;->mController:Lcom/android/systemui/statusbar/policy/LocationController;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/LocationTile;->access$700(Lcom/android/systemui/qs/tiles/LocationTile;)Lcom/android/systemui/statusbar/policy/LocationController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/LocationController;->getLocationCurrentState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/tiles/LocationTile$AdvancedLocationAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mAdapter:Lcom/android/systemui/qs/tiles/LocationTile$AdvancedLocationAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/LocationTile$AdvancedLocationAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-static {p1, p2, p3}, Lcom/android/systemui/qs/QSDetailItemsList;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItemsList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mDetails:Lcom/android/systemui/qs/QSDetailItemsList;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mDetails:Lcom/android/systemui/qs/QSDetailItemsList;

    const v2, 0x7f020074

    const v3, 0x7f0b00a8

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/qs/QSDetailItemsList;->setEmptyState(II)V

    new-instance v1, Lcom/android/systemui/qs/tiles/LocationTile$AdvancedLocationAdapter;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-direct {v1, v2, p1}, Lcom/android/systemui/qs/tiles/LocationTile$AdvancedLocationAdapter;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mAdapter:Lcom/android/systemui/qs/tiles/LocationTile$AdvancedLocationAdapter;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mDetails:Lcom/android/systemui/qs/QSDetailItemsList;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mAdapter:Lcom/android/systemui/qs/tiles/LocationTile$AdvancedLocationAdapter;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSDetailItemsList;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mDetails:Lcom/android/systemui/qs/QSDetailItemsList;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSDetailItemsList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mDetails:Lcom/android/systemui/qs/QSDetailItemsList;

    return-object v1
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    # getter for: Lcom/android/systemui/qs/tiles/LocationTile;->LOCATION_SETTINGS_INTENT:Landroid/content/Intent;
    invoke-static {}, Lcom/android/systemui/qs/tiles/LocationTile;->access$800()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()I
    .locals 1

    const v0, 0x7f0b01fb

    return v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    # getter for: Lcom/android/systemui/qs/tiles/LocationTile;->mController:Lcom/android/systemui/statusbar/policy/LocationController;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/LocationTile;->access$700(Lcom/android/systemui/qs/tiles/LocationTile;)Lcom/android/systemui/statusbar/policy/LocationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/LocationController;->getLocationCurrentState()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->rebuildLocationList(Z)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    # getter for: Lcom/android/systemui/qs/tiles/LocationTile;->mController:Lcom/android/systemui/statusbar/policy/LocationController;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->access$700(Lcom/android/systemui/qs/tiles/LocationTile;)Lcom/android/systemui/statusbar/policy/LocationController;

    move-result-object v1

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/LocationController;->setLocationMode(I)Z

    return-void
.end method

.method public setToggleState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    # getter for: Lcom/android/systemui/qs/tiles/LocationTile;->mController:Lcom/android/systemui/statusbar/policy/LocationController;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->access$700(Lcom/android/systemui/qs/tiles/LocationTile;)Lcom/android/systemui/statusbar/policy/LocationController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/LocationController;->setLocationEnabled(Z)Z

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->rebuildLocationList(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/LocationTile;->fireToggleStateChanged(Z)V

    return-void
.end method
