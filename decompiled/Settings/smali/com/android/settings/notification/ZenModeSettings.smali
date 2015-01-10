.class public Lcom/android/settings/notification/ZenModeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ZenModeSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;,
        Lcom/android/settings/notification/ZenModeSettings$SettingsObserver;,
        Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;
    }
.end annotation


# static fields
.field private static final DAY_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAutomationCategory:Landroid/preference/PreferenceCategory;

.field private mCalls:Landroid/preference/SwitchPreference;

.field private mConditionProviders:Landroid/preference/Preference;

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private mContext:Landroid/content/Context;

.field private mDays:Landroid/preference/Preference;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDisableListeners:Z

.field private mEnd:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

.field private mEntry:Landroid/preference/Preference;

.field private mEvents:Landroid/preference/SwitchPreference;

.field private final mHandler:Landroid/os/Handler;

.field private mMessages:Landroid/preference/SwitchPreference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private final mSettingsObserver:Lcom/android/settings/notification/ZenModeSettings$SettingsObserver;

.field private mStarred:Lcom/android/settings/notification/DropDownPreference;

.field private mStart:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/settings/notification/ZenModeSettings$1;

    const/4 v1, 0x1

    const-string v2, "zen_mode"

    const-string v3, "zen_mode"

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/ZenModeSettings$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/notification/ZenModeSettings;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v0, Lcom/android/settings/notification/ZenModeSettings$14;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenModeSettings$14;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ZenModeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/notification/ZenModeSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenModeSettings$SettingsObserver;-><init>(Lcom/android/settings/notification/ZenModeSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mSettingsObserver:Lcom/android/settings/notification/ZenModeSettings$SettingsObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/ZenModeSettings;)Z
    .locals 1
    .param p0    # Lcom/android/settings/notification/ZenModeSettings;

    iget-boolean v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mDisableListeners:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/ZenModeSettings;)Landroid/service/notification/ZenModeConfig;
    .locals 1
    .param p0    # Lcom/android/settings/notification/ZenModeSettings;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/notification/ZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/notification/ZenModeSettings;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/notification/ZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/notification/ZenModeSettings;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200()Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;
    .locals 1

    sget-object v0, Lcom/android/settings/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/notification/ZenModeSettings;)V
    .locals 0
    .param p0    # Lcom/android/settings/notification/ZenModeSettings;

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateZenModeConfig()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/notification/ZenModeSettings;Landroid/service/notification/ZenModeConfig;)Z
    .locals 1
    .param p0    # Lcom/android/settings/notification/ZenModeSettings;
    .param p1    # Landroid/service/notification/ZenModeConfig;

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeSettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/ZenModeSettings;)V
    .locals 0
    .param p0    # Lcom/android/settings/notification/ZenModeSettings;

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateDays()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/notification/ZenModeSettings;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/settings/notification/ZenModeSettings;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/notification/ZenModeSettings;)V
    .locals 0
    .param p0    # Lcom/android/settings/notification/ZenModeSettings;

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->refreshAutomationSection()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/settings/notification/ZenModeSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0    # Lcom/android/settings/notification/ZenModeSettings;
    .param p1    # Landroid/app/AlertDialog;

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettings;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$700(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/notification/ZenModeSettings;->allKeyTitles(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/notification/ZenModeSettings;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/settings/notification/ZenModeSettings;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/notification/ZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/notification/ZenModeSettings;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private static allKeyTitles(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 3
    .param p0    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const v1, 0x7f080952

    const-string v2, "important"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f08095a

    const-string v2, "phone_calls"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x7f080920

    const-string v2, "zen_mode"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    const v1, 0x7f08095b

    const-string v2, "messages"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x7f08095f

    const-string v2, "starred"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x7f080960

    const-string v2, "events"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x7f080961

    const-string v2, "alarm_info"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x7f080953

    const-string v2, "downtime"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x7f080954

    const-string v2, "days"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x7f080966

    const-string v2, "start_time"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x7f080967

    const-string v2, "end_time"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x7f080956

    const-string v2, "automation"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x7f080941

    const-string v2, "manage_condition_providers"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0

    :cond_0
    const v1, 0x7f080921

    const-string v2, "zen_mode"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private getEntryConditionSummary()Ljava/lang/String;
    .locals 9

    const/4 v6, 0x0

    const-string v7, "notification"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v4

    :try_start_0
    invoke-interface {v4}, Landroid/app/INotificationManager;->getAutomaticZenModeConditions()[Landroid/service/notification/Condition;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v7, v0

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    const v7, 0x7f080958

    invoke-virtual {p0, v7}, Lcom/android/settings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_1
    array-length v7, v0

    if-ge v3, v7, :cond_3

    if-lez v3, :cond_2

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    aget-object v7, v0, v3

    iget-object v7, v7, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v7, "ZenModeSettings"

    const-string v8, "Error calling getAutomaticZenModeConditions"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 4

    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string v2, "ZenModeSettings"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig;-><init>()V

    goto :goto_0
.end method

.method private refreshAutomationSection()V
    .locals 9

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings;->mConditionProviders:Landroid/preference/Preference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-static {v3}, Lcom/android/settings/notification/ConditionProviderSettings;->getProviderCount(Landroid/content/pm/PackageManager;)I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings;->mAutomationCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/notification/ConditionProviderSettings;->getEnabledProviderCount(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings;->mConditionProviders:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080942

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->getEntryConditionSummary()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_2

    if-nez v0, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings;->mEntry:Landroid/preference/Preference;

    const v4, 0x7f080959

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings;->mConditionProviders:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0009

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings;->mEntry:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    .locals 6
    .param p1    # Landroid/service/notification/ZenModeConfig;

    const-string v3, "notification"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    const-string v3, "ZenModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saved mConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateEndSummary()V

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateStarredEnabled()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v3, "ZenModeSettings"

    const-string v4, "Error calling NoMan"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateControls()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mDisableListeners:Z

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mCalls:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mCalls:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mMessages:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mEvents:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateStarredEnabled()V

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateDays()V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mStart:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->setTime(II)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mEnd:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->setTime(II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mDisableListeners:Z

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->refreshAutomationSection()V

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateEndSummary()V

    return-void
.end method

.method private updateDays()V
    .locals 8

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v6, v6, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->tryParseDays(Ljava/lang/String;)[I

    move-result-object v2

    if-eqz v2, :cond_4

    array-length v6, v2

    if-eqz v6, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    sget-object v6, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->DAYS:[I

    array-length v6, v6

    if-ge v3, v6, :cond_3

    sget-object v6, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->DAYS:[I

    aget v1, v6, v3

    const/4 v4, 0x0

    :goto_1
    array-length v6, v2

    if-ge v4, v6, :cond_1

    aget v6, v2, v4

    if-ne v1, v6, :cond_2

    const/4 v6, 0x7

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f080958

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    sget-object v6, Lcom/android/settings/notification/ZenModeSettings;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    :goto_2
    return-void

    :cond_4
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    const v7, 0x7f080955

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    goto :goto_2
.end method

.method private updateEndSummary()V
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v4, v4, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    mul-int/lit8 v4, v4, 0x3c

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v5, v5, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    add-int v2, v4, v5

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v4, v4, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    mul-int/lit8 v4, v4, 0x3c

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v5, v5, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    add-int v0, v4, v5

    if-lt v2, v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings;->mEnd:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    if-eqz v1, :cond_0

    const v3, 0x7f080968

    :cond_0
    invoke-virtual {v4, v3}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->setSummaryFormat(I)V

    return-void

    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method private updateStarredEnabled()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/notification/DropDownPreference;->setEnabled(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateZenModeConfig()V
    .locals 4

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    const-string v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateZenModeConfig mConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateControls()V

    goto :goto_0
.end method


# virtual methods
.method protected cancelDialog(I)V
    .locals 2
    .param p1    # I

    sget-object v0, Lcom/android/settings/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;->setValueWithoutCallback(Landroid/content/Context;I)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mPM:Landroid/content/pm/PackageManager;

    const v5, 0x7f05004d

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ZenModeSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    const-string v5, "ZenModeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loaded mConfig="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/settings/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;

    invoke-virtual {v5, p0}, Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;->init(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/preference/Preference;

    move-result-object v4

    sget-object v5, Lcom/android/settings/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;

    new-instance v6, Lcom/android/settings/notification/ZenModeSettings$2;

    invoke-direct {v6, p0}, Lcom/android/settings/notification/ZenModeSettings$2;-><init>(Lcom/android/settings/notification/ZenModeSettings;)V

    invoke-virtual {v5, v6}, Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;->setCallback(Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback$Callback;)V

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    const v5, 0x7f080921

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(I)V

    :cond_0
    const-string v5, "important"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    const-string v5, "phone_calls"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mCalls:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mCalls:Landroid/preference/SwitchPreference;

    new-instance v6, Lcom/android/settings/notification/ZenModeSettings$3;

    invoke-direct {v6, p0}, Lcom/android/settings/notification/ZenModeSettings$3;-><init>(Lcom/android/settings/notification/ZenModeSettings;)V

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_0
    const-string v5, "messages"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mMessages:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mMessages:Landroid/preference/SwitchPreference;

    new-instance v6, Lcom/android/settings/notification/ZenModeSettings$4;

    invoke-direct {v6, p0}, Lcom/android/settings/notification/ZenModeSettings$4;-><init>(Lcom/android/settings/notification/ZenModeSettings;)V

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v5, "starred"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/notification/DropDownPreference;

    iput-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    const v6, 0x7f08095d

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    const v6, 0x7f08095f

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    const v6, 0x7f08095e

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    new-instance v6, Lcom/android/settings/notification/ZenModeSettings$5;

    invoke-direct {v6, p0}, Lcom/android/settings/notification/ZenModeSettings$5;-><init>(Lcom/android/settings/notification/ZenModeSettings;)V

    invoke-virtual {v5, v6}, Lcom/android/settings/notification/DropDownPreference;->setCallback(Lcom/android/settings/notification/DropDownPreference$Callback;)V

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    const-string v5, "events"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mEvents:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mEvents:Landroid/preference/SwitchPreference;

    new-instance v6, Lcom/android/settings/notification/ZenModeSettings$6;

    invoke-direct {v6, p0}, Lcom/android/settings/notification/ZenModeSettings$6;-><init>(Lcom/android/settings/notification/ZenModeSettings;)V

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v5, "downtime"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    const-string v5, "days"

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    new-instance v6, Lcom/android/settings/notification/ZenModeSettings$7;

    invoke-direct {v6, p0}, Lcom/android/settings/notification/ZenModeSettings$7;-><init>(Lcom/android/settings/notification/ZenModeSettings;)V

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    new-instance v5, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v2}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mStart:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mStart:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    const-string v6, "start_time"

    invoke-virtual {v5, v6}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mStart:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    const v6, 0x7f080966

    invoke-virtual {v5, v6}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->setTitle(I)V

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mStart:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    new-instance v6, Lcom/android/settings/notification/ZenModeSettings$8;

    invoke-direct {v6, p0}, Lcom/android/settings/notification/ZenModeSettings$8;-><init>(Lcom/android/settings/notification/ZenModeSettings;)V

    invoke-virtual {v5, v6}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->setCallback(Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$Callback;)V

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mStart:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mStart:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    new-instance v5, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v2}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mEnd:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mEnd:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    const-string v6, "end_time"

    invoke-virtual {v5, v6}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mEnd:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    const v6, 0x7f080967

    invoke-virtual {v5, v6}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->setTitle(I)V

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mEnd:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    new-instance v6, Lcom/android/settings/notification/ZenModeSettings$9;

    invoke-direct {v6, p0}, Lcom/android/settings/notification/ZenModeSettings$9;-><init>(Lcom/android/settings/notification/ZenModeSettings;)V

    invoke-virtual {v5, v6}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->setCallback(Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$Callback;)V

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mEnd:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mEnd:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    const-string v5, "automation"

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mAutomationCategory:Landroid/preference/PreferenceCategory;

    const-string v5, "entry"

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mEntry:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mEntry:Landroid/preference/Preference;

    new-instance v6, Lcom/android/settings/notification/ZenModeSettings$10;

    invoke-direct {v6, p0}, Lcom/android/settings/notification/ZenModeSettings$10;-><init>(Lcom/android/settings/notification/ZenModeSettings;)V

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v5, "manage_condition_providers"

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mConditionProviders:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateControls()V

    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mCalls:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mCalls:Landroid/preference/SwitchPreference;

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mSettingsObserver:Lcom/android/settings/notification/ZenModeSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeSettings$SettingsObserver;->unregister()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateControls()V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mSettingsObserver:Lcom/android/settings/notification/ZenModeSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeSettings$SettingsObserver;->register()V

    return-void
.end method

.method protected showConditionSelection(I)V
    .locals 7
    .param p1    # I

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v3, Lcom/android/settings/notification/ZenModeConditionSelection;

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/settings/notification/ZenModeConditionSelection;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/settings/notification/ZenModeSettings$11;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/notification/ZenModeSettings$11;-><init>(Lcom/android/settings/notification/ZenModeSettings;Lcom/android/settings/notification/ZenModeConditionSelection;)V

    sget-object v4, Lcom/android/settings/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;->getValue(Landroid/content/Context;)I

    move-result v0

    new-instance v2, Landroid/widget/ScrollView;

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/android/settings/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;->getCaption(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f08011e

    invoke-virtual {v4, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f08011c

    new-instance v6, Lcom/android/settings/notification/ZenModeSettings$13;

    invoke-direct {v6, p0, v0}, Lcom/android/settings/notification/ZenModeSettings$13;-><init>(Lcom/android/settings/notification/ZenModeSettings;I)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/notification/ZenModeSettings$12;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/notification/ZenModeSettings$12;-><init>(Lcom/android/settings/notification/ZenModeSettings;I)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/notification/ZenModeSettings;->mDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
