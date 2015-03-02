.class public Lcom/android/systemui/qs/tiles/LockscreenToggleTile;
.super Lcom/android/systemui/qs/QSTile;
.source "LockscreenToggleTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;"
    }
.end annotation


# instance fields
.field private mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mKeyguardBound:Z

.field private mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private mPersistedState:Z

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    new-instance v1, Lcom/android/systemui/qs/tiles/LockscreenToggleTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/LockscreenToggleTile$1;-><init>(Lcom/android/systemui/qs/tiles/LockscreenToggleTile;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mContext:Landroid/content/Context;

    const-string v2, "quicksettings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/SystemUIApplication;

    const-class v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1, v2}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->getPersistedState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mPersistedState:Z

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.internal.action.KEYGUARD_SERVICE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/LockscreenToggleTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mKeyguardBound:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/LockscreenToggleTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->applyLockscreenState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/LockscreenToggleTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->refreshState()V

    return-void
.end method

.method private applyLockscreenState()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mKeyguardBound:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mPersistedState:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setKeyguardEnabledInternal(Z)V

    goto :goto_0
.end method

.method private getPersistedState()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "lockscreen_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private setPersistedState(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lockscreen_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mPersistedState:Z

    return-void
.end method


# virtual methods
.method protected handleClick()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mPersistedState:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->setPersistedState(Z)V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->applyLockscreenState()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->refreshState()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->lockscreenEnforcedByDevicePolicy()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mPersistedState:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getKeyguardEnabledInternal()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v0, v3

    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mKeyguardBound:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_1
    :goto_1
    iput-boolean v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_4

    const v2, 0x7f0b022c

    :goto_2
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    if-eqz v0, :cond_5

    const v2, 0x7f02015b

    :goto_3
    iput v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->iconId:I

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    const v2, 0x7f0b0201

    goto :goto_2

    :cond_5
    const v2, 0x7f02015a

    goto :goto_3
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

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

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public onKeyguardChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->refreshState()V

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->addCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->removeCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    goto :goto_0
.end method
