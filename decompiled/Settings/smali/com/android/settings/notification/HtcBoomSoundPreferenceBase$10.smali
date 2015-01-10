.class Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$10;
.super Ljava/lang/Object;
.source "HtcBoomSoundPreferenceBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->onDestroy()V
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

    iput-object p1, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$10;->this$0:Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$10;->this$0:Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;

    iget-object v1, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$10;->this$0:Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;

    iget-object v1, v1, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->onDestroyInBackground(Landroid/app/Activity;)V

    return-void
.end method
