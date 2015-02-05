.class Lcom/android/systemui/cm/ShortcutPickHelper$AppPickAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShortcutPickHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/cm/ShortcutPickHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppPickAdapter"
.end annotation


# instance fields
.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/cm/ShortcutPickHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/cm/ShortcutPickHelper;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/cm/ShortcutPickHelper$AppPickAdapter;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    # getter for: Lcom/android/systemui/cm/ShortcutPickHelper;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$100(Lcom/android/systemui/cm/ShortcutPickHelper;)Landroid/content/pm/PackageManager;

    move-result-object v0

    # getter for: Lcom/android/systemui/cm/ShortcutPickHelper;->mBaseIntent:Landroid/content/Intent;
    invoke-static {p1}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$000(Lcom/android/systemui/cm/ShortcutPickHelper;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/cm/ShortcutPickHelper$AppPickAdapter;->mItems:Ljava/util/List;

    iget-object v0, p0, Lcom/android/systemui/cm/ShortcutPickHelper$AppPickAdapter;->mItems:Ljava/util/List;

    new-instance v1, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    # getter for: Lcom/android/systemui/cm/ShortcutPickHelper;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$100(Lcom/android/systemui/cm/ShortcutPickHelper;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/cm/ShortcutPickHelper$AppPickAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/cm/ShortcutPickHelper$AppPickAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/cm/ShortcutPickHelper$AppPickAdapter;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    # getter for: Lcom/android/systemui/cm/ShortcutPickHelper;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$200(Lcom/android/systemui/cm/ShortcutPickHelper;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040056

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/cm/ShortcutPickHelper$AppPickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    move-object v2, p2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/cm/ShortcutPickHelper$AppPickAdapter;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    # getter for: Lcom/android/systemui/cm/ShortcutPickHelper;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$100(Lcom/android/systemui/cm/ShortcutPickHelper;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/systemui/cm/ShortcutPickHelper$AppPickAdapter;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    # getter for: Lcom/android/systemui/cm/ShortcutPickHelper;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$100(Lcom/android/systemui/cm/ShortcutPickHelper;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/cm/ShortcutPickHelper$AppPickAdapter;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    # getter for: Lcom/android/systemui/cm/ShortcutPickHelper;->mIconSize:I
    invoke-static {v3}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$300(Lcom/android/systemui/cm/ShortcutPickHelper;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/cm/ShortcutPickHelper$AppPickAdapter;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    # getter for: Lcom/android/systemui/cm/ShortcutPickHelper;->mIconSize:I
    invoke-static {v4}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$300(Lcom/android/systemui/cm/ShortcutPickHelper;)I

    move-result v4

    invoke-virtual {v0, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method
