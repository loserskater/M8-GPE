.class Lcom/android/systemui/cm/ShortcutPickHelper$AppPickAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ShortcutPickHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/cm/ShortcutPickHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppPickAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/systemui/cm/ShortcutPickHelper$ItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/cm/ShortcutPickHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/cm/ShortcutPickHelper;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/cm/ShortcutPickHelper$AppPickAdapter;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    const/4 v0, 0x0

    # getter for: Lcom/android/systemui/cm/ShortcutPickHelper;->mItems:Ljava/util/List;
    invoke-static {p1}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$200(Lcom/android/systemui/cm/ShortcutPickHelper;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/cm/ShortcutPickHelper$AppPickAdapter;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    # getter for: Lcom/android/systemui/cm/ShortcutPickHelper;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$700(Lcom/android/systemui/cm/ShortcutPickHelper;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040056

    invoke-static {v2, v3, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/cm/ShortcutPickHelper$AppPickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/cm/ShortcutPickHelper$ItemInfo;

    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/systemui/cm/ShortcutPickHelper$ItemInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/systemui/cm/ShortcutPickHelper$ItemInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/systemui/cm/ShortcutPickHelper$AppPickAdapter;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    # getter for: Lcom/android/systemui/cm/ShortcutPickHelper;->mIconSize:I
    invoke-static {v3}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$800(Lcom/android/systemui/cm/ShortcutPickHelper;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/cm/ShortcutPickHelper$AppPickAdapter;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    # getter for: Lcom/android/systemui/cm/ShortcutPickHelper;->mIconSize:I
    invoke-static {v4}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$800(Lcom/android/systemui/cm/ShortcutPickHelper;)I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v0, Lcom/android/systemui/cm/ShortcutPickHelper$ItemInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method
