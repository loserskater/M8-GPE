.class Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;
.super Landroid/os/AsyncTask;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateSearchResultsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/SearchResultsSummary;


# direct methods
.method private constructor <init>(Lcom/android/settings/dashboard/SearchResultsSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dashboard/SearchResultsSummary;Lcom/android/settings/dashboard/SearchResultsSummary$1;)V
    .locals 0
    .param p1    # Lcom/android/settings/dashboard/SearchResultsSummary;
    .param p2    # Lcom/android/settings/dashboard/SearchResultsSummary$1;

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;-><init>(Lcom/android/settings/dashboard/SearchResultsSummary;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1    # [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/android/settings/search/Index;->search(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->doInBackground([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 2
    .param p1    # Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    # invokes: Lcom/android/settings/dashboard/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V
    invoke-static {v0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->access$000(Lcom/android/settings/dashboard/SearchResultsSummary;Landroid/database/Cursor;)V

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/android/settings/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V
    invoke-static {v1, v0}, Lcom/android/settings/dashboard/SearchResultsSummary;->access$100(Lcom/android/settings/dashboard/SearchResultsSummary;Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
