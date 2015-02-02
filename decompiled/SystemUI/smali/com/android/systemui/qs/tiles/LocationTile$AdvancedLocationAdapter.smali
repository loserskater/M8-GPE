.class Lcom/android/systemui/qs/tiles/LocationTile$AdvancedLocationAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LocationTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/LocationTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdvancedLocationAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/LocationTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/LocationTile;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile$AdvancedLocationAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    const v0, 0x109000f

    # getter for: Lcom/android/systemui/qs/tiles/LocationTile;->mLocationList:Ljava/util/List;
    invoke-static {p1}, Lcom/android/systemui/qs/tiles/LocationTile;->access$400(Lcom/android/systemui/qs/tiles/LocationTile;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile$AdvancedLocationAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    # getter for: Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/LocationTile;->access$500(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x109000f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile$AdvancedLocationAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile$AdvancedLocationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # invokes: Lcom/android/systemui/qs/tiles/LocationTile;->getStateLabelRes(I)I
    invoke-static {v3, v2}, Lcom/android/systemui/qs/tiles/LocationTile;->access$600(Lcom/android/systemui/qs/tiles/LocationTile;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setText(I)V

    return-object v1
.end method
