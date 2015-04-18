.class public Lcom/android/settings/bliss/AmbientSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AmbientSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/bliss/sensor/ShakeSensorManager$ShakeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAccValue:I

.field private mDialog:Landroid/app/AlertDialog;

.field private mDozeListMode:Landroid/preference/ListPreference;

.field private mDozeOverwritePreference:Landroid/preference/SwitchPreference;

.field private mDozePreference:Landroid/preference/SwitchPreference;

.field private mDozePulseIn:Landroid/preference/ListPreference;

.field private mDozePulseOut:Landroid/preference/ListPreference;

.field private mDozePulseVisible:Landroid/preference/ListPreference;

.field private mDozeShakeThreshold:Landroid/preference/ListPreference;

.field private mDozeTimeMode:Landroid/preference/SwitchPreference;

.field private mOldAccValue:I

.field private mShakeFoundButton:Landroid/widget/Button;

.field private mShakeSensorManager:Lcom/android/settings/bliss/sensor/ShakeSensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/bliss/AmbientSettings$5;

    invoke-direct {v0}, Lcom/android/settings/bliss/AmbientSettings$5;-><init>()V

    sput-object v0, Lcom/android/settings/bliss/AmbientSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bliss/AmbientSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bliss/AmbientSettings;->startAcctest()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/bliss/AmbientSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bliss/AmbientSettings;->stopAcctest()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/bliss/AmbientSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bliss/AmbientSettings;->revertAcctest()V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/settings/bliss/AmbientSettings;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/settings/bliss/AmbientSettings;->isAccelerometerAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private appliedAccTest()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "doze_shake_acc_threshold"

    iget v3, p0, Lcom/android/settings/bliss/AmbientSettings;->mAccValue:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozeShakeThreshold:Landroid/preference/ListPreference;

    iget v2, p0, Lcom/android/settings/bliss/AmbientSettings;->mAccValue:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozeShakeThreshold:Landroid/preference/ListPreference;

    iget v2, p0, Lcom/android/settings/bliss/AmbientSettings;->mAccValue:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozeShakeThreshold:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozeShakeThreshold:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private enableShakeThreshold(Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "doze_overwrite_value"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozeShakeThreshold:Landroid/preference/ListPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozeShakeThreshold:Landroid/preference/ListPreference;

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private enabledTimeMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozeTimeMode:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozeTimeMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private static isAccelerometerAvailable(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static isDozeAvailable(Landroid/content/Context;)Z
    .locals 3

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_1

    const-string v1, "debug.doze.component"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10400e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private revertAcctest()V
    .locals 2

    iget v0, p0, Lcom/android/settings/bliss/AmbientSettings;->mOldAccValue:I

    iput v0, p0, Lcom/android/settings/bliss/AmbientSettings;->mAccValue:I

    iget-object v0, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozeShakeThreshold:Landroid/preference/ListPreference;

    iget v1, p0, Lcom/android/settings/bliss/AmbientSettings;->mOldAccValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bliss/AmbientSettings;->mShakeSensorManager:Lcom/android/settings/bliss/sensor/ShakeSensorManager;

    invoke-virtual {v0}, Lcom/android/settings/bliss/sensor/ShakeSensorManager;->disable()V

    return-void
.end method

.method private showAccDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0909f1    # type="string" name="doze_shake_mode_title"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0909f3    # type="string" name="doze_shake_mode_test_summary"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090027    # type="string" name="yes"

    new-instance v2, Lcom/android/settings/bliss/AmbientSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/bliss/AmbientSettings$1;-><init>(Lcom/android/settings/bliss/AmbientSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090028    # type="string" name="no"

    new-instance v2, Lcom/android/settings/bliss/AmbientSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/bliss/AmbientSettings$2;-><init>(Lcom/android/settings/bliss/AmbientSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bliss/AmbientSettings;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/settings/bliss/AmbientSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startAcctest()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/bliss/AmbientSettings;->mShakeSensorManager:Lcom/android/settings/bliss/sensor/ShakeSensorManager;

    iget v2, p0, Lcom/android/settings/bliss/AmbientSettings;->mAccValue:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/settings/bliss/sensor/ShakeSensorManager;->enable(F)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0909f1    # type="string" name="doze_shake_mode_title"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0909f5    # type="string" name="doze_shake_test"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090027    # type="string" name="yes"

    new-instance v2, Lcom/android/settings/bliss/AmbientSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/bliss/AmbientSettings$3;-><init>(Lcom/android/settings/bliss/AmbientSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f09011b    # type="string" name="cancel"

    new-instance v2, Lcom/android/settings/bliss/AmbientSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/bliss/AmbientSettings$4;-><init>(Lcom/android/settings/bliss/AmbientSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bliss/AmbientSettings;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/settings/bliss/AmbientSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v1, p0, Lcom/android/settings/bliss/AmbientSettings;->mDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bliss/AmbientSettings;->mShakeFoundButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/bliss/AmbientSettings;->mShakeFoundButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bliss/AmbientSettings;->mShakeFoundButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private stopAcctest()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/bliss/AmbientSettings;->appliedAccTest()V

    iget-object v0, p0, Lcom/android/settings/bliss/AmbientSettings;->mShakeSensorManager:Lcom/android/settings/bliss/sensor/ShakeSensorManager;

    invoke-virtual {v0}, Lcom/android/settings/bliss/sensor/ShakeSensorManager;->disable()V

    return-void
.end method

.method private updateDozeListMode()V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "doze_pocket_mode"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2

    move v2, v5

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "doze_shake_mode"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_3

    move v4, v5

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "doze_pulse_on_notifications"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_4

    move v3, v5

    :goto_2
    const/4 v1, 0x6

    if-eqz v2, :cond_5

    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    const/4 v1, 0x1

    invoke-direct {p0, v5}, Lcom/android/settings/bliss/AmbientSettings;->enableShakeThreshold(Z)V

    :cond_0
    :goto_3
    invoke-direct {p0, v2}, Lcom/android/settings/bliss/AmbientSettings;->enabledTimeMode(Z)V

    iget-object v5, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozeListMode:Landroid/preference/ListPreference;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozeListMode:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozeListMode:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozeListMode:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozeListMode:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    move v2, v6

    goto :goto_0

    :cond_3
    move v4, v6

    goto :goto_1

    :cond_4
    move v3, v6

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    if-eqz v4, :cond_6

    if-nez v3, :cond_6

    const/4 v1, 0x2

    invoke-direct {p0, v5}, Lcom/android/settings/bliss/AmbientSettings;->enableShakeThreshold(Z)V

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_7

    if-nez v4, :cond_7

    if-eqz v3, :cond_7

    const/4 v1, 0x3

    invoke-direct {p0, v6}, Lcom/android/settings/bliss/AmbientSettings;->enableShakeThreshold(Z)V

    goto :goto_3

    :cond_7
    if-eqz v2, :cond_8

    if-nez v4, :cond_8

    if-nez v3, :cond_8

    const/4 v1, 0x4

    invoke-direct {p0, v6}, Lcom/android/settings/bliss/AmbientSettings;->enableShakeThreshold(Z)V

    goto :goto_3

    :cond_8
    if-nez v2, :cond_9

    if-eqz v4, :cond_9

    if-eqz v3, :cond_9

    const/4 v1, 0x5

    invoke-direct {p0, v5}, Lcom/android/settings/bliss/AmbientSettings;->enableShakeThreshold(Z)V

    goto :goto_3

    :cond_9
    if-nez v2, :cond_0

    if-nez v4, :cond_0

    if-eqz v3, :cond_0

    const/4 v1, 0x6

    invoke-direct {p0, v6}, Lcom/android/settings/bliss/AmbientSettings;->enableShakeThreshold(Z)V

    goto :goto_3
.end method

.method private updateDozeListModeValue(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    invoke-direct {p0, v2}, Lcom/android/settings/bliss/AmbientSettings;->enableShakeThreshold(Z)V

    invoke-direct {p0, v2}, Lcom/android/settings/bliss/AmbientSettings;->enabledTimeMode(Z)V

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_pocket_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_shake_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_pulse_on_notifications"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-direct {p0, v2}, Lcom/android/settings/bliss/AmbientSettings;->enableShakeThreshold(Z)V

    invoke-direct {p0, v2}, Lcom/android/settings/bliss/AmbientSettings;->enabledTimeMode(Z)V

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_pocket_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_shake_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_pulse_on_notifications"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    invoke-direct {p0, v3}, Lcom/android/settings/bliss/AmbientSettings;->enableShakeThreshold(Z)V

    invoke-direct {p0, v2}, Lcom/android/settings/bliss/AmbientSettings;->enabledTimeMode(Z)V

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_pocket_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_shake_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_pulse_on_notifications"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    invoke-direct {p0, v3}, Lcom/android/settings/bliss/AmbientSettings;->enableShakeThreshold(Z)V

    invoke-direct {p0, v2}, Lcom/android/settings/bliss/AmbientSettings;->enabledTimeMode(Z)V

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_pocket_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_shake_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_pulse_on_notifications"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    invoke-direct {p0, v2}, Lcom/android/settings/bliss/AmbientSettings;->enableShakeThreshold(Z)V

    invoke-direct {p0, v3}, Lcom/android/settings/bliss/AmbientSettings;->enabledTimeMode(Z)V

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_pocket_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_shake_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_pulse_on_notifications"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    invoke-direct {p0, v3}, Lcom/android/settings/bliss/AmbientSettings;->enableShakeThreshold(Z)V

    invoke-direct {p0, v3}, Lcom/android/settings/bliss/AmbientSettings;->enabledTimeMode(Z)V

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_pocket_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_shake_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_pulse_on_notifications"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method private updateDozeOptions()V
    .locals 9

    const/16 v8, 0x3e8

    const/4 v7, -0x1

    iget-object v4, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePulseIn:Landroid/preference/ListPreference;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "doze_pulse_duration_in"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v4, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePulseIn:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePulseIn:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v7, :cond_0

    iget-object v4, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePulseIn:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePulseIn:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v4, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePulseVisible:Landroid/preference/ListPreference;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "doze_pulse_duration_visible"

    const/16 v6, 0xbb8

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePulseVisible:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePulseVisible:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v7, :cond_1

    iget-object v4, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePulseVisible:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePulseVisible:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v4, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePulseOut:Landroid/preference/ListPreference;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "doze_pulse_duration_out"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v4, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePulseOut:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePulseOut:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v7, :cond_2

    iget-object v4, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePulseOut:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePulseOut:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v4, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozeShakeThreshold:Landroid/preference/ListPreference;

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "doze_shake_acc_threshold"

    const/16 v6, 0xa

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/bliss/AmbientSettings;->mAccValue:I

    iget-object v4, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozeShakeThreshold:Landroid/preference/ListPreference;

    iget v5, p0, Lcom/android/settings/bliss/AmbientSettings;->mAccValue:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozeShakeThreshold:Landroid/preference/ListPreference;

    iget v5, p0, Lcom/android/settings/bliss/AmbientSettings;->mAccValue:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v7, :cond_3

    iget-object v4, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozeShakeThreshold:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozeShakeThreshold:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private updateState()V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "doze_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozeTimeMode:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "doze_time_mode"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozeTimeMode:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozeOverwritePreference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "doze_overwrite_value"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozeOverwritePreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_5

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_2
    return-void

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f060051    # type="xml" name="bliss_ambient_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/bliss/AmbientSettings;->addPreferencesFromResource(I)V

    const-string v1, "doze"

    invoke-virtual {p0, v1}, Lcom/android/settings/bliss/AmbientSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePreference:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "doze_overwrite_value"

    invoke-virtual {p0, v1}, Lcom/android/settings/bliss/AmbientSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozeOverwritePreference:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozeOverwritePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "doze_pulse_in"

    invoke-virtual {p0, v1}, Lcom/android/settings/bliss/AmbientSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePulseIn:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePulseIn:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "doze_pulse_visible"

    invoke-virtual {p0, v1}, Lcom/android/settings/bliss/AmbientSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePulseVisible:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePulseVisible:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "doze_pulse_out"

    invoke-virtual {p0, v1}, Lcom/android/settings/bliss/AmbientSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePulseOut:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePulseOut:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {v0}, Lcom/android/settings/bliss/AmbientSettings;->isAccelerometerAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "doze_list_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings/bliss/AmbientSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozeListMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozeListMode:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "doze_time_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings/bliss/AmbientSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozeTimeMode:Landroid/preference/SwitchPreference;

    const-string v1, "doze_shake_threshold"

    invoke-virtual {p0, v1}, Lcom/android/settings/bliss/AmbientSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozeShakeThreshold:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozeShakeThreshold:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "doze_pulse_on_notifications"

    invoke-virtual {p0, v1}, Lcom/android/settings/bliss/AmbientSettings;->removePreference(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/bliss/AmbientSettings;->updateDozeListMode()V

    invoke-direct {p0}, Lcom/android/settings/bliss/AmbientSettings;->updateDozeOptions()V

    new-instance v1, Lcom/android/settings/bliss/sensor/ShakeSensorManager;

    invoke-direct {v1, v0, p0}, Lcom/android/settings/bliss/sensor/ShakeSensorManager;-><init>(Landroid/content/Context;Lcom/android/settings/bliss/sensor/ShakeSensorManager$ShakeListener;)V

    iput-object v1, p0, Lcom/android/settings/bliss/AmbientSettings;->mShakeSensorManager:Lcom/android/settings/bliss/sensor/ShakeSensorManager;

    return-void

    :cond_0
    const-string v1, "doze_list_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings/bliss/AmbientSettings;->removePreference(Ljava/lang/String;)V

    const-string v1, "doze_time_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings/bliss/AmbientSettings;->removePreference(Ljava/lang/String;)V

    const-string v1, "doze_shake_threshold"

    invoke-virtual {p0, v1}, Lcom/android/settings/bliss/AmbientSettings;->removePreference(Ljava/lang/String;)V

    const-string v1, "doze_shake_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/bliss/AmbientSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/bliss/AmbientSettings;->mShakeSensorManager:Lcom/android/settings/bliss/sensor/ShakeSensorManager;

    invoke-virtual {v0}, Lcom/android/settings/bliss/sensor/ShakeSensorManager;->disable()V

    iget-object v0, p0, Lcom/android/settings/bliss/AmbientSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bliss/AmbientSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12

    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-ne p1, v8, :cond_0

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "doze_enabled"

    if-eqz v7, :cond_6

    move v8, v9

    :goto_0
    invoke-static {v10, v11, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object v8, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePulseIn:Landroid/preference/ListPreference;

    if-ne p1, v8, :cond_1

    move-object v8, p2

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v10, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePulseIn:Landroid/preference/ListPreference;

    move-object v8, p2

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    iget-object v8, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePulseIn:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePulseIn:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v10

    aget-object v10, v10, v5

    invoke-virtual {v8, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "doze_pulse_duration_in"

    invoke-static {v8, v10, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    iget-object v8, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePulseVisible:Landroid/preference/ListPreference;

    if-ne p1, v8, :cond_2

    move-object v8, p2

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v10, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePulseVisible:Landroid/preference/ListPreference;

    move-object v8, p2

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    iget-object v8, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePulseVisible:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePulseVisible:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v10

    aget-object v10, v10, v5

    invoke-virtual {v8, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "doze_pulse_duration_visible"

    invoke-static {v8, v10, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    iget-object v8, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePulseOut:Landroid/preference/ListPreference;

    if-ne p1, v8, :cond_3

    move-object v8, p2

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v10, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePulseOut:Landroid/preference/ListPreference;

    move-object v8, p2

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    iget-object v8, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePulseOut:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozePulseOut:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v10

    aget-object v10, v10, v5

    invoke-virtual {v8, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "doze_pulse_duration_out"

    invoke-static {v8, v10, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    iget-object v8, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozeShakeThreshold:Landroid/preference/ListPreference;

    if-ne p1, v8, :cond_4

    move-object v8, p2

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v8, p0, Lcom/android/settings/bliss/AmbientSettings;->mAccValue:I

    if-eq v0, v8, :cond_4

    iget v8, p0, Lcom/android/settings/bliss/AmbientSettings;->mAccValue:I

    iput v8, p0, Lcom/android/settings/bliss/AmbientSettings;->mOldAccValue:I

    iput v0, p0, Lcom/android/settings/bliss/AmbientSettings;->mAccValue:I

    invoke-direct {p0}, Lcom/android/settings/bliss/AmbientSettings;->showAccDialog()V

    :cond_4
    iget-object v8, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozeListMode:Landroid/preference/ListPreference;

    if-ne p1, v8, :cond_5

    move-object v8, p2

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/bliss/AmbientSettings;->updateDozeListModeValue(I)V

    iget-object v8, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozeListMode:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v8, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    iget-object v8, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozeListMode:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings/bliss/AmbientSettings;->mDozeListMode:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v10

    aget-object v10, v10, v5

    invoke-virtual {v8, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    return v9

    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    const-string v0, "doze_overwrite_value"

    invoke-virtual {p0, v0}, Lcom/android/settings/bliss/AmbientSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/bliss/AmbientSettings;->updateDozeListMode()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/bliss/AmbientSettings;->updateState()V

    invoke-direct {p0}, Lcom/android/settings/bliss/AmbientSettings;->updateDozeOptions()V

    invoke-direct {p0}, Lcom/android/settings/bliss/AmbientSettings;->updateDozeListMode()V

    return-void
.end method

.method public declared-synchronized onShake()V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0909f6    # type="string" name="doze_shake_it"

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/bliss/AmbientSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0909f4    # type="string" name="doze_shake_mode_test_result"

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/bliss/AmbientSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/bliss/AmbientSettings;->mDialog:Landroid/app/AlertDialog;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    if-eqz v3, :cond_0

    const v4, 0x7f090028    # type="string" name="no"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    :cond_0
    iget-object v4, p0, Lcom/android/settings/bliss/AmbientSettings;->mShakeFoundButton:Landroid/widget/Button;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/bliss/AmbientSettings;->mShakeFoundButton:Landroid/widget/Button;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    iget-object v4, p0, Lcom/android/settings/bliss/AmbientSettings;->mShakeSensorManager:Lcom/android/settings/bliss/sensor/ShakeSensorManager;

    invoke-virtual {v4}, Lcom/android/settings/bliss/sensor/ShakeSensorManager;->disable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
