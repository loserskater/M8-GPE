.class public Lcom/android/systemui/qs/tiles/ProfilesTile;
.super Lcom/android/systemui/qs/QSTile;
.source "ProfilesTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/ProfilesTile$ProfilesObserver;,
        Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;,
        Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$State;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileAdapter;

.field private mDetails:Lcom/android/systemui/qs/QSDetailItemsList;

.field private mListening:Z

.field private mObserver:Lcom/android/systemui/qs/tiles/ProfilesTile$ProfilesObserver;

.field private mProfileManager:Landroid/app/ProfileManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mContext:Landroid/content/Context;

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mProfileManager:Landroid/app/ProfileManager;

    new-instance v0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfilesObserver;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfilesObserver;-><init>(Lcom/android/systemui/qs/tiles/ProfilesTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mObserver:Lcom/android/systemui/qs/tiles/ProfilesTile$ProfilesObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/ProfilesTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/ProfilesTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ProfilesTile;->profilesEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/ProfilesTile;)Lcom/android/systemui/qs/QSDetailItemsList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mDetails:Lcom/android/systemui/qs/QSDetailItemsList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/tiles/ProfilesTile;Lcom/android/systemui/qs/QSDetailItemsList;)Lcom/android/systemui/qs/QSDetailItemsList;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mDetails:Lcom/android/systemui/qs/QSDetailItemsList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/ProfilesTile;)Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mAdapter:Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/qs/tiles/ProfilesTile;Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileAdapter;)Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileAdapter;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mAdapter:Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/ProfilesTile;)Landroid/app/ProfileManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mProfileManager:Landroid/app/ProfileManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/ProfilesTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/ProfilesTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ProfilesTile;->refreshState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/ProfilesTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/ProfilesTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private profilesEnabled()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "system_profiles_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfileDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/ProfilesTile;)V

    return-object v0
.end method

.method protected handleClick()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/ProfilesTile;->showDetail(Z)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$State;->visible:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ProfilesTile;->profilesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v0}, Landroid/app/ProfileManager;->getActiveProfile()Landroid/app/Profile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    const v0, 0x7f020177

    iput v0, p1, Lcom/android/systemui/qs/QSTile$State;->iconId:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0207

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSTile$State;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$State;-><init>()V

    return-object v0
.end method

.method public setListening(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mListening:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mListening:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mObserver:Lcom/android/systemui/qs/tiles/ProfilesTile$ProfilesObserver;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfilesObserver;->startObserving()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ProfilesTile;->mObserver:Lcom/android/systemui/qs/tiles/ProfilesTile$ProfilesObserver;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/ProfilesTile$ProfilesObserver;->endObserving()V

    goto :goto_0
.end method
