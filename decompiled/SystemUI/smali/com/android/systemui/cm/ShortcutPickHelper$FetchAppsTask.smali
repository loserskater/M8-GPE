.class Lcom/android/systemui/cm/ShortcutPickHelper$FetchAppsTask;
.super Landroid/os/AsyncTask;
.source "ShortcutPickHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/cm/ShortcutPickHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchAppsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/cm/ShortcutPickHelper;


# direct methods
.method private constructor <init>(Lcom/android/systemui/cm/ShortcutPickHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/cm/ShortcutPickHelper$FetchAppsTask;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/cm/ShortcutPickHelper;Lcom/android/systemui/cm/ShortcutPickHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/cm/ShortcutPickHelper$FetchAppsTask;-><init>(Lcom/android/systemui/cm/ShortcutPickHelper;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/cm/ShortcutPickHelper$FetchAppsTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/cm/ShortcutPickHelper$FetchAppsTask;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    # getter for: Lcom/android/systemui/cm/ShortcutPickHelper;->mBaseIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$400(Lcom/android/systemui/cm/ShortcutPickHelper;)Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    array-length v3, p1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    aget-object v3, p1, v5

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/cm/ShortcutPickHelper$FetchAppsTask;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    # getter for: Lcom/android/systemui/cm/ShortcutPickHelper;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$500(Lcom/android/systemui/cm/ShortcutPickHelper;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Lcom/android/systemui/cm/ShortcutPickHelper$FetchAppsTask;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    # getter for: Lcom/android/systemui/cm/ShortcutPickHelper;->mItems:Ljava/util/List;
    invoke-static {v3}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$200(Lcom/android/systemui/cm/ShortcutPickHelper;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/cm/ShortcutPickHelper$FetchAppsTask;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    # getter for: Lcom/android/systemui/cm/ShortcutPickHelper;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$500(Lcom/android/systemui/cm/ShortcutPickHelper;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/systemui/cm/ShortcutPickHelper$ItemInfo;->populateFromPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/systemui/cm/ShortcutPickHelper$ItemInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/cm/ShortcutPickHelper$FetchAppsTask;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    # getter for: Lcom/android/systemui/cm/ShortcutPickHelper;->mItems:Ljava/util/List;
    invoke-static {v3}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$200(Lcom/android/systemui/cm/ShortcutPickHelper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/cm/ShortcutPickHelper$FetchAppsTask;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    # invokes: Lcom/android/systemui/cm/ShortcutPickHelper;->sortItems()V
    invoke-static {v3}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$600(Lcom/android/systemui/cm/ShortcutPickHelper;)V

    const/4 v3, 0x0

    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/cm/ShortcutPickHelper$FetchAppsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/cm/ShortcutPickHelper$FetchAppsTask;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    # getter for: Lcom/android/systemui/cm/ShortcutPickHelper;->mAdapter:Lcom/android/systemui/cm/ShortcutPickHelper$AppPickAdapter;
    invoke-static {v0}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$300(Lcom/android/systemui/cm/ShortcutPickHelper;)Lcom/android/systemui/cm/ShortcutPickHelper$AppPickAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/cm/ShortcutPickHelper$AppPickAdapter;->notifyDataSetChanged()V

    return-void
.end method
