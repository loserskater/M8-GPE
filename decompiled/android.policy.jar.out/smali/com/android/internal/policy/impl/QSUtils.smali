.class public Lcom/android/internal/policy/impl/QSUtils;
.super Ljava/lang/Object;
.source "QSUtils.java"


# static fields
.field private static sAvailableTilesFiltered:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static filterTiles(Landroid/content/Context;)V
    .locals 6
    .param p0    # Landroid/content/Context;

    const/4 v4, 0x1

    sget-boolean v3, Lcom/android/internal/policy/impl/QSUtils;->sAvailableTilesFiltered:Z

    if-nez v3, :cond_3

    sget-object v3, Lcom/android/internal/policy/impl/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v3, :pswitch_data_0

    :goto_2
    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    sget-object v3, Lcom/android/internal/policy/impl/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_0
    const-string v5, "visualizer"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string v5, "lte"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v4

    goto :goto_1

    :sswitch_2
    const-string v5, "profiles"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string v5, "performance"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string v5, "lockscreen"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x4

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    sput-boolean v4, Lcom/android/internal/policy/impl/QSUtils;->sAvailableTilesFiltered:Z

    :cond_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x583cefd0 -> :sswitch_3
        -0x3bbd5416 -> :sswitch_2
        -0x130a8722 -> :sswitch_0
        0x1a3dd -> :sswitch_1
        0x6adcb957 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getAvailableTiles(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/internal/policy/impl/QSUtils;->filterTiles(Landroid/content/Context;)V

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getDefaultTiles(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/internal/policy/impl/QSUtils;->filterTiles(Landroid/content/Context;)V

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getDefaultTilesAsString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/android/internal/policy/impl/QSUtils;->getDefaultTiles(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
