.class public final Lcom/android/systemui/qs/tiles/NotificationsTile$NotificationsState;
.super Lcom/android/systemui/qs/QSTile$State;
.source "NotificationsTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/NotificationsTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotificationsState"
.end annotation


# instance fields
.field public ringerMode:I

.field public zen:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSTile$State;-><init>()V

    return-void
.end method


# virtual methods
.method public copyTo(Lcom/android/systemui/qs/QSTile$State;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/qs/tiles/NotificationsTile$NotificationsState;

    iget v4, v1, Lcom/android/systemui/qs/tiles/NotificationsTile$NotificationsState;->zen:I

    iget v5, p0, Lcom/android/systemui/qs/tiles/NotificationsTile$NotificationsState;->zen:I

    if-ne v4, v5, :cond_0

    iget v4, v1, Lcom/android/systemui/qs/tiles/NotificationsTile$NotificationsState;->ringerMode:I

    iget v5, p0, Lcom/android/systemui/qs/tiles/NotificationsTile$NotificationsState;->ringerMode:I

    if-eq v4, v5, :cond_3

    :cond_0
    move v0, v3

    :goto_0
    iget v4, p0, Lcom/android/systemui/qs/tiles/NotificationsTile$NotificationsState;->zen:I

    iput v4, v1, Lcom/android/systemui/qs/tiles/NotificationsTile$NotificationsState;->zen:I

    iget v4, p0, Lcom/android/systemui/qs/tiles/NotificationsTile$NotificationsState;->ringerMode:I

    iput v4, v1, Lcom/android/systemui/qs/tiles/NotificationsTile$NotificationsState;->ringerMode:I

    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSTile$State;->copyTo(Lcom/android/systemui/qs/QSTile$State;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    return v2

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method protected toStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile$State;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",zen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/tiles/NotificationsTile$NotificationsState;->zen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",ringerMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/tiles/NotificationsTile$NotificationsState;->ringerMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method
