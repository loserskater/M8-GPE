.class Lcom/android/systemui/cm/ShortcutPickHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutPickHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/cm/ShortcutPickHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/cm/ShortcutPickHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/cm/ShortcutPickHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/cm/ShortcutPickHelper$1;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    iget-object v4, p0, Lcom/android/systemui/cm/ShortcutPickHelper$1;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    # getter for: Lcom/android/systemui/cm/ShortcutPickHelper;->mFetchAppsTask:Lcom/android/systemui/cm/ShortcutPickHelper$FetchAppsTask;
    invoke-static {v4}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$000(Lcom/android/systemui/cm/ShortcutPickHelper;)Lcom/android/systemui/cm/ShortcutPickHelper$FetchAppsTask;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/cm/ShortcutPickHelper$1;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    # getter for: Lcom/android/systemui/cm/ShortcutPickHelper;->mFetchAppsTask:Lcom/android/systemui/cm/ShortcutPickHelper$FetchAppsTask;
    invoke-static {v4}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$000(Lcom/android/systemui/cm/ShortcutPickHelper;)Lcom/android/systemui/cm/ShortcutPickHelper$FetchAppsTask;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/cm/ShortcutPickHelper$FetchAppsTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v4

    sget-object v5, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v4, v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/cm/ShortcutPickHelper$1;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    new-instance v5, Lcom/android/systemui/cm/ShortcutPickHelper$FetchAppsTask;

    iget-object v6, p0, Lcom/android/systemui/cm/ShortcutPickHelper$1;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/cm/ShortcutPickHelper$FetchAppsTask;-><init>(Lcom/android/systemui/cm/ShortcutPickHelper;Lcom/android/systemui/cm/ShortcutPickHelper$1;)V

    # setter for: Lcom/android/systemui/cm/ShortcutPickHelper;->mFetchAppsTask:Lcom/android/systemui/cm/ShortcutPickHelper$FetchAppsTask;
    invoke-static {v4, v5}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$002(Lcom/android/systemui/cm/ShortcutPickHelper;Lcom/android/systemui/cm/ShortcutPickHelper$FetchAppsTask;)Lcom/android/systemui/cm/ShortcutPickHelper$FetchAppsTask;

    iget-object v4, p0, Lcom/android/systemui/cm/ShortcutPickHelper$1;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    # getter for: Lcom/android/systemui/cm/ShortcutPickHelper;->mFetchAppsTask:Lcom/android/systemui/cm/ShortcutPickHelper$FetchAppsTask;
    invoke-static {v4}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$000(Lcom/android/systemui/cm/ShortcutPickHelper;)Lcom/android/systemui/cm/ShortcutPickHelper$FetchAppsTask;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v4, v5}, Lcom/android/systemui/cm/ShortcutPickHelper$FetchAppsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/cm/ShortcutPickHelper$1;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    # getter for: Lcom/android/systemui/cm/ShortcutPickHelper;->mItems:Ljava/util/List;
    invoke-static {v4}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$200(Lcom/android/systemui/cm/ShortcutPickHelper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/cm/ShortcutPickHelper$1;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    # getter for: Lcom/android/systemui/cm/ShortcutPickHelper;->mItems:Ljava/util/List;
    invoke-static {v4}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$200(Lcom/android/systemui/cm/ShortcutPickHelper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/cm/ShortcutPickHelper$ItemInfo;

    iget-object v4, v1, Lcom/android/systemui/cm/ShortcutPickHelper$ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/cm/ShortcutPickHelper$1;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    # getter for: Lcom/android/systemui/cm/ShortcutPickHelper;->mItems:Ljava/util/List;
    invoke-static {v4}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$200(Lcom/android/systemui/cm/ShortcutPickHelper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/cm/ShortcutPickHelper$1;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    # getter for: Lcom/android/systemui/cm/ShortcutPickHelper;->mAdapter:Lcom/android/systemui/cm/ShortcutPickHelper$AppPickAdapter;
    invoke-static {v4}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$300(Lcom/android/systemui/cm/ShortcutPickHelper;)Lcom/android/systemui/cm/ShortcutPickHelper$AppPickAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/cm/ShortcutPickHelper$AppPickAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
