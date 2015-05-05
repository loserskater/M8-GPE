.class Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$2;
.super Ljava/lang/Object;
.source "HtcBoomSoundPreferenceBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->init(Landroid/app/Activity;)V
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

    iput-object p1, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$2;->this$0:Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$2;->this$0:Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;

    iget-object v1, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$2;->this$0:Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;

    invoke-virtual {v1}, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->onGetDefaultState()Lcom/android/settings/notification/HtcBoomSoundState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->onHandleStateChangedInBackground(Lcom/android/settings/notification/HtcBoomSoundState;)V

    return-void
.end method
