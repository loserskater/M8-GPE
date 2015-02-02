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

.field private mLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mLockscreenDisabled:Z

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    new-instance v2, Lcom/android/systemui/qs/tiles/LockscreenToggleTile$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/LockscreenToggleTile$1;-><init>(Lcom/android/systemui/qs/tiles/LockscreenToggleTile;)V

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mContext:Landroid/content/Context;

    const-string v3, "quicksettings"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->getPersistedState()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mLockscreenDisabled:Z

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.android.internal.action.KEYGUARD_SERVICE_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->updateBasedOnIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/LockscreenToggleTile;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->updateBasedOnIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private applyLockscreenState()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mKeyguardBound:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    const-class v1, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mLockscreenDisabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v1}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->refreshState()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v1}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    goto :goto_1
.end method

.method private getPersistedState()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "lockscreen_disabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private setLockscreenEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lockscreen_disabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mLockscreenDisabled:Z

    return-void
.end method

.method private updateBasedOnIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "active"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mKeyguardBound:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->applyLockscreenState()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->destroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    :cond_0
    return-void
.end method

.method protected handleClick()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mLockscreenDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->setLockscreenEnabled(Z)V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->applyLockscreenState()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->refreshState()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mLockscreenDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mKeyguardBound:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    :goto_1
    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0b020b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mKeyguardBound:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;->mLockscreenDisabled:Z

    if-eqz v1, :cond_2

    const v1, 0x7f02015a

    :goto_2
    iput v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->iconId:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    const v1, 0x7f02015b

    goto :goto_2
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
