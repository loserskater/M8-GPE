.class public Lcom/android/systemui/qs/QSDetailItemsList;
.super Landroid/widget/LinearLayout;
.source "QSDetailItemsList.java"


# instance fields
.field private mEmpty:Landroid/view/View;

.field private mEmptyIcon:Landroid/widget/ImageView;

.field private mEmptyText:Landroid/widget/TextView;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItemsList;->mContext:Landroid/content/Context;

    const-string v0, "QSDetailItemsList"

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItemsList;->mTag:Ljava/lang/Object;

    return-void
.end method

.method public static convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItemsList;
    .locals 3

    instance-of v1, p1, Lcom/android/systemui/qs/QSDetailItemsList;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/systemui/qs/QSDetailItemsList;

    :goto_0
    return-object p1

    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040052

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSDetailItemsList;

    move-object p1, v1

    goto :goto_0
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItemsList;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetailItemsList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItemsList;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItemsList;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/systemui/qs/QSDetailItemsList$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSDetailItemsList$1;-><init>(Lcom/android/systemui/qs/QSDetailItemsList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetailItemsList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItemsList;->mEmpty:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItemsList;->mEmpty:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItemsList;->mEmpty:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItemsList;->mEmptyText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItemsList;->mEmpty:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItemsList;->mEmptyIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItemsList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItemsList;->mEmpty:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItemsList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setEmptyState(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItemsList;->mEmptyIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItemsList;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
