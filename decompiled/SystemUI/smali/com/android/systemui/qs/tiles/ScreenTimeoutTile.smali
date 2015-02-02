.class public Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;
.super Lcom/android/systemui/qs/QSTile;
.source "ScreenTimeoutTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter;,
        Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$RadioAdapter;,
        Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;,
        Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$TimeoutState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$TimeoutState;",
        ">;"
    }
.end annotation


# static fields
.field private static final SETTINGS_INTENT:Landroid/content/Intent;


# instance fields
.field mAnimationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/AnimatedVectorDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mEntries:[Ljava/lang/String;

.field private mObserver:Landroid/database/ContentObserver;

.field private mShowingDetail:Z

.field private mValues:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->SETTINGS_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mAnimationList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$1;-><init>(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mObserver:Landroid/database/ContentObserver;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->populateList()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->refreshState()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->SETTINGS_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mEntries:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->getScreenTimeout()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mShowingDetail:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getScreenTimeout()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private makeTimeoutSummaryString(I)Ljava/lang/String;
    .locals 5

    const/16 v3, 0x3c

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    div-int/lit16 p1, p1, 0x3e8

    if-lt p1, v3, :cond_1

    rem-int/lit8 v2, p1, 0x3c

    if-nez v2, :cond_1

    div-int/lit8 p1, p1, 0x3c

    if-lt p1, v3, :cond_0

    rem-int/lit8 v2, p1, 0x3c

    if-nez v2, :cond_0

    div-int/lit8 p1, p1, 0x3c

    const v1, 0x1140014

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const v1, 0x1140013

    goto :goto_0

    :cond_1
    const v1, 0x1140012

    goto :goto_0
.end method

.method private populateList()V
    .locals 7

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mContext:Landroid/content/Context;

    const-string v5, "com.android.settings"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "screen_timeout_entries"

    const-string v5, "array"

    const-string v6, "com.android.settings"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mEntries:[Ljava/lang/String;

    const-string v4, "screen_timeout_values"

    const-string v5, "array"

    const-string v6, "com.android.settings"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mValues:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private runNextAnimation(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$TimeoutState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mAnimationList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$TimeoutState;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$3;-><init>(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$TimeoutState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$LocationDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$1;)V

    return-object v0
.end method

.method protected handleClick()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mEntries:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mShowingDetail:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->showDetail(Z)V

    :cond_0
    return-void
.end method

.method protected handleLongClick()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    sget-object v1, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->SETTINGS_INTENT:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$TimeoutState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->handleUpdateState(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$TimeoutState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$TimeoutState;Ljava/lang/Object;)V
    .locals 8

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mShowingDetail:Z

    if-eqz v6, :cond_0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->getScreenTimeout()I

    move-result v2

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;->getBucket(I)Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;

    move-result-object v3

    iget v6, p1, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$TimeoutState;->previousTimeout:I

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;->getBucket(I)Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;

    move-result-object v4

    iget v6, p1, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$TimeoutState;->previousTimeout:I

    sparse-switch v6, :sswitch_data_0

    :cond_1
    :goto_1
    iget-object v6, p1, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$TimeoutState;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_2

    if-eq v4, v3, :cond_3

    :cond_2
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mUiHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$2;

    invoke-direct {v7, p0, v0}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$2;-><init>(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$TimeoutState;->icon:Landroid/graphics/drawable/Drawable;

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->runNextAnimation(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$TimeoutState;)V

    const/4 v6, 0x1

    iput-boolean v6, p1, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$TimeoutState;->visible:Z

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->makeTimeoutSummaryString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$TimeoutState;->label:Ljava/lang/String;

    iput v2, p1, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$TimeoutState;->previousTimeout:I

    goto :goto_0

    :sswitch_0
    const v1, 0x7f020182

    sget-object v6, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;->MEDIUM:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;

    if-ne v3, v6, :cond_4

    const v1, 0x7f020183

    goto :goto_1

    :cond_4
    sget-object v6, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;->LARGE:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;

    if-ne v3, v6, :cond_1

    const v1, 0x7f020184

    goto :goto_1

    :sswitch_1
    const v1, 0x7f020183

    sget-object v6, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;->SMALL:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;

    if-ne v3, v6, :cond_5

    const v1, 0x7f020182

    goto :goto_1

    :cond_5
    sget-object v6, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;->LARGE:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;

    if-ne v3, v6, :cond_1

    const v1, 0x7f020181

    goto :goto_1

    :sswitch_2
    const v1, 0x7f020181

    sget-object v6, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;->MEDIUM:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;

    if-ne v3, v6, :cond_6

    const v1, 0x7f020180

    goto :goto_1

    :cond_6
    sget-object v6, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;->SMALL:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$Bucket;

    if-ne v3, v6, :cond_1

    const v1, 0x7f02017f

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3a98 -> :sswitch_0
        0x7530 -> :sswitch_0
        0xea60 -> :sswitch_1
        0x1d4c0 -> :sswitch_1
        0x493e0 -> :sswitch_1
        0x927c0 -> :sswitch_2
        0x1b7740 -> :sswitch_2
    .end sparse-switch
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->newTileState()Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$TimeoutState;

    move-result-object v0

    return-object v0
.end method

.method protected newTileState()Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$TimeoutState;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$TimeoutState;

    invoke-direct {v0}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$TimeoutState;-><init>()V

    return-object v0
.end method

.method public setListening(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
