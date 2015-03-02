.class public Lcom/android/systemui/qs/tiles/BatterySaverTile;
.super Lcom/android/systemui/qs/QSTile;
.source "BatterySaverTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private mEnabled:Z

.field private mListening:Z

.field private final mPowerMan:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mPowerMan:Landroid/os/PowerManager;

    return-void
.end method

.method private powerSaveEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mPowerMan:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public handleClick()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->powerSaveEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mPowerMan:Landroid/os/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setPowerSaveMode(Z)Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->refreshState()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->qsCollapsePanel()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mPowerMan:Landroid/os/PowerManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setPowerSaveMode(Z)Z

    goto :goto_0
.end method

.method public handleLongClick()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$BatterySaverSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$BatterySaverSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->powerSaveEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0225

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mEnabled:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0201a5

    iput v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->iconId:I

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0201a4

    iput v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->iconId:I

    goto :goto_0
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mListening:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mListening:Z

    goto :goto_0
.end method
