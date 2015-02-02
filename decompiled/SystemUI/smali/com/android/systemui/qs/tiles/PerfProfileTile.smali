.class public Lcom/android/systemui/qs/tiles/PerfProfileTile;
.super Lcom/android/systemui/qs/QSTile;
.source "PerfProfileTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/PerfProfileTile$ProfileState;,
        Lcom/android/systemui/qs/tiles/PerfProfileTile$PerformanceProfileObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/tiles/PerfProfileTile$ProfileState;",
        ">;"
    }
.end annotation


# instance fields
.field private mEntries:[Ljava/lang/String;

.field private mEntryIconRes:[I

.field private mListening:Z

.field private mObserver:Lcom/android/systemui/qs/tiles/PerfProfileTile$PerformanceProfileObserver;

.field private mPerfProfileDefaultEntry:Ljava/lang/String;

.field private mPerfProfileValues:[Ljava/lang/String;

.field private final mPm:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    new-instance v3, Lcom/android/systemui/qs/tiles/PerfProfileTile$PerformanceProfileObserver;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/qs/tiles/PerfProfileTile$PerformanceProfileObserver;-><init>(Lcom/android/systemui/qs/tiles/PerfProfileTile;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile;->mObserver:Lcom/android/systemui/qs/tiles/PerfProfileTile$PerformanceProfileObserver;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile;->mPm:Landroid/os/PowerManager;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060005

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile;->mEntryIconRes:[I

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile;->mEntryIconRes:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile;->mEntryIconRes:[I

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->getDefaultPowerProfile()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile;->mPerfProfileDefaultEntry:Ljava/lang/String;

    const v3, 0x107000f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile;->mPerfProfileValues:[Ljava/lang/String;

    const v3, 0x107000e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile;->mEntries:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/PerfProfileTile;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/PerfProfileTile;->getCurrentProfileIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/PerfProfileTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/PerfProfileTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/PerfProfileTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/PerfProfileTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private changeToNextProfile()V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/PerfProfileTile;->getCurrentProfileIndex()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile;->mPerfProfileValues:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile;->mPm:Landroid/os/PowerManager;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile;->mPerfProfileValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->setPowerProfile(Ljava/lang/String;)Z

    return-void
.end method

.method private getCurrentProfileIndex()I
    .locals 5

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->getPowerProfile()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile;->mPerfProfileDefaultEntry:Ljava/lang/String;

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile;->mPerfProfileValues:[Ljava/lang/String;

    array-length v0, v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile;->mPerfProfileValues:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v1

    :cond_1
    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected handleClick()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/PerfProfileTile;->changeToNextProfile()V

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/tiles/PerfProfileTile$ProfileState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/PerfProfileTile;->handleUpdateState(Lcom/android/systemui/qs/tiles/PerfProfileTile$ProfileState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/tiles/PerfProfileTile$ProfileState;Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/qs/tiles/PerfProfileTile$ProfileState;->visible:Z

    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/PerfProfileTile;->getCurrentProfileIndex()I

    move-result v0

    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/tiles/PerfProfileTile$ProfileState;->profile:I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile;->mEntries:[Ljava/lang/String;

    iget v1, p1, Lcom/android/systemui/qs/tiles/PerfProfileTile$ProfileState;->profile:I

    aget-object v0, v0, v1

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/PerfProfileTile$ProfileState;->label:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile;->mEntryIconRes:[I

    iget v2, p1, Lcom/android/systemui/qs/tiles/PerfProfileTile$ProfileState;->profile:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/PerfProfileTile$ProfileState;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p1, Lcom/android/systemui/qs/tiles/PerfProfileTile$ProfileState;->icon:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    new-instance v1, Lcom/android/systemui/qs/tiles/PerfProfileTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/PerfProfileTile$1;-><init>(Lcom/android/systemui/qs/tiles/PerfProfileTile;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$H;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :cond_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/PerfProfileTile;->newTileState()Lcom/android/systemui/qs/tiles/PerfProfileTile$ProfileState;

    move-result-object v0

    return-object v0
.end method

.method protected newTileState()Lcom/android/systemui/qs/tiles/PerfProfileTile$ProfileState;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/tiles/PerfProfileTile$ProfileState;

    invoke-direct {v0}, Lcom/android/systemui/qs/tiles/PerfProfileTile$ProfileState;-><init>()V

    return-object v0
.end method

.method public setListening(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile;->mListening:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile;->mListening:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile;->mObserver:Lcom/android/systemui/qs/tiles/PerfProfileTile$PerformanceProfileObserver;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/PerfProfileTile$PerformanceProfileObserver;->startObserving()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PerfProfileTile;->mObserver:Lcom/android/systemui/qs/tiles/PerfProfileTile$PerformanceProfileObserver;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/PerfProfileTile$PerformanceProfileObserver;->endObserving()V

    goto :goto_0
.end method
