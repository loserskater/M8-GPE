.class final enum Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;
.super Ljava/lang/Enum;
.source "ScreenTimeoutTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Bucket"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;

.field public static final enum LARGE:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;

.field public static final enum MEDIUM:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;

.field public static final enum SMALL:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;


# instance fields
.field private final start:I

.field private final stop:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;

    const-string v1, "SMALL"

    const/16 v2, 0x7530

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;->SMALL:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;

    new-instance v0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;

    const-string v1, "MEDIUM"

    const v2, 0xea60

    const v3, 0x493e0

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;->MEDIUM:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;

    new-instance v0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;

    const-string v1, "LARGE"

    const v2, 0x927c0

    const v3, 0x1b7740

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;->LARGE:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;

    sget-object v1, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;->SMALL:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;->MEDIUM:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;->LARGE:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;->$VALUES:[Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;->start:I

    iput p4, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;->stop:I

    return-void
.end method

.method public static getBucket(I)Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;
    .locals 5

    invoke-static {}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;->values()[Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    iget v4, v2, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;->start:I

    if-lt p0, v4, :cond_0

    iget v4, v2, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;->stop:I

    if-gt p0, v4, :cond_0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;
    .locals 1

    const-class v0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;->$VALUES:[Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;

    invoke-virtual {v0}, [Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;

    return-object v0
.end method
