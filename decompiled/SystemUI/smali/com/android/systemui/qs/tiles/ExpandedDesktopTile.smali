.class public Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;
.super Lcom/android/systemui/qs/QSTile;
.source "ExpandedDesktopTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/ExpandedDesktopTile$ExpandedDesktopObserver;
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
.field private mExpandedDesktopState:I

.field private mListening:Z

.field private mObserver:Lcom/android/systemui/qs/tiles/ExpandedDesktopTile$ExpandedDesktopObserver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->getExpandedDesktopState(Landroid/content/ContentResolver;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->mExpandedDesktopState:I

    new-instance v0, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile$ExpandedDesktopObserver;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile$ExpandedDesktopObserver;-><init>(Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->mObserver:Lcom/android/systemui/qs/tiles/ExpandedDesktopTile$ExpandedDesktopObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->refreshState()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->mExpandedDesktopState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;Landroid/content/ContentResolver;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->getExpandedDesktopState(Landroid/content/ContentResolver;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private enableForAll()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->mExpandedDesktopState:I

    const-string v0, "immersive.full=*"

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->writeValue(Ljava/lang/String;)V

    return-void
.end method

.method private getExpandedDesktopState(Landroid/content/ContentResolver;)I
    .locals 2

    const-string v1, "policy_control"

    invoke-static {p1, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "immersive.full=*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private userConfigurableSettings()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->mExpandedDesktopState:I

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->writeValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/WindowManagerPolicyControl;->reloadFromSetting(Landroid/content/Context;)V

    return-void
.end method

.method private writeValue(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "policy_control"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public handleClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->toggleState()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->refreshState()V

    return-void
.end method

.method public handleLongClick()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$ExpandedDesktopSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$ExpandedDesktopSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    iget v0, p0, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->mExpandedDesktopState:I

    if-ne v0, v1, :cond_0

    const v0, 0x7f0200b6

    iput v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->iconId:I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->mContext:Landroid/content/Context;

    const v1, 0x7f090044

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0200b7

    iput v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->iconId:I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->mContext:Landroid/content/Context;

    const v1, 0x7f090045

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    goto :goto_0
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

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

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->mListening:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->mObserver:Lcom/android/systemui/qs/tiles/ExpandedDesktopTile$ExpandedDesktopObserver;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile$ExpandedDesktopObserver;->startObserving()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->mObserver:Lcom/android/systemui/qs/tiles/ExpandedDesktopTile$ExpandedDesktopObserver;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile$ExpandedDesktopObserver;->endObserving()V

    goto :goto_0
.end method

.method protected toggleState()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->mExpandedDesktopState:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->userConfigurableSettings()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;->enableForAll()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
