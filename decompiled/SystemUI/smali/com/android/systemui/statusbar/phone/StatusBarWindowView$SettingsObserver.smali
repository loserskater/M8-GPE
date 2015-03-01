.class Lcom/android/systemui/statusbar/phone/StatusBarWindowView$SettingsObserver;
.super Lcom/android/systemui/cm/UserContentObserver;
.source "StatusBarWindowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-direct {p0, p2}, Lcom/android/systemui/cm/UserContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected observe()V
    .locals 4

    invoke-super {p0}, Lcom/android/systemui/cm/UserContentObserver;->observe()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "double_tap_sleep_gesture"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$SettingsObserver;->update()V

    return-void
.end method

.method protected unobserve()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/cm/UserContentObserver;->unobserve()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->access$200(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public update()V
    .locals 5

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->access$300(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const-string v3, "double_tap_sleep_gesture"

    const/4 v4, -0x2

    invoke-static {v0, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    # setter for: Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDoubleTapToSleepEnabled:Z
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->access$402(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Z)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
