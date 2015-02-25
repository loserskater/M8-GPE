.class Lcom/android/settings/notification/ZenModeSettings$7$2;
.super Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;
.source "ZenModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeSettings$7;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/notification/ZenModeSettings$7;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeSettings$7;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$7$2;->this$1:Lcom/android/settings/notification/ZenModeSettings$7;

    invoke-direct {p0, p2, p3}, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onChanged(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$7$2;->this$1:Lcom/android/settings/notification/ZenModeSettings$7;

    iget-object v1, v1, Lcom/android/settings/notification/ZenModeSettings$7;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    # getter for: Lcom/android/settings/notification/ZenModeSettings;->mDisableListeners:Z
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeSettings;->access$000(Lcom/android/settings/notification/ZenModeSettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$7$2;->this$1:Lcom/android/settings/notification/ZenModeSettings$7;

    iget-object v1, v1, Lcom/android/settings/notification/ZenModeSettings$7;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    # getter for: Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeSettings;->access$100(Lcom/android/settings/notification/ZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "days.onChanged sleepMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$7$2;->this$1:Lcom/android/settings/notification/ZenModeSettings$7;

    iget-object v1, v1, Lcom/android/settings/notification/ZenModeSettings$7;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    # getter for: Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeSettings;->access$100(Lcom/android/settings/notification/ZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-object p1, v0, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$7$2;->this$1:Lcom/android/settings/notification/ZenModeSettings$7;

    iget-object v1, v1, Lcom/android/settings/notification/ZenModeSettings$7;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    # invokes: Lcom/android/settings/notification/ZenModeSettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    invoke-static {v1, v0}, Lcom/android/settings/notification/ZenModeSettings;->access$200(Lcom/android/settings/notification/ZenModeSettings;Landroid/service/notification/ZenModeConfig;)Z

    goto :goto_0
.end method
