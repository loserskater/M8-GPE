.class Lcom/android/systemui/volume/VolumePanel$Settings;
.super Landroid/database/ContentObserver;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumePanel;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$Settings;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$Settings;->this$0:Lcom/android/systemui/volume/VolumePanel;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$Settings;->this$0:Lcom/android/systemui/volume/VolumePanel;

    iget-object v2, v2, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "volume_link_notification"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    # setter for: Lcom/android/systemui/volume/VolumePanel;->mVolumeLinkNotification:Z
    invoke-static {v1, v0}, Lcom/android/systemui/volume/VolumePanel;->access$002(Lcom/android/systemui/volume/VolumePanel;Z)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
