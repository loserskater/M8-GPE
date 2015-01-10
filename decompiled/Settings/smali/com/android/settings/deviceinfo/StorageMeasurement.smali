.class public Lcom/android/settings/deviceinfo/StorageMeasurement;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;,
        Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;,
        Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;,
        Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;,
        Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field static final LOGV:Z

.field private static sInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/storage/StorageVolume;",
            "Lcom/android/settings/deviceinfo/StorageMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMeasureMediaTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAvailSize:J

.field mFileInfoForMisc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

.field private final mIsInternal:Z

.field private final mIsPrimary:Z

.field private volatile mReceiver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalSize:J

.field private final mVolume:Landroid/os/storage/StorageVolume;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    const-string v0, "StorageMeasurement"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->LOGV:Z

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v2, v0, v1

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v1, v0, v3

    const/4 v1, 0x3

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Android"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->sMeasureMediaTypes:Ljava/util/Set;

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/os/storage/StorageVolume;

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsInternal:Z

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v2

    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsPrimary:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MemoryMeasurement"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;-><init>(Lcom/android/settings/deviceinfo/StorageMeasurement;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/util/SparseLongArray;IJ)V
    .locals 0
    .param p0    # Landroid/util/SparseLongArray;
    .param p1    # I
    .param p2    # J

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    return-void
.end method

.method static synthetic access$1000()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->sMeasureMediaTypes:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    .locals 2
    .param p0    # Lcom/android/internal/app/IMediaContainerService;
    .param p1    # Ljava/io/File;

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/settings/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    .locals 2
    .param p0    # Lcom/android/settings/deviceinfo/StorageMeasurement;
    .param p1    # Lcom/android/internal/app/IMediaContainerService;
    .param p2    # Ljava/io/File;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->measureMisc(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/StorageMeasurement;Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 0
    .param p0    # Lcom/android/settings/deviceinfo/StorageMeasurement;
    .param p1    # Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->sendExactUpdate(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;
    .locals 1
    .param p0    # Lcom/android/settings/deviceinfo/StorageMeasurement;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/StorageMeasurement;)J
    .locals 2
    .param p0    # Lcom/android/settings/deviceinfo/StorageMeasurement;

    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .locals 1
    .param p0    # Lcom/android/settings/deviceinfo/StorageMeasurement;
    .param p1    # J

    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/StorageMeasurement;)J
    .locals 2
    .param p0    # Lcom/android/settings/deviceinfo/StorageMeasurement;

    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mAvailSize:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .locals 1
    .param p0    # Lcom/android/settings/deviceinfo/StorageMeasurement;
    .param p1    # J

    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mAvailSize:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/settings/deviceinfo/StorageMeasurement;)V
    .locals 0
    .param p0    # Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->sendInternalApproximateUpdate()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z
    .locals 1
    .param p0    # Lcom/android/settings/deviceinfo/StorageMeasurement;

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsInternal:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z
    .locals 1
    .param p0    # Lcom/android/settings/deviceinfo/StorageMeasurement;

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsPrimary:Z

    return v0
.end method

.method private static addValue(Landroid/util/SparseLongArray;IJ)V
    .locals 2
    .param p0    # Landroid/util/SparseLongArray;
    .param p1    # I
    .param p2    # J

    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    return-void
.end method

.method private static getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    .locals 6
    .param p0    # Lcom/android/internal/app/IMediaContainerService;
    .param p1    # Ljava/io/File;

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/android/internal/app/IMediaContainerService;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v2

    const-string v1, "StorageMeasurement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDirectorySize("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    const-string v1, "StorageMeasurement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not read memory from default container service for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings/deviceinfo/StorageMeasurement;
    .locals 3
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/os/storage/StorageVolume;

    sget-object v2, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageMeasurement;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/deviceinfo/StorageMeasurement;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    sget-object v1, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private measureMisc(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    .locals 24
    .param p1    # Lcom/android/internal/app/IMediaContainerService;
    .param p2    # Ljava/io/File;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v18

    if-nez v18, :cond_0

    const-wide/16 v22, 0x0

    :goto_0
    return-wide v22

    :cond_0
    const-wide/16 v6, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v14, v18

    array-length v0, v14

    move/from16 v20, v0

    const/16 v19, 0x0

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    aget-object v15, v14, v19

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    sget-object v2, Lcom/android/settings/deviceinfo/StorageMeasurement;->sMeasureMediaTypes:Ljava/util/Set;

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v15}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    new-instance v2, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    const-wide/16 v12, 0x1

    add-long v16, v6, v12

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long v22, v22, v4

    move-wide/from16 v6, v16

    goto :goto_2

    :cond_3
    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    new-instance v8, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    const-wide/16 v12, 0x1

    add-long v16, v6, v12

    move-object v9, v3

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long v22, v22, v10

    move-wide/from16 v6, v16

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0
.end method

.method private sendExactUpdate(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 3
    .param p1    # Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    sget-boolean v1, Lcom/android/settings/deviceinfo/StorageMeasurement;->LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "StorageMeasurement"

    const-string v2, "measurements dropped because receiver is null! wasted effort"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {v0, p0, p1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;->updateDetails(Lcom/android/settings/deviceinfo/StorageMeasurement;Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto :goto_1
.end method

.method private sendInternalApproximateUpdate()V
    .locals 6

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mAvailSize:J

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;->updateApproximate(Lcom/android/settings/deviceinfo/StorageMeasurement;JJ)V

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public invalidate()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public measure()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setReceiver(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V
    .locals 1
    .param p1    # Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method
