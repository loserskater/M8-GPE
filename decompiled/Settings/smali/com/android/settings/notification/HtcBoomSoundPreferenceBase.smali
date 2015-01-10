.class public abstract Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;
.super Landroid/preference/SwitchPreference;
.source "HtcBoomSoundPreferenceBase.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final DEBUG:Z

.field protected mActivity:Landroid/app/Activity;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNonUiHandler:Landroid/os/Handler;

.field mNonUiThread:Landroid/os/HandlerThread;

.field private mPermission:Ljava/lang/String;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->DEBUG:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->mPermission:Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->mIntentFilter:Landroid/content/IntentFilter;

    new-instance v0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$7;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$7;-><init>(Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;)V

    iput-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->createHandlers()V

    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->setIntentFilter(Landroid/content/IntentFilter;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->acquirePermission()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->mPermission:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;Z)Z
    .locals 1
    .param p0    # Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->toggle(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;

    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->mNonUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createHandlers()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->mNonUiThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->mNonUiThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->mNonUiThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->mNonUiHandler:Landroid/os/Handler;

    return-void
.end method

.method private final register(Landroid/app/Activity;)V
    .locals 5
    .param p1    # Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->mPermission:Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->TAG:Ljava/lang/String;

    const-string v3, "registerReceiver fail"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private toggle(Z)Z
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->mNonUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$3;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$3;-><init>(Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method

.method private final unregister(Landroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/app/Activity;

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->TAG:Ljava/lang/String;

    const-string v2, "unregisterReceiver fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected acquirePermission()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;

    iput-object p1, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->setChecked(Z)V

    new-instance v0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$1;-><init>(Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->mNonUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$2;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$2;-><init>(Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onClick()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->mNonUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$6;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$6;-><init>(Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->mNonUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$10;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$10;-><init>(Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->mNonUiThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method

.method public onDestroyInBackground(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;

    return-void
.end method

.method protected abstract onGetDefaultState()Lcom/android/settings/notification/HtcBoomSoundState;
.end method

.method protected onHandleStateChangedInBackground(Lcom/android/settings/notification/HtcBoomSoundState;)V
    .locals 0
    .param p1    # Lcom/android/settings/notification/HtcBoomSoundState;

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->mNonUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$5;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$5;-><init>(Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->unregister(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->TAG:Ljava/lang/String;

    const-string v1, "Need call init before call onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPauseInBackground(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;

    return-void
.end method

.method protected onReceiveInBackground(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->mNonUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$4;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$4;-><init>(Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->register(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->TAG:Ljava/lang/String;

    const-string v1, "Need call init before call onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;

    return-void
.end method

.method public abstract onToggleChangeInBackground(Z)V
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1    # Z

    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method protected setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 0
    .param p1    # Landroid/content/IntentFilter;

    return-void
.end method

.method public final setWidgetEnabled(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$8;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$8;-><init>(Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected setWidgetStatus(Ljava/lang/CharSequence;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # Ljava/lang/Boolean;
    .param p3    # Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$9;-><init>(Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;Ljava/lang/CharSequence;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
