.class Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$600(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigation_bar_menu_arrow_keys"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->onChange(Z)V

    return-void
.end method

.method public onChange(Z)V
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v5, -0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$900(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "navigation_bar_menu_arrow_keys"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    # setter for: Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowDpadArrowKeys:Z
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$802(Lcom/android/systemui/statusbar/phone/NavigationBarView;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iput v5, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSlotOneVisibility:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iput v5, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSlotSixVisibility:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(IZ)V

    return-void
.end method

.method unobserve()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$700(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
