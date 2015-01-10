.class public Lcom/android/settings/UsageAccessSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UsageAccessSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UsageAccessSettings$WarningDialogFragment;,
        Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;,
        Lcom/android/settings/UsageAccessSettings$PackageEntry;
    }
.end annotation


# static fields
.field private static final APP_OPS_OP_CODES:[I

.field private static final PM_USAGE_STATS_PERMISSION:[Ljava/lang/String;


# instance fields
.field mAppOpsManager:Landroid/app/AppOpsManager;

.field private mLastFetcherTask:Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;

.field mPackageEntryMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/UsageAccessSettings$PackageEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field mPreferenceScreen:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.PACKAGE_USAGE_STATS"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/UsageAccessSettings;->PM_USAGE_STATS_PERMISSION:[Ljava/lang/String;

    new-array v0, v3, [I

    const/16 v1, 0x2b

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/UsageAccessSettings;->APP_OPS_OP_CODES:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/UsageAccessSettings;->mPackageEntryMap:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/settings/UsageAccessSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/UsageAccessSettings$1;-><init>(Lcom/android/settings/UsageAccessSettings;)V

    iput-object v0, p0, Lcom/android/settings/UsageAccessSettings;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/UsageAccessSettings;->PM_USAGE_STATS_PERMISSION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[I
    .locals 1

    sget-object v0, Lcom/android/settings/UsageAccessSettings;->APP_OPS_OP_CODES:[I

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/UsageAccessSettings;Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;)Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;
    .locals 0
    .param p0    # Lcom/android/settings/UsageAccessSettings;
    .param p1    # Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;

    iput-object p1, p0, Lcom/android/settings/UsageAccessSettings;->mLastFetcherTask:Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/UsageAccessSettings;)V
    .locals 0
    .param p0    # Lcom/android/settings/UsageAccessSettings;

    invoke-direct {p0}, Lcom/android/settings/UsageAccessSettings;->updateInterestedApps()V

    return-void
.end method

.method static shouldIgnorePackage(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;

    const-string v0, "android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.settings"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateInterestedApps()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/UsageAccessSettings;->mLastFetcherTask:Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/UsageAccessSettings;->mLastFetcherTask:Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;

    invoke-virtual {p0}, Lcom/android/settings/UsageAccessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;-><init>(Lcom/android/settings/UsageAccessSettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/UsageAccessSettings;->mLastFetcherTask:Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;

    iget-object v0, p0, Lcom/android/settings/UsageAccessSettings;->mLastFetcherTask:Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method allowAccess(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/UsageAccessSettings;->mPackageEntryMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/UsageAccessSettings$PackageEntry;

    if-nez v0, :cond_0

    const-string v1, "UsageAccessSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to give access to package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": it does not exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/UsageAccessSettings;->setNewMode(Lcom/android/settings/UsageAccessSettings$PackageEntry;I)V

    iget-object v1, v0, Lcom/android/settings/UsageAccessSettings$PackageEntry;->preference:Landroid/preference/SwitchPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f05003e

    invoke-virtual {p0, v0}, Lcom/android/settings/UsageAccessSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/UsageAccessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/UsageAccessSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/UsageAccessSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    const-string v0, "appops"

    invoke-virtual {p0, v0}, Lcom/android/settings/UsageAccessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/UsageAccessSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/UsageAccessSettings;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    iget-object v0, p0, Lcom/android/settings/UsageAccessSettings;->mLastFetcherTask:Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/UsageAccessSettings;->mLastFetcherTask:Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/UsageAccessSettings;->mLastFetcherTask:Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/android/settings/UsageAccessSettings;->mPackageEntryMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/UsageAccessSettings$PackageEntry;

    if-nez v3, :cond_0

    const-string v6, "UsageAccessSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Preference change event for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " but that package is no longer valid."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v5

    :cond_0
    instance-of v7, p2, Ljava/lang/Boolean;

    if-nez v7, :cond_1

    const-string v6, "UsageAccessSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Preference change event for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " had non boolean value of type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    move v1, v5

    :goto_1
    iget v7, v3, Lcom/android/settings/UsageAccessSettings$PackageEntry;->appOpMode:I

    if-eq v7, v1, :cond_5

    if-eqz v1, :cond_3

    invoke-virtual {p0, v3, v1}, Lcom/android/settings/UsageAccessSettings;->setNewMode(Lcom/android/settings/UsageAccessSettings$PackageEntry;I)V

    move v5, v6

    goto :goto_0

    :cond_2
    move v1, v6

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/UsageAccessSettings;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/UsageAccessSettings;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "warning"

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v0, v4}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_4
    iget-object v6, v3, Lcom/android/settings/UsageAccessSettings$PackageEntry;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/UsageAccessSettings$WarningDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/settings/UsageAccessSettings$WarningDialogFragment;

    move-result-object v6

    const-string v7, "warning"

    invoke-virtual {v6, v0, v7}, Lcom/android/settings/UsageAccessSettings$WarningDialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    move v5, v6

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/UsageAccessSettings;->updateInterestedApps()V

    iget-object v0, p0, Lcom/android/settings/UsageAccessSettings;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings/UsageAccessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    return-void
.end method

.method setNewMode(Lcom/android/settings/UsageAccessSettings$PackageEntry;I)V
    .locals 4
    .param p1    # Lcom/android/settings/UsageAccessSettings$PackageEntry;
    .param p2    # I

    iget-object v0, p0, Lcom/android/settings/UsageAccessSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x2b

    iget-object v2, p1, Lcom/android/settings/UsageAccessSettings$PackageEntry;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p1, Lcom/android/settings/UsageAccessSettings$PackageEntry;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p2}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    iput p2, p1, Lcom/android/settings/UsageAccessSettings$PackageEntry;->appOpMode:I

    return-void
.end method
