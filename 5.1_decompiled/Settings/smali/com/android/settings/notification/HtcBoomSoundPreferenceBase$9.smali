.class Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$9;
.super Ljava/lang/Object;
.source "HtcBoomSoundPreferenceBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->setWidgetStatus(Ljava/lang/CharSequence;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;

.field final synthetic val$summary:Ljava/lang/CharSequence;

.field final synthetic val$toggleButtonEnabled:Ljava/lang/Boolean;

.field final synthetic val$toggled:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;Ljava/lang/CharSequence;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$9;->this$0:Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;

    iput-object p2, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$9;->val$summary:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$9;->val$toggled:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$9;->val$toggleButtonEnabled:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$9;->this$0:Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;

    iget-object v1, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$9;->val$summary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$9;->val$toggled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$9;->this$0:Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;

    iget-object v1, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$9;->val$toggled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$9;->val$toggleButtonEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$9;->this$0:Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;

    iget-object v1, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$9;->val$toggleButtonEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->setEnabled(Z)V

    :cond_1
    return-void
.end method
