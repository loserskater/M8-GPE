.class public Lcom/android/settings/DreamSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DreamSettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DreamSettings$PackageReceiver;,
        Lcom/android/settings/DreamSettings$DreamInfoAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/settings/DreamSettings$DreamInfoAdapter;

.field private mBackend:Lcom/android/settings/DreamBackend;

.field private mContext:Landroid/content/Context;

.field private mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

.field private final mPackageReceiver:Lcom/android/settings/DreamSettings$PackageReceiver;

.field private mRefreshing:Z

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/DreamSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/DreamSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/DreamSettings$PackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DreamSettings$PackageReceiver;-><init>(Lcom/android/settings/DreamSettings;Lcom/android/settings/DreamSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/DreamSettings;->mPackageReceiver:Lcom/android/settings/DreamSettings$PackageReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/DreamSettings;)Lcom/android/settings/DreamBackend;
    .locals 1
    .param p0    # Lcom/android/settings/DreamSettings;

    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0    # Ljava/lang/String;
    .param p1    # [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/DreamSettings;)V
    .locals 0
    .param p0    # Lcom/android/settings/DreamSettings;

    invoke-direct {p0}, Lcom/android/settings/DreamSettings;->refreshFromBackend()V

    return-void
.end method

.method private createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 2
    .param p1    # Landroid/view/Menu;
    .param p2    # I
    .param p3    # I
    .param p4    # Z
    .param p5    # Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {v0, p4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    new-instance v1, Lcom/android/settings/DreamSettings$3;

    invoke-direct {v1, p0, p5}, Lcom/android/settings/DreamSettings$3;-><init>(Lcom/android/settings/DreamSettings;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-object v0
.end method

.method private createWhenToDreamDialog()Landroid/app/Dialog;
    .locals 6

    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x3

    new-array v1, v4, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f08034a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    iget-object v4, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f080349

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v4, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f080348

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    iget-object v4, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    invoke-virtual {v4}, Lcom/android/settings/DreamBackend;->isActivatedOnDock()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    invoke-virtual {v4}, Lcom/android/settings/DreamBackend;->isActivatedOnSleep()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08034d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/DreamSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings/DreamSettings$4;-><init>(Lcom/android/settings/DreamSettings;)V

    invoke-virtual {v2, v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    :cond_0
    iget-object v4, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    invoke-virtual {v4}, Lcom/android/settings/DreamBackend;->isActivatedOnDock()Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    invoke-virtual {v2}, Lcom/android/settings/DreamBackend;->isActivatedOnSleep()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3
    .param p0    # Landroid/content/Context;

    new-instance v0, Lcom/android/settings/DreamBackend;

    invoke-direct {v0, p0}, Lcom/android/settings/DreamBackend;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/settings/DreamBackend;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const v2, 0x7f08034b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/DreamBackend;->getActiveDreamName()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method

.method private static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0    # Ljava/lang/String;
    .param p1    # [Ljava/lang/Object;

    return-void
.end method

.method private refreshFromBackend()V
    .locals 9

    const/4 v8, 0x0

    const-string v6, "refreshFromBackend()"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings/DreamSettings;->mRefreshing:Z

    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    invoke-virtual {v6}, Lcom/android/settings/DreamBackend;->isEnabled()Z

    move-result v2

    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v6

    if-eq v6, v2, :cond_0

    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_0
    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mAdapter:Lcom/android/settings/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v6}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->clear()V

    if-eqz v2, :cond_1

    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    invoke-virtual {v6}, Lcom/android/settings/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v1

    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mAdapter:Lcom/android/settings/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v6, v1}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->addAll(Ljava/util/Collection;)V

    :cond_1
    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    if-eqz v6, :cond_2

    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v8, p0, Lcom/android/settings/DreamSettings;->mRefreshing:Z

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    const v0, 0x7f08089f

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;

    const/4 v6, 0x1

    const-string v3, "onActivityCreated(%s)"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f08034c

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    new-instance v3, Lcom/android/settings/DreamSettings$DreamInfoAdapter;

    iget-object v4, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;-><init>(Lcom/android/settings/DreamSettings;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/DreamSettings;->mAdapter:Lcom/android/settings/DreamSettings$DreamInfoAdapter;

    iget-object v3, p0, Lcom/android/settings/DreamSettings;->mAdapter:Lcom/android/settings/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DreamSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v3, p0, Lcom/android/settings/DreamSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/DreamSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1    # Landroid/app/Activity;

    const-string v0, "onAttach(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    const/4 v3, 0x1

    const-string v0, "onCreate(%s)"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/settings/DreamBackend;

    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/DreamBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    invoke-virtual {p0, v3}, Lcom/android/settings/DreamSettings;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1    # I

    const/4 v4, 0x1

    const-string v0, "onCreateDialog(%s)"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne p1, v4, :cond_0

    invoke-direct {p0}, Lcom/android/settings/DreamSettings;->createWhenToDreamDialog()Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .param p1    # Landroid/view/Menu;
    .param p2    # Landroid/view/MenuInflater;

    const/4 v3, 0x0

    const-string v0, "onCreateOptionsMenu()"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    invoke-virtual {v0}, Lcom/android/settings/DreamBackend;->isEnabled()Z

    move-result v4

    const v2, 0x7f08034e

    new-instance v5, Lcom/android/settings/DreamSettings$1;

    invoke-direct {v5, p0}, Lcom/android/settings/DreamSettings$1;-><init>(Lcom/android/settings/DreamSettings;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/DreamSettings;->createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v6

    const v2, 0x7f08034d

    new-instance v5, Lcom/android/settings/DreamSettings$2;

    invoke-direct {v5, p0}, Lcom/android/settings/DreamSettings$2;-><init>(Lcom/android/settings/DreamSettings;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/DreamSettings;->createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v7

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/MenuItem;

    aput-object v6, v0, v3

    const/4 v1, 0x1

    aput-object v7, v0, v1

    iput-object v0, p0, Lcom/android/settings/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "onDestroyView()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "onPause()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/DreamSettings;->mPackageReceiver:Lcom/android/settings/DreamSettings$PackageReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    const-string v1, "onResume()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/DreamSettings;->refreshFromBackend()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/DreamSettings;->mPackageReceiver:Lcom/android/settings/DreamSettings$PackageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "onStart()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1    # Landroid/widget/Switch;
    .param p2    # Z

    iget-boolean v0, p0, Lcom/android/settings/DreamSettings;->mRefreshing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    invoke-virtual {v0, p2}, Lcom/android/settings/DreamBackend;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/DreamSettings;->refreshFromBackend()V

    :cond_0
    return-void
.end method
