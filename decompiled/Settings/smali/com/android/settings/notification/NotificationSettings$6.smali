.class Lcom/android/settings/notification/NotificationSettings$6;
.super Ljava/lang/Object;
.source "NotificationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationSettings;->initBeatsAudio(Landroid/preference/PreferenceCategory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettings$6;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$6;->this$0:Lcom/android/settings/notification/NotificationSettings;

    # getter for: Lcom/android/settings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->access$1800(Lcom/android/settings/notification/NotificationSettings;)Landroid/media/AudioManager;

    move-result-object v1

    const/16 v2, 0x384

    const-string v3, "com.android.settings"

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->setGlobalEffect(ILjava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$6;->this$0:Lcom/android/settings/notification/NotificationSettings;

    # invokes: Lcom/android/settings/notification/NotificationSettings;->refreshBeatsAudioUI()V
    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->access$1900(Lcom/android/settings/notification/NotificationSettings;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$6;->this$0:Lcom/android/settings/notification/NotificationSettings;

    # getter for: Lcom/android/settings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->access$1800(Lcom/android/settings/notification/NotificationSettings;)Landroid/media/AudioManager;

    move-result-object v1

    const/16 v2, 0x320

    const-string v3, "com.android.settings"

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->setGlobalEffect(ILjava/lang/String;)V

    goto :goto_0
.end method
