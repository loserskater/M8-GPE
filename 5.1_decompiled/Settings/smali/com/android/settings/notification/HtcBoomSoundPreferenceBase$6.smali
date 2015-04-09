.class Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$6;
.super Ljava/lang/Object;
.source "HtcBoomSoundPreferenceBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->onClick()V
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

    iput-object p1, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$6;->this$0:Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$6;->this$0:Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;

    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$6;->this$0:Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;

    invoke-virtual {v0}, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->onToggleChangeInBackground(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
