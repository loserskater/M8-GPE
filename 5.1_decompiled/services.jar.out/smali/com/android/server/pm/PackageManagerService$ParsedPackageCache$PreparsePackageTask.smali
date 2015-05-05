.class Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreparsePackageTask"
.end annotation


# instance fields
.field private mCore:I

.field private mID:I

.field private mTotals:I

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;III)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->this$0:Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->mID:I

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->mCore:I

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->mTotals:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    :try_start_0
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->mID:I

    :goto_0
    iget v8, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->mTotals:I

    if-ge v2, v8, :cond_3

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->this$0:Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    # getter for: Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mExist:Z
    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->access$4700(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->this$0:Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    # getter for: Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstApks:Ljava/util/List;
    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->access$4800(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    iget v8, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->mCore:I

    add-int/2addr v2, v8

    goto :goto_0

    :cond_1
    invoke-static {v1}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->this$0:Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    # getter for: Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstSkips:Ljava/util/List;
    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->access$4900(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->this$0:Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    # getter for: Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstSkips:Ljava/util/List;
    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->access$4900(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->this$0:Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    # getter for: Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstSkips:Ljava/util/List;
    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->access$4900(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    const-string v8, "PackageManager"

    const-string v9, "Exception in PreparsePackageTask"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-void

    :cond_4
    :try_start_1
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->this$0:Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    # invokes: Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->getParseFlags(Ljava/lang/String;)I
    invoke-static {v8, v6}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->access$5000(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;Ljava/lang/String;)I

    move-result v3

    const/4 v8, -0x1

    if-eq v8, v3, :cond_0

    new-instance v5, Landroid/content/pm/PackageParser;

    invoke-direct {v5}, Landroid/content/pm/PackageParser;-><init>()V

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->this$0:Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    # getter for: Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mArySeparateProcesses:[Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->access$5100(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v5, v1, v3}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    :try_end_2
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_0

    :try_start_3
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->this$0:Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    # getter for: Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mCachedPackages:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->access$5200(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    invoke-virtual {v8, v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v8, "PackageManager"

    const-string v9, "PackageParserException"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method
