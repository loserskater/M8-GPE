.class Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter;
.super Ljava/lang/Object;
.source "ScreenTimeoutTile.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationDetailAdapter"
.end annotation


# instance fields
.field private mItems:Lcom/android/systemui/qs/QSDetailItemsList;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x1

    invoke-static {p1, p2, p3}, Lcom/android/systemui/qs/QSDetailItemsList;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItemsList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItemsList;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItemsList;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSDetailItemsList;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$RadioAdapter;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;

    const v4, 0x109000f

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;

    # getter for: Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mEntries:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->access$400(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, p1, v4, v5}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$RadioAdapter;-><init>(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;Landroid/content/Context;I[Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;

    # getter for: Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mValues:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->access$600(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;

    # invokes: Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->getScreenTimeout()I
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->access$500(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItemsList;

    invoke-virtual {v3, v0}, Lcom/android/systemui/qs/QSDetailItemsList;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v2, v1, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItemsList;

    new-instance v4, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSDetailItemsList;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItemsList;

    return-object v3
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    # getter for: Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->SETTINGS_INTENT:Landroid/content/Intent;
    invoke-static {}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->access$300()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()I
    .locals 1

    const v0, 0x7f0b0205

    return v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    return-object v0
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

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;

    # getter for: Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mValues:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->access$600(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;

    # getter for: Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->access$1000(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setToggleState(Z)V
    .locals 0

    return-void
.end method
