.class final Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BatteryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final PERCENT_URI:Landroid/net/Uri;

.field private final STYLE_URI:Landroid/net/Uri;

.field private mRegistered:Z

.field private mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryController;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v0, "status_bar_battery_style"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;->STYLE_URI:Landroid/net/Uri;

    const-string v0, "status_bar_show_battery_percent"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;->PERCENT_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private update()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "status_bar_battery_style"

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    # getter for: Lcom/android/systemui/statusbar/policy/BatteryController;->mUserId:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/BatteryController;->access$000(Lcom/android/systemui/statusbar/policy/BatteryController;)I

    move-result v3

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    # setter for: Lcom/android/systemui/statusbar/policy/BatteryController;->mStyle:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->access$102(Lcom/android/systemui/statusbar/policy/BatteryController;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "status_bar_show_battery_percent"

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    # getter for: Lcom/android/systemui/statusbar/policy/BatteryController;->mUserId:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/BatteryController;->access$000(Lcom/android/systemui/statusbar/policy/BatteryController;)I

    move-result v3

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    # setter for: Lcom/android/systemui/statusbar/policy/BatteryController;->mPercentMode:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->access$202(Lcom/android/systemui/statusbar/policy/BatteryController;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    # invokes: Lcom/android/systemui/statusbar/policy/BatteryController;->fireSettingsChanged()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->access$300(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    return-void
.end method


# virtual methods
.method public observe()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;->STYLE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    # getter for: Lcom/android/systemui/statusbar/policy/BatteryController;->mUserId:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/BatteryController;->access$000(Lcom/android/systemui/statusbar/policy/BatteryController;)I

    move-result v2

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;->PERCENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    # getter for: Lcom/android/systemui/statusbar/policy/BatteryController;->mUserId:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/BatteryController;->access$000(Lcom/android/systemui/statusbar/policy/BatteryController;)I

    move-result v2

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;->mRegistered:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;->update()V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;->update()V

    return-void
.end method
