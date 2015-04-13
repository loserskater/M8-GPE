.class public Lcom/android/settings/applications/ProtectedAppsActivity;
.super Landroid/app/Activity;
.source "ProtectedAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;,
        Lcom/android/settings/applications/ProtectedAppsActivity$AppViewHolder;,
        Lcom/android/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;,
        Lcom/android/settings/applications/ProtectedAppsActivity$AppProtectList;,
        Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;
    }
.end annotation


# instance fields
.field private mAppClickListener:Landroid/view/View$OnClickListener;

.field private mAppsAdapter:Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mProtect:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitUserAuth:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mWaitUserAuth:Z

    new-instance v0, Lcom/android/settings/applications/ProtectedAppsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ProtectedAppsActivity$2;-><init>(Lcom/android/settings/applications/ProtectedAppsActivity;)V

    iput-object v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mAppClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/ProtectedAppsActivity;)Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mAppsAdapter:Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/ProtectedAppsActivity;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/applications/ProtectedAppsActivity;->refreshApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/applications/ProtectedAppsActivity;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/ProtectedAppsActivity;Landroid/content/ComponentName;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/applications/ProtectedAppsActivity;->getProtectedStateFromComponentName(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/applications/ProtectedAppsActivity;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mAppClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private getProtectedStateFromComponentName(Landroid/content/ComponentName;)Z
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/applications/ProtectedAppsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-boolean v2, v3, Landroid/content/pm/ApplicationInfo;->protect:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private refreshApps()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;",
            ">;"
        }
    .end annotation

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    new-instance v5, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v6, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v5, v6}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    new-instance v5, Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;

    invoke-direct {v5, p0, v3}, Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;-><init>(Lcom/android/settings/applications/ProtectedAppsActivity;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private reset()V
    .locals 12

    const/4 v11, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/applications/ProtectedAppsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "protected_components"

    invoke-static {v8, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v10, ""

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "\\|"

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v6, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v3, v0, v5

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-instance v7, Lcom/android/settings/applications/ProtectedAppsActivity$AppProtectList;

    invoke-direct {v7, p0, v2, v11}, Lcom/android/settings/applications/ProtectedAppsActivity$AppProtectList;-><init>(Lcom/android/settings/applications/ProtectedAppsActivity;Ljava/util/ArrayList;Z)V

    new-instance v9, Lcom/android/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;

    invoke-direct {v9, p0, p0}, Lcom/android/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;-><init>(Lcom/android/settings/applications/ProtectedAppsActivity;Landroid/content/Context;)V

    new-array v10, v11, [Lcom/android/settings/applications/ProtectedAppsActivity$AppProtectList;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-virtual {v9, v10}, Lcom/android/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private resetLock()V
    .locals 4

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mWaitUserAuth:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "recreate_pattern_lock"

    const/4 v2, 0x0

    const-class v3, Lcom/android/settings/applications/LockPatternActivity;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/ProtectedAppsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iput-boolean v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mWaitUserAuth:Z

    packed-switch p2, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/applications/ProtectedAppsActivity;->finish()V

    goto :goto_0

    :pswitch_3
    iput-boolean v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mWaitUserAuth:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "auth_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mWaitUserAuth:Z

    :cond_0
    const v0, 0x7f0909d9

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProtectedAppsActivity;->setTitle(I)V

    const v0, 0x7f0400e1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProtectedAppsActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/settings/applications/ProtectedAppsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;

    const v1, 0x7f0400e2

    invoke-direct {v0, p0, p0, v1}, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;-><init>(Lcom/android/settings/applications/ProtectedAppsActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mAppsAdapter:Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;

    iget-object v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mAppsAdapter:Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->setNotifyOnChange(Z)V

    const v0, 0x7f0f0279 

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProtectedAppsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mAppsAdapter:Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mProtect:Ljava/util/ArrayList;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const v0, 0x7f0909da    # type="string" name="menu_hidden_apps_delete"

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f0909db    # type="string" name="menu_hidden_apps_reset_lock"

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/android/settings/applications/ProtectedAppsActivity;->reset()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/applications/ProtectedAppsActivity;->resetLock()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/settings/applications/ProtectedAppsActivity;->finish()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v2, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mWaitUserAuth:Z

    if-nez v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/applications/LockPatternActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v4}, Lcom/android/settings/applications/ProtectedAppsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    new-instance v1, Lcom/android/settings/applications/ProtectedAppsActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/ProtectedAppsActivity$1;-><init>(Lcom/android/settings/applications/ProtectedAppsActivity;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    aput-object v5, v2, v3

    aput-object v5, v2, v4

    const/4 v3, 0x2

    aput-object v5, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProtectedAppsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "auth_key"

    iget-boolean v1, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mWaitUserAuth:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
