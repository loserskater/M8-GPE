.class public abstract Lcom/android/settings/location/LocationSettingsBase;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LocationSettingsBase.java"


# instance fields
.field private mActive:Z

.field private mCurrentMode:I

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettingsBase;->mActive:Z

    return-void
.end method

.method private isRestricted()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string v1, "no_share_location"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/settings/location/LocationSettingsBase$1;

    invoke-direct {v0, p0}, Lcom/android/settings/location/LocationSettingsBase$1;-><init>(Lcom/android/settings/location/LocationSettingsBase;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationSettingsBase;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public abstract onModeChanged(IZ)V
.end method

.method public onPause()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/LocationSettingsBase;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettingsBase;->mActive:Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/location/LocationSettingsBase;->mActive:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.location.MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/location/LocationSettingsBase;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public refreshLocationMode()V
    .locals 4

    iget-boolean v1, p0, Lcom/android/settings/location/LocationSettingsBase;->mActive:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/location/LocationSettingsBase;->mCurrentMode:I

    const-string v1, "LocationSettingsBase"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LocationSettingsBase"

    const-string v2, "Location mode has been changed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;->isRestricted()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/location/LocationSettingsBase;->onModeChanged(IZ)V

    :cond_1
    return-void
.end method

.method public setLocationMode(I)V
    .locals 4
    .param p1    # I

    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "LocationSettingsBase"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LocationSettingsBase"

    const-string v2, "Restricted user, not setting location mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-boolean v1, p0, Lcom/android/settings/location/LocationSettingsBase;->mActive:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/location/LocationSettingsBase;->onModeChanged(IZ)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.location.MODE_CHANGING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "CURRENT_MODE"

    iget v2, p0, Lcom/android/settings/location/LocationSettingsBase;->mCurrentMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "NEW_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->refreshLocationMode()V

    goto :goto_0
.end method
