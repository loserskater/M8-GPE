.class Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$RadioAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ScreenTimeoutTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadioAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$RadioAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$RadioAdapter;->this$0:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;

    # getter for: Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->access$200(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    return-object p2
.end method
