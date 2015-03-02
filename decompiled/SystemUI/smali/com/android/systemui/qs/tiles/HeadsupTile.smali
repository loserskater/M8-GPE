.class public Lcom/android/systemui/qs/tiles/HeadsupTile;
.super Lcom/android/systemui/qs/QSTile;
.source "HeadsupTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/HeadsupTile$HeadsupObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private mListening:Z

.field private mObserver:Lcom/android/systemui/qs/tiles/HeadsupTile$HeadsupObserver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    new-instance v0, Lcom/android/systemui/qs/tiles/HeadsupTile$HeadsupObserver;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HeadsupTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/HeadsupTile$HeadsupObserver;-><init>(Lcom/android/systemui/qs/tiles/HeadsupTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HeadsupTile;->mObserver:Lcom/android/systemui/qs/tiles/HeadsupTile$HeadsupObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/HeadsupTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HeadsupTile;->refreshState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/HeadsupTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HeadsupTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/HeadsupTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HeadsupTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private headsupEnabled()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HeadsupTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "heads_up_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected handleClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HeadsupTile;->toggleState()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HeadsupTile;->refreshState()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HeadsupTile;->toast()V

    return-void
.end method

.method public handleLongClick()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$HeadsUpSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HeadsupTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$HeadsUpSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HeadsupTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HeadsupTile;->headsupEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0200bb

    iput v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->iconId:I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HeadsupTile;->mContext:Landroid/content/Context;

    const v1, 0x7f09000f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0200ba

    iput v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->iconId:I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HeadsupTile;->mContext:Landroid/content/Context;

    const v1, 0x7f090010

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    goto :goto_0
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/HeadsupTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

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

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HeadsupTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/HeadsupTile;->mListening:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/HeadsupTile;->mListening:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HeadsupTile;->mObserver:Lcom/android/systemui/qs/tiles/HeadsupTile$HeadsupObserver;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/HeadsupTile$HeadsupObserver;->startObserving()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HeadsupTile;->mObserver:Lcom/android/systemui/qs/tiles/HeadsupTile$HeadsupObserver;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/HeadsupTile$HeadsupObserver;->endObserving()V

    goto :goto_0
.end method

.method protected toast()V
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HeadsupTile;->mContext:Landroid/content/Context;

    const v5, 0x7f090011

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HeadsupTile;->mContext:Landroid/content/Context;

    const v5, 0x7f090012

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HeadsupTile;->headsupEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HeadsupTile;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HeadsupTile;->mContext:Landroid/content/Context;

    invoke-static {v4, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected toggleState()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HeadsupTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "heads_up_enabled"

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HeadsupTile;->headsupEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
