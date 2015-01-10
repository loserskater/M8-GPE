.class public Lcom/android/settings/dashboard/SearchResultsSummary;
.super Landroid/app/Fragment;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;,
        Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;,
        Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;,
        Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionItem;,
        Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;,
        Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;
    }
.end annotation


# static fields
.field private static ELLIPSIS:C


# instance fields
.field private mLayoutResults:Landroid/view/ViewGroup;

.field private mLayoutSuggestions:Landroid/view/ViewGroup;

.field private mQuery:Ljava/lang/String;

.field private mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

.field private mResultsListView:Landroid/widget/ListView;

.field private mSearchView:Landroid/widget/SearchView;

.field private mShowResults:Z

.field private mSuggestionsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

.field private mSuggestionsListView:Landroid/widget/ListView;

.field private mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

.field private mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2026

    sput-char v0, Lcom/android/settings/dashboard/SearchResultsSummary;->ELLIPSIS:C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dashboard/SearchResultsSummary;Landroid/database/Cursor;)V
    .locals 0
    .param p0    # Lcom/android/settings/dashboard/SearchResultsSummary;
    .param p1    # Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/dashboard/SearchResultsSummary;Z)V
    .locals 0
    .param p0    # Lcom/android/settings/dashboard/SearchResultsSummary;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/dashboard/SearchResultsSummary;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/settings/dashboard/SearchResultsSummary;

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/settings/dashboard/SearchResultsSummary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/settings/dashboard/SearchResultsSummary;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/dashboard/SearchResultsSummary;)Landroid/widget/SearchView;
    .locals 1
    .param p0    # Lcom/android/settings/dashboard/SearchResultsSummary;

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/dashboard/SearchResultsSummary;Landroid/database/Cursor;)V
    .locals 0
    .param p0    # Lcom/android/settings/dashboard/SearchResultsSummary;
    .param p1    # Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/dashboard/SearchResultsSummary;Z)V
    .locals 0
    .param p0    # Lcom/android/settings/dashboard/SearchResultsSummary;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSuggestionsVisibility(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/dashboard/SearchResultsSummary;)Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;
    .locals 1
    .param p0    # Lcom/android/settings/dashboard/SearchResultsSummary;

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/dashboard/SearchResultsSummary;)V
    .locals 0
    .param p0    # Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->saveQueryToDatabase()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/dashboard/SearchResultsSummary;)Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;
    .locals 1
    .param p0    # Lcom/android/settings/dashboard/SearchResultsSummary;

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/settings/dashboard/SearchResultsSummary;Z)Z
    .locals 0
    .param p0    # Lcom/android/settings/dashboard/SearchResultsSummary;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mShowResults:Z

    return p1
.end method

.method private clearAllTasks()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    :cond_1
    return-void
.end method

.method private clearResults()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings/dashboard/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method private clearSuggestions()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method private getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/CharSequence;

    if-nez p1, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private saveQueryToDatabase()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/search/Index;->addSavedQuery(Ljava/lang/String;)J

    return-void
.end method

.method private setResultsCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1    # Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {v1, p1}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private setResultsVisibility(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setSuggestionsCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1    # Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {v1, p1}, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private setSuggestionsVisibility(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateSearchResults()V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->clearAllTasks()V

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v3}, Lcom/android/settings/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    invoke-direct {p0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;-><init>(Lcom/android/settings/dashboard/SearchResultsSummary;Lcom/android/settings/dashboard/SearchResultsSummary$1;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private updateSuggestions()V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->clearAllTasks()V

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;-><init>(Lcom/android/settings/dashboard/SearchResultsSummary;Lcom/android/settings/dashboard/SearchResultsSummary$1;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    new-instance v0, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    if-eqz p1, :cond_0

    const-string v0, ":settings:show_results"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mShowResults:Z

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const/4 v6, 0x0

    const/4 v5, 0x0

    const v1, 0x7f0400a0

    invoke-virtual {p1, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    const v1, 0x7f0e0173

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    const v1, 0x7f0e0174

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/settings/dashboard/SearchResultsSummary$1;

    invoke-direct {v2, p0}, Lcom/android/settings/dashboard/SearchResultsSummary$1;-><init>(Lcom/android/settings/dashboard/SearchResultsSummary;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400a1

    iget-object v4, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    const v1, 0x7f0e0172

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/settings/dashboard/SearchResultsSummary$2;

    invoke-direct {v2, p0}, Lcom/android/settings/dashboard/SearchResultsSummary$2;-><init>(Lcom/android/settings/dashboard/SearchResultsSummary;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400a2

    iget-object v4, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings/dashboard/SearchResultsSummary$SuggestionsAdapter;

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mShowResults:Z

    invoke-direct {p0, v2}, Lcom/android/settings/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->updateSuggestions()V

    :goto_0
    return v3

    :cond_0
    iput-boolean v3, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mShowResults:Z

    invoke-direct {p0, v2}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSuggestionsVisibility(Z)V

    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->updateSearchResults()V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mShowResults:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSuggestionsVisibility(Z)V

    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->updateSearchResults()V

    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->saveQueryToDatabase()V

    return v1
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-boolean v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mShowResults:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->showSomeSuggestions()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, ":settings:show_results"

    iget-boolean v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mShowResults:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->clearSuggestions()V

    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->clearResults()V

    return-void
.end method

.method public setSearchView(Landroid/widget/SearchView;)V
    .locals 0
    .param p1    # Landroid/widget/SearchView;

    iput-object p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    return-void
.end method

.method public showSomeSuggestions()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary;->updateSuggestions()V

    return-void
.end method
