.class Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$7;
.super Landroid/content/BroadcastReceiver;
.source "HtcBoomSoundPreferenceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$7;->this$0:Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$7;->this$0:Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;

    # getter for: Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->mNonUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->access$100(Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$7$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$7$1;-><init>(Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$7;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
