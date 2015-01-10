.class Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$7$1;
.super Ljava/lang/Object;
.source "HtcBoomSoundPreferenceBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$7;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$7;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$7;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$7$1;->this$1:Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$7;

    iput-object p2, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$7$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$7$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$7$1;->this$1:Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$7;

    iget-object v0, v0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$7;->this$0:Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;

    iget-object v1, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$7$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$7$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->onReceiveInBackground(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
