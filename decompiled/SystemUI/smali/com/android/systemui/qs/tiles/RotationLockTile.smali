.class public Lcom/android/systemui/qs/tiles/RotationLockTile;
.super Lcom/android/systemui/qs/QSTile;
.source "RotationLockTile.java"


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
.field intent:Landroid/content/Intent;

.field private final mCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

.field private final mController:Lcom/android/systemui/statusbar/policy/RotationLockController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->intent:Landroid/content/Intent;

    new-instance v0, Lcom/android/systemui/qs/tiles/RotationLockTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/RotationLockTile$2;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getRotationLockController()Lcom/android/systemui/statusbar/policy/RotationLockController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/RotationLockTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->refreshState()V

    return-void
.end method

.method private getAccessibilityString(III)Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v2, v2, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    move v1, p1

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v1, p2

    goto :goto_1

    :cond_2
    move v1, p3

    goto :goto_1
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 3

    const v0, 0x7f0b00cd

    const v1, 0x7f0b00cc

    const v2, 0x7f0b00cb

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/qs/tiles/RotationLockTile;->getAccessibilityString(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLocked(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->qsCollapsePanel()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected handleLongClick()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->intent:Landroid/content/Intent;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$DisplayRotationSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->intent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->intent:Landroid/content/Intent;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$DisplayRotationSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->intent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 8

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLocked()Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLockAffordanceVisible()Z

    move-result v5

    iput-boolean v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-boolean v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eq v5, v4, :cond_1

    iput-boolean v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v4, :cond_3

    const v5, 0x7f020175

    :goto_1
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mUiHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/systemui/qs/tiles/RotationLockTile$1;

    invoke-direct {v6, p0, v0}, Lcom/android/systemui/qs/tiles/RotationLockTile$1;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    if-eqz v4, :cond_6

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/RotationLockController;->getRotationLockOrientation()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_4

    const v1, 0x7f0b00db

    :goto_2
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_2

    const v5, 0x7f020174

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Landroid/graphics/drawable/Drawable;

    :cond_2
    :goto_3
    const v5, 0x7f0b00ca

    const v6, 0x7f0b00c9

    const v7, 0x7f0b00c8

    invoke-direct {p0, v5, v6, v7}, Lcom/android/systemui/qs/tiles/RotationLockTile;->getAccessibilityString(III)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const v5, 0x7f02007e

    goto :goto_1

    :cond_4
    const/4 v5, 0x2

    if-ne v2, v5, :cond_5

    const v1, 0x7f0b00dc

    goto :goto_2

    :cond_5
    const v1, 0x7f0b00da

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mContext:Landroid/content/Context;

    const v6, 0x7f0b00d9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_2

    const v5, 0x7f020166

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_3
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/RotationLockTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

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

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->addRotationLockControllerCallback(Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->removeRotationLockControllerCallback(Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V

    goto :goto_0
.end method
