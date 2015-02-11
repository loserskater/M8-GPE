.class Lcom/android/systemui/cm/ShortcutPickHelper$2;
.super Ljava/lang/Object;
.source "ShortcutPickHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/cm/ShortcutPickHelper;->sortItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/systemui/cm/ShortcutPickHelper$ItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/cm/ShortcutPickHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/cm/ShortcutPickHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/cm/ShortcutPickHelper$2;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/cm/ShortcutPickHelper$ItemInfo;Lcom/android/systemui/cm/ShortcutPickHelper$ItemInfo;)I
    .locals 2

    iget-object v0, p1, Lcom/android/systemui/cm/ShortcutPickHelper$ItemInfo;->label:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/systemui/cm/ShortcutPickHelper$ItemInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/systemui/cm/ShortcutPickHelper$ItemInfo;

    check-cast p2, Lcom/android/systemui/cm/ShortcutPickHelper$ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/cm/ShortcutPickHelper$2;->compare(Lcom/android/systemui/cm/ShortcutPickHelper$ItemInfo;Lcom/android/systemui/cm/ShortcutPickHelper$ItemInfo;)I

    move-result v0

    return v0
.end method
