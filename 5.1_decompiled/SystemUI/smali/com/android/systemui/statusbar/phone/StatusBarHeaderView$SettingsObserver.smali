.class Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "StatusBarHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$2000(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_show_weather"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "status_bar_battery_style"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "status_bar_show_battery_percent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$SettingsObserver;->update()V

    return-void
.end method

.method public onChange(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$SettingsObserver;->update()V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$SettingsObserver;->update()V

    return-void
.end method

.method unobserve()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$2100(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public update()V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$2200(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const-string v6, "status_bar_battery_style"

    invoke-static {v2, v6, v5, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string v6, "status_bar_show_battery_percent"

    invoke-static {v2, v6, v5, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-nez v6, :cond_0

    move v3, v4

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # setter for: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mShowBatteryTextExpanded:Z
    invoke-static {v6, v3}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$2302(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;Z)Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    const-string v7, "status_bar_show_weather"

    invoke-static {v2, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v4, :cond_1

    :goto_2
    # setter for: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mShowWeather:Z
    invoke-static {v6, v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$1302(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;Z)Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # invokes: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateVisibilities()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$2400(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # invokes: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->requestCaptureValues()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$2500(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    return-void

    :cond_0
    move v3, v5

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move v4, v5

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
