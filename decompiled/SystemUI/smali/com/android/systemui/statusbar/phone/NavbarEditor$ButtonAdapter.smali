.class Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NavbarEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavbarEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ButtonAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mTakenItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/KeyButtonView;",
            ">;Z)V"
        }
    .end annotation

    const v3, 0x7f040055

    const v4, 0x7f0e0142

    invoke-static {p3}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;->buildItems(Z)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, p1, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;->mTakenItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    if-eqz v2, :cond_0

    sget-object v3, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_EMPTY:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;->mTakenItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static buildItems(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    # getter for: Lcom/android/systemui/statusbar/phone/NavbarEditor;->ALL_BUTTONS:[Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->access$500()[Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_HOME:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    if-nez p0, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_CONDITIONAL_MENU:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_ALWAYS_MENU:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_MENU_BIG:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;->isEnabled(I)Z

    move-result v0

    const v5, 0x7f0e0142

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v2, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;->displayId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    const v5, 0x7f0e0141

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget v5, v2, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;->portResource:I

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-object v4
.end method

.method public isEnabled(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;->mTakenItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
