.class Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;
.super Ljava/lang/Object;
.source "ShortcutPickHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/cm/ShortcutPickHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionHolder"
.end annotation


# instance fields
.field private mAvailableEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailableValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/cm/ShortcutPickHelper;


# direct methods
.method private constructor <init>(Lcom/android/systemui/cm/ShortcutPickHelper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;->mAvailableEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;->mAvailableValues:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/cm/ShortcutPickHelper;Lcom/android/systemui/cm/ShortcutPickHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;-><init>(Lcom/android/systemui/cm/ShortcutPickHelper;)V

    return-void
.end method


# virtual methods
.method public addAction(Ljava/lang/String;I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;->getActionIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;->mAvailableEntries:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    # getter for: Lcom/android/systemui/cm/ShortcutPickHelper;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$700(Lcom/android/systemui/cm/ShortcutPickHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;->mAvailableValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addAction(Ljava/lang/String;II)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;->getActionIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;->mAvailableEntries:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    # getter for: Lcom/android/systemui/cm/ShortcutPickHelper;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$700(Lcom/android/systemui/cm/ShortcutPickHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;->mAvailableValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getAction(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;->mAvailableValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;->mAvailableValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getActionIndex(Ljava/lang/String;)I
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;->mAvailableValues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;->mAvailableValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;->mAvailableEntries:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;->mAvailableEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    return-object v0
.end method

.method public removeAction(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;->getActionIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;->mAvailableEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;->mAvailableValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method
