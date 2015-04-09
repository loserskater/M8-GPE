.class public Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "StorageVolumePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;
    }
.end annotation


# instance fields
.field private mFormatPreference:Landroid/preference/Preference;

.field private mIsUsbVolume:Z

.field private mItemApps:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemCache:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemDcim:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemDownloads:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemMisc:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemMusic:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemTotal:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/deviceinfo/StorageItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field private final mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

.field private mMountTogglePreference:Landroid/preference/Preference;

.field private mReceiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

.field private final mResources:Landroid/content/res/Resources;

.field private mStorageLow:Landroid/preference/Preference;

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private mTotalSize:J

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

.field private mUsbConnected:Z

.field private mUsbFunction:Ljava/lang/String;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mVolume:Landroid/os/storage/StorageVolume;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsUsbVolume:Z

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    new-instance v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;-><init>(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$2;-><init>(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mReceiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-static {p1, p2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings/deviceinfo/StorageMeasurement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/android/settings/deviceinfo/Memory;->isUsbStorage(Landroid/os/storage/StorageVolume;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsUsbVolume:Z

    return-void

    :cond_0
    const v0, 0x7f0904c6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static buildForInternal(Landroid/content/Context;)Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    .locals 2

    new-instance v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    return-object v0
.end method

.method public static buildForPhysical(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    .locals 1

    new-instance v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    return-object v0
.end method

.method private buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;
    .locals 2

    new-instance v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUsersExcluding(Landroid/content/pm/UserInfo;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/UserInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private measure()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->invalidate()V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->measure()V

    return-void
.end method

.method private static varargs totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    const-wide/16 v4, 0x0

    move-object v0, p1

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-wide v4
.end method

.method private updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V
    .locals 6

    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-lez v1, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getOrder()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    long-to-float v2, p2

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    long-to-float v3, v4

    div-float/2addr v2, v3

    iget v3, p1, Lcom/android/settings/deviceinfo/StorageItemPreference;->color:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updatePreferencesFromState()V
    .locals 8

    const v7, 0x7f0903ab

    const v6, 0x7f0903a8

    const v3, 0x7f09000c

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const v2, 0x7f09039b

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(I)V

    :goto_1
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsUsbVolume:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f090009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f09000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :goto_3
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsbConnected:Z

    if-eqz v1, :cond_d

    const-string v1, "mtp"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ptp"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_3
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0903ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0903ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const v2, 0x7f09039a

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(I)V

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0903a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0903a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_8
    const-string v1, "unmounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "nofs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "unmountable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_9
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsUsbVolume:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f09000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    :cond_a
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0903a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_b
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsUsbVolume:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f09000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_c
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0903a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_d
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsUsbVolume:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f09000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_e
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getStorageVolume()Landroid/os/storage/StorageVolume;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method public init()V
    .locals 22

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removeAll()V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getUsersExcluding(Landroid/content/pm/UserInfo;)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_2

    const/16 v17, 0x1

    :goto_0
    new-instance v19, Lcom/android/settings/deviceinfo/UsageBarPreference;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Lcom/android/settings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    move-object/from16 v19, v0

    const/16 v20, -0x2

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/deviceinfo/UsageBarPreference;->setOrder(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    const v19, 0x7f09039c

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const v19, 0x7f09039a

    const v20, 0x7f080008

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    const v19, 0x7f09039e

    const v20, 0x7f080009

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const v19, 0x7f0903a1

    const v20, 0x7f08000b

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const v19, 0x7f0903a2

    const v20, 0x7f08000c

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const v19, 0x7f0903a0

    const v20, 0x7f08000a

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const v19, 0x7f0903a4

    const v20, 0x7f08000d

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const v19, 0x7f0903a3

    const v20, 0x7f08000e

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    const-string v20, "cache"

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v19

    if-eqz v19, :cond_3

    :cond_0
    const/16 v16, 0x1

    :goto_1
    if-eqz v16, :cond_5

    if-eqz v17, :cond_1

    new-instance v19, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;

    iget-object v0, v9, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v6, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    if-eqz v17, :cond_5

    new-instance v19, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;

    const v20, 0x7f0903c0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v6, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    const/4 v7, 0x0

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserInfo;

    add-int/lit8 v8, v7, 0x1

    rem-int/lit8 v19, v7, 0x2

    if-nez v19, :cond_4

    const v5, 0x7f08000f

    :goto_3
    new-instance v18, Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v19

    iget-object v0, v12, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    iget v0, v12, Landroid/content/pm/UserInfo;->id:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move v7, v8

    goto :goto_2

    :catch_0
    move-exception v10

    new-instance v19, Ljava/lang/RuntimeException;

    const-string v20, "Failed to get current user"

    invoke-direct/range {v19 .. v20}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_2
    const/16 v17, 0x0

    goto/16 :goto_0

    :cond_3
    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_4
    const v5, 0x7f080010

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v13

    :goto_4
    new-instance v19, Landroid/preference/Preference;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsUsbVolume:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f090009

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f09000a

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    const/4 v4, 0x1

    :goto_6
    if-eqz v4, :cond_7

    new-instance v19, Landroid/preference/Preference;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsUsbVolume:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f09000e

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f09000f

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_7
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v15

    :try_start_1
    invoke-interface {v15}, Landroid/content/pm/IPackageManager;->isStorageLow()Z

    move-result v19

    if-eqz v19, :cond_d

    new-instance v19, Landroid/preference/Preference;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setOrder(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f0903b6

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f0903b7

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_8
    :goto_8
    return-void

    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f0903a5

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f0903a6

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_5

    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_6

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f0903aa

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f0903ab

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_7

    :cond_d
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_8

    :catch_1
    move-exception v19

    goto :goto_8
.end method

.method public intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-ne p1, v3, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/settings/MediaFormat;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v3, "storage_volume"

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-ne p1, v3, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/settings/Settings$ManageApplicationsActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-ne p1, v3, :cond_3

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.app.DownloadManager.extra_sortBySize"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-ne p1, v3, :cond_4

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "audio/mp3"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-ne p1, v3, :cond_5

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-ne p1, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "storage_volume"

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public mountToggleClicked(Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCacheCleared()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    return-void
.end method

.method public onMediaScannerFinished()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->cleanUp()V

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mReceiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    return-void
.end method

.method public onStorageStateChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->init()V

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    return-void
.end method

.method public onUsbStateChanged(ZLjava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsbConnected:Z

    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    return-void
.end method

.method public updateApproximate(JJ)V
    .locals 7

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p3, p4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    sub-long v0, p1, p3

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/UsageBarPreference;->clear()V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    const/4 v3, 0x0

    long-to-float v4, v0

    long-to-float v5, p1

    div-float/2addr v4, v5

    const v5, -0x777778

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/UsageBarPreference;->commit()V

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    return-void
.end method

.method public updateDetails(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v11}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    const/4 v7, 0x1

    :goto_0
    if-nez v7, :cond_2

    :goto_1
    return-void

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v11}, Lcom/android/settings/deviceinfo/UsageBarPreference;->clear()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14, v15}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    sget-object v16, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    sget-object v16, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x2

    sget-object v16, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-static {v11, v14}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    sget-object v16, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    sget-object v16, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x2

    sget-object v16, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x3

    sget-object v16, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x4

    sget-object v16, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-static {v11, v14}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v8, v9}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    sget-object v16, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-static {v11, v14}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4, v5}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14, v15}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14, v15}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    iget v14, v10, Lcom/android/settings/deviceinfo/StorageItemPreference;->userHandle:I

    invoke-virtual {v11, v14}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v12, v13}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v11}, Lcom/android/settings/deviceinfo/UsageBarPreference;->commit()V

    goto/16 :goto_1
.end method
