.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$SettingsObserver;
.super Lcom/android/systemui/cm/UserContentObserver;
.source "NotificationPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0, p2}, Lcom/android/systemui/cm/UserContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected observe()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-super {p0}, Lcom/android/systemui/cm/UserContentObserver;->observe()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "qs_quick_pulldown"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "double_tap_sleep_gesture"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$SettingsObserver;->update()V

    return-void
.end method

.method protected unobserve()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/cm/UserContentObserver;->unobserve()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public update()V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, -0x2

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const-string v4, "qs_quick_pulldown"

    invoke-static {v0, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    # setter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOneFingerQuickSettingsIntercept:I
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2402(Lcom/android/systemui/statusbar/phone/NotificationPanelView;I)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const-string v4, "double_tap_sleep_gesture"

    invoke-static {v0, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    # setter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDoubleTapToSleepEnabled:Z
    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2502(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method
