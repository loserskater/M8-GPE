.class public Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;
.super Ljava/lang/Object;
.source "ProfilesTile.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/ProfilesTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProfileDetailAdapter"
.end annotation


# instance fields
.field private mProfilesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Profile;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/ProfilesTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private rebuildProfilesList(Z)V
    .locals 7

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->mProfilesList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_3

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    # getter for: Lcom/android/systemui/qs/tiles/ProfilesTile;->mProfileManager:Landroid/app/ProfileManager;
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/ProfilesTile;->access$400(Lcom/android/systemui/qs/tiles/ProfilesTile;)Landroid/app/ProfileManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProfileManager;->getProfiles()[Landroid/app/Profile;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    # getter for: Lcom/android/systemui/qs/tiles/ProfilesTile;->mProfileManager:Landroid/app/ProfileManager;
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/ProfilesTile;->access$400(Lcom/android/systemui/qs/tiles/ProfilesTile;)Landroid/app/ProfileManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProfileManager;->getActiveProfile()Landroid/app/Profile;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    :goto_1
    array-length v5, v3

    if-ge v2, v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->mProfilesList:Ljava/util/List;

    aget-object v6, v3, v2

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_0

    aget-object v5, v3, v2

    invoke-virtual {v5}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    # getter for: Lcom/android/systemui/qs/tiles/ProfilesTile;->mDetails:Lcom/android/systemui/qs/QSDetailItemsList;
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/ProfilesTile;->access$200(Lcom/android/systemui/qs/tiles/ProfilesTile;)Lcom/android/systemui/qs/QSDetailItemsList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSDetailItemsList;->getListView()Landroid/widget/ListView;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    # getter for: Lcom/android/systemui/qs/tiles/ProfilesTile;->mAdapter:Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileAdapter;
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/ProfilesTile;->access$300(Lcom/android/systemui/qs/tiles/ProfilesTile;)Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    invoke-static {p1, p2, p3}, Lcom/android/systemui/qs/QSDetailItemsList;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItemsList;

    move-result-object v2

    # setter for: Lcom/android/systemui/qs/tiles/ProfilesTile;->mDetails:Lcom/android/systemui/qs/QSDetailItemsList;
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/ProfilesTile;->access$202(Lcom/android/systemui/qs/tiles/ProfilesTile;Lcom/android/systemui/qs/QSDetailItemsList;)Lcom/android/systemui/qs/QSDetailItemsList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->mProfilesList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    # getter for: Lcom/android/systemui/qs/tiles/ProfilesTile;->mDetails:Lcom/android/systemui/qs/QSDetailItemsList;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ProfilesTile;->access$200(Lcom/android/systemui/qs/tiles/ProfilesTile;)Lcom/android/systemui/qs/QSDetailItemsList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    new-instance v3, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileAdapter;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->mProfilesList:Ljava/util/List;

    invoke-direct {v3, v4, p1, v5}, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileAdapter;-><init>(Lcom/android/systemui/qs/tiles/ProfilesTile;Landroid/content/Context;Ljava/util/List;)V

    # setter for: Lcom/android/systemui/qs/tiles/ProfilesTile;->mAdapter:Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileAdapter;
    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/ProfilesTile;->access$302(Lcom/android/systemui/qs/tiles/ProfilesTile;Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileAdapter;)Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSDetailItemsList;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    # getter for: Lcom/android/systemui/qs/tiles/ProfilesTile;->mDetails:Lcom/android/systemui/qs/QSDetailItemsList;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ProfilesTile;->access$200(Lcom/android/systemui/qs/tiles/ProfilesTile;)Lcom/android/systemui/qs/QSDetailItemsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSDetailItemsList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    # getter for: Lcom/android/systemui/qs/tiles/ProfilesTile;->mDetails:Lcom/android/systemui/qs/QSDetailItemsList;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ProfilesTile;->access$200(Lcom/android/systemui/qs/tiles/ProfilesTile;)Lcom/android/systemui/qs/QSDetailItemsList;

    move-result-object v1

    const v2, 0x7f020177

    const v3, 0x7f0b0207

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/qs/QSDetailItemsList;->setEmptyState(II)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    # getter for: Lcom/android/systemui/qs/tiles/ProfilesTile;->mDetails:Lcom/android/systemui/qs/QSDetailItemsList;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ProfilesTile;->access$200(Lcom/android/systemui/qs/tiles/ProfilesTile;)Lcom/android/systemui/qs/QSDetailItemsList;

    move-result-object v1

    return-object v1
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.PROFILES_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getTitle()I
    .locals 1

    const v0, 0x7f0b0206

    return v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    # invokes: Lcom/android/systemui/qs/tiles/ProfilesTile;->profilesEnabled()Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ProfilesTile;->access$100(Lcom/android/systemui/qs/tiles/ProfilesTile;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->rebuildProfilesList(Z)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Profile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    # getter for: Lcom/android/systemui/qs/tiles/ProfilesTile;->mProfileManager:Landroid/app/ProfileManager;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ProfilesTile;->access$400(Lcom/android/systemui/qs/tiles/ProfilesTile;)Landroid/app/ProfileManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProfileManager;->setActiveProfile(Ljava/util/UUID;)V

    return-void
.end method

.method public setToggleState(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    # getter for: Lcom/android/systemui/qs/tiles/ProfilesTile;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ProfilesTile;->access$500(Lcom/android/systemui/qs/tiles/ProfilesTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "system_profiles_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ProfilesTile;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/ProfilesTile;->fireToggleStateChanged(Z)V

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;->rebuildProfilesList(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
