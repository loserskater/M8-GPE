.class public final Lcom/android/systemui/statusbar/NotificationData$Entry;
.super Ljava/lang/Object;
.source "NotificationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public autoRedacted:Z

.field public expanded:Landroid/view/View;

.field public expandedBig:Landroid/view/View;

.field public expandedPublic:Landroid/view/View;

.field public icon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private interruption:Z

.field public key:Ljava/lang/String;

.field public legacy:Z

.field public notification:Landroid/service/notification/StatusBarNotification;

.field public row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field public targetSdk:I


# direct methods
.method public constructor <init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 1
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ic"    # Lcom/android/systemui/statusbar/StatusBarIconView;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 56
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 57
    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->interruption:Z

    return v0
.end method


# virtual methods
.method public getBigContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedBig:Landroid/view/View;

    return-object v0
.end method

.method public getPublicContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedPublic:Landroid/view/View;

    return-object v0
.end method

.method public hasInterrupted()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->interruption:Z

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    .line 82
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedPublic:Landroid/view/View;

    .line 83
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedBig:Landroid/view/View;

    .line 84
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    .line 85
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->legacy:Z

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->reset()V

    .line 89
    :cond_0
    return-void
.end method

.method public setBigContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "bigContentView"    # Landroid/view/View;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedBig:Landroid/view/View;

    .line 60
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpandable(Z)V

    .line 61
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInterruption()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->interruption:Z

    .line 69
    return-void
.end method
