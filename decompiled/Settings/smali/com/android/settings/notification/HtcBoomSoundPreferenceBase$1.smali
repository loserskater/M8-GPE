.class Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$1;
.super Ljava/lang/Object;
.source "HtcBoomSoundPreferenceBase.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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

    iput-object p1, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$1;->this$0:Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase$1;->this$0:Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;

    # invokes: Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->toggle(Z)Z
    invoke-static {v1, v0}, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->access$000(Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;Z)Z

    move-result v1

    return v1
.end method
