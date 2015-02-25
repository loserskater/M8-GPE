.class final Lcom/android/settings/notification/HtcBoomSoundPreference$ServiceListener;
.super Ljava/lang/Object;
.source "HtcBoomSoundPreference.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/HtcBoomSoundPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/HtcBoomSoundPreference;


# direct methods
.method private constructor <init>(Lcom/android/settings/notification/HtcBoomSoundPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/HtcBoomSoundPreference$ServiceListener;->this$0:Lcom/android/settings/notification/HtcBoomSoundPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/notification/HtcBoomSoundPreference;Lcom/android/settings/notification/HtcBoomSoundPreference$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/HtcBoomSoundPreference$ServiceListener;-><init>(Lcom/android/settings/notification/HtcBoomSoundPreference;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreference$ServiceListener;->this$0:Lcom/android/settings/notification/HtcBoomSoundPreference;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    # setter for: Lcom/android/settings/notification/HtcBoomSoundPreference;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, p2}, Lcom/android/settings/notification/HtcBoomSoundPreference;->access$002(Lcom/android/settings/notification/HtcBoomSoundPreference;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreference$ServiceListener;->this$0:Lcom/android/settings/notification/HtcBoomSoundPreference;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/notification/HtcBoomSoundPreference;->mIsA2dpServiceConnected:Z
    invoke-static {v0, v1}, Lcom/android/settings/notification/HtcBoomSoundPreference;->access$102(Lcom/android/settings/notification/HtcBoomSoundPreference;Z)Z

    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreference$ServiceListener;->this$0:Lcom/android/settings/notification/HtcBoomSoundPreference;

    sget-object v1, Lcom/android/settings/notification/HtcBoomSoundState;->STATE_SYNC:Lcom/android/settings/notification/HtcBoomSoundState;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/HtcBoomSoundPreference;->onHandleStateChangedInBackground(Lcom/android/settings/notification/HtcBoomSoundState;)V

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreference$ServiceListener;->this$0:Lcom/android/settings/notification/HtcBoomSoundPreference;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/notification/HtcBoomSoundPreference;->mIsA2dpServiceConnected:Z
    invoke-static {v0, v1}, Lcom/android/settings/notification/HtcBoomSoundPreference;->access$102(Lcom/android/settings/notification/HtcBoomSoundPreference;Z)Z

    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreference$ServiceListener;->this$0:Lcom/android/settings/notification/HtcBoomSoundPreference;

    sget-object v1, Lcom/android/settings/notification/HtcBoomSoundState;->STATE_SYNC:Lcom/android/settings/notification/HtcBoomSoundState;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/HtcBoomSoundPreference;->onHandleStateChangedInBackground(Lcom/android/settings/notification/HtcBoomSoundState;)V

    return-void
.end method
