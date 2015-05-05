.class public Lcom/android/settings/notification/HtcBoomSoundPreference;
.super Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;
.source "HtcBoomSoundPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/HtcBoomSoundPreference$1;,
        Lcom/android/settings/notification/HtcBoomSoundPreference$ServiceListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothStream:Z

.field private mBtDevice:I

.field private mBtState:I

.field private mGlobalEffect:I

.field private mHeadsetState:I

.field private mHeadsetStream:Z

.field private mHeadsetType:I

.field private mIsA2dpServiceConnected:Z

.field private mIsDualSpeaker:Z

.field private mIsLicenseValid:Z

.field private mIsMiracast:Z

.field private mLicenseProperty:Ljava/lang/String;

.field private mWiredHdmiMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/notification/HtcBoomSoundPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/HtcBoomSoundPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mBtDevice:I

    iput-boolean v1, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mIsA2dpServiceConnected:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mLicenseProperty:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mIsLicenseValid:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/notification/HtcBoomSoundPreference;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/notification/HtcBoomSoundPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mIsA2dpServiceConnected:Z

    return p1
.end method

.method private checkGlobalEffect()V
    .locals 1

    iget v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mGlobalEffect:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/HtcBoomSoundPreference;->setWidgetEnabled(Z)V

    sget-object v0, Lcom/android/settings/notification/HtcBoomSoundState;->STATE_OFF:Lcom/android/settings/notification/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/HtcBoomSoundPreference;->onHandleStateChangedInBackground(Lcom/android/settings/notification/HtcBoomSoundState;)V

    :goto_0
    return-void

    :sswitch_0
    sget-object v0, Lcom/android/settings/notification/HtcBoomSoundState;->STATE_ON:Lcom/android/settings/notification/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/HtcBoomSoundPreference;->onHandleStateChangedInBackground(Lcom/android/settings/notification/HtcBoomSoundState;)V

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/android/settings/notification/HtcBoomSoundState;->STATE_OFF:Lcom/android/settings/notification/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/HtcBoomSoundPreference;->onHandleStateChangedInBackground(Lcom/android/settings/notification/HtcBoomSoundState;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x320 -> :sswitch_1
        0x386 -> :sswitch_0
    .end sparse-switch
.end method

.method private getStateSummary()Ljava/lang/String;
    .locals 8

    const v7, 0x7f090021

    const/4 v2, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v0, ""

    iget-boolean v1, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mIsMiracast:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mContext:Landroid/content/Context;

    const v4, 0x7f090024

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v5

    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mHeadsetState:I

    if-ne v1, v5, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mHeadsetStream:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mHeadsetType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mBtState:I

    if-ne v1, v5, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mBluetoothStream:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mBtDevice:I

    packed-switch v1, :pswitch_data_1

    iget-object v1, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mContext:Landroid/content/Context;

    const v4, 0x7f090082

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v5

    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mWiredHdmiMode:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mContext:Landroid/content/Context;

    const v4, 0x7f090025

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v5

    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mIsDualSpeaker:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f090020

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3ef
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private isMiracastConnected()Z
    .locals 7

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mContext:Landroid/content/Context;

    const-string v6, "display"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    const/4 v5, 0x2

    if-ne v5, v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private lazyInitialize()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/settings/notification/HtcBoomSoundPreference$ServiceListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/notification/HtcBoomSoundPreference$ServiceListener;-><init>(Lcom/android/settings/notification/HtcBoomSoundPreference;Lcom/android/settings/notification/HtcBoomSoundPreference$1;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_1
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/settings/notification/HtcBoomSoundPreference;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateBoomSoundState()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/settings/notification/HtcBoomSoundPreference;->lazyInitialize()V

    iget-object v5, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mLicenseProperty:Ljava/lang/String;

    if-nez v5, :cond_0

    const-string v5, "htc.audio.srs.skipprocess"

    const-string v6, "Unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mLicenseProperty:Ljava/lang/String;

    const-string v5, "1"

    iget-object v6, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mLicenseProperty:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    iput-boolean v7, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mIsLicenseValid:Z

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getGlobalEffect()I

    move-result v5

    iput v5, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mGlobalEffect:I

    iget-object v5, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getBeatsHeadset()I

    move-result v5

    iput v5, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mHeadsetType:I

    iput v7, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mBtState:I

    iput v7, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mBtDevice:I

    iget-object v5, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->hasBeatsSpeaker()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mIsDualSpeaker:Z

    iget-boolean v5, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mIsA2dpServiceConnected:Z

    if-ne v5, v8, :cond_2

    iget-object v5, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput v8, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mBtState:I

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v5, "HTC Boom Bass"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    iput v8, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mBtDevice:I

    :cond_2
    :goto_1
    iput-boolean v7, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mIsMiracast:Z

    invoke-direct {p0}, Lcom/android/settings/notification/HtcBoomSoundPreference;->isMiracastConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    iput-boolean v8, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mIsMiracast:Z

    :cond_3
    iget-object v5, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v4

    and-int/lit16 v5, v4, 0x800

    if-lez v5, :cond_4

    iput-boolean v7, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mHeadsetStream:Z

    iput-boolean v7, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mBluetoothStream:Z

    :cond_4
    and-int/lit16 v5, v4, 0x400

    if-lez v5, :cond_5

    iput-boolean v7, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mHeadsetStream:Z

    iput-boolean v7, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mBluetoothStream:Z

    :cond_5
    and-int/lit16 v5, v4, 0x80

    if-lez v5, :cond_6

    iput-boolean v7, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mHeadsetStream:Z

    iput-boolean v8, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mBluetoothStream:Z

    :cond_6
    and-int/lit16 v5, v4, 0x100

    if-lez v5, :cond_7

    iput-boolean v7, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mHeadsetStream:Z

    iput-boolean v8, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mBluetoothStream:Z

    :cond_7
    and-int/lit16 v5, v4, 0x200

    if-lez v5, :cond_8

    iput-boolean v7, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mHeadsetStream:Z

    iput-boolean v8, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mBluetoothStream:Z

    :cond_8
    and-int/lit8 v5, v4, 0x10

    if-lez v5, :cond_9

    iput-boolean v7, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mHeadsetStream:Z

    iput-boolean v8, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mBluetoothStream:Z

    :cond_9
    and-int/lit8 v5, v4, 0x40

    if-lez v5, :cond_a

    iput-boolean v7, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mHeadsetStream:Z

    iput-boolean v8, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mBluetoothStream:Z

    :cond_a
    and-int/lit8 v5, v4, 0x20

    if-lez v5, :cond_b

    iput-boolean v7, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mHeadsetStream:Z

    iput-boolean v8, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mBluetoothStream:Z

    :cond_b
    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v5, v4

    if-lez v5, :cond_c

    iput-boolean v7, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mHeadsetStream:Z

    iput-boolean v7, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mBluetoothStream:Z

    :cond_c
    and-int/lit16 v5, v4, 0x1000

    if-lez v5, :cond_d

    iput-boolean v7, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mHeadsetStream:Z

    iput-boolean v7, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mBluetoothStream:Z

    :cond_d
    and-int/lit8 v5, v4, 0x1

    if-lez v5, :cond_e

    :cond_e
    and-int/lit8 v5, v4, 0x2

    if-lez v5, :cond_f

    iput-boolean v7, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mHeadsetStream:Z

    iput-boolean v7, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mBluetoothStream:Z

    iget v5, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mBtDevice:I

    if-ne v5, v8, :cond_f

    iput-boolean v7, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mHeadsetStream:Z

    iput-boolean v8, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mBluetoothStream:Z

    :cond_f
    and-int/lit16 v5, v4, 0x2000

    if-lez v5, :cond_10

    iput-boolean v7, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mHeadsetStream:Z

    iput-boolean v7, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mBluetoothStream:Z

    :cond_10
    and-int/lit16 v5, v4, 0x4000

    if-lez v5, :cond_11

    iput-boolean v7, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mHeadsetStream:Z

    iput-boolean v7, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mBluetoothStream:Z

    :cond_11
    and-int/lit8 v5, v4, 0x8

    if-lez v5, :cond_12

    iput-boolean v8, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mHeadsetStream:Z

    iput-boolean v7, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mBluetoothStream:Z

    :cond_12
    and-int/lit8 v5, v4, 0x4

    if-lez v5, :cond_13

    iput-boolean v8, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mHeadsetStream:Z

    iput-boolean v7, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mBluetoothStream:Z

    :cond_13
    return-void

    :cond_14
    iput-boolean v8, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mIsLicenseValid:Z

    goto/16 :goto_0

    :cond_15
    const-string v5, "HTC ST A100"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iput v8, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mBtDevice:I

    goto/16 :goto_1
.end method


# virtual methods
.method protected acquirePermission()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroyInBackground(Landroid/app/Activity;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/notification/HtcBoomSoundPreferenceBase;->onDestroyInBackground(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v4, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/android/settings/notification/HtcBoomSoundPreference;->TAG:Ljava/lang/String;

    const-string v2, "onDestroyInBackground, cleaning up A2DP proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v4, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    throw v1
.end method

.method protected onGetDefaultState()Lcom/android/settings/notification/HtcBoomSoundState;
    .locals 1

    sget-object v0, Lcom/android/settings/notification/HtcBoomSoundState;->STATE_INIT:Lcom/android/settings/notification/HtcBoomSoundState;

    return-object v0
.end method

.method protected onHandleStateChangedInBackground(Lcom/android/settings/notification/HtcBoomSoundState;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/android/settings/notification/HtcBoomSoundPreference$1;->$SwitchMap$com$android$settings$notification$HtcBoomSoundState:[I

    invoke-virtual {p1}, Lcom/android/settings/notification/HtcBoomSoundState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/android/settings/notification/HtcBoomSoundState;->STATE_OFF:Lcom/android/settings/notification/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/HtcBoomSoundPreference;->onHandleStateChangedInBackground(Lcom/android/settings/notification/HtcBoomSoundState;)V

    sget-object v0, Lcom/android/settings/notification/HtcBoomSoundState;->STATE_SYNC:Lcom/android/settings/notification/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/HtcBoomSoundPreference;->onHandleStateChangedInBackground(Lcom/android/settings/notification/HtcBoomSoundState;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/notification/HtcBoomSoundPreference;->updateBoomSoundState()V

    iget-boolean v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mIsLicenseValid:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/HtcBoomSoundPreference;->setWidgetEnabled(Z)V

    sget-object v0, Lcom/android/settings/notification/HtcBoomSoundState;->STATE_OFF:Lcom/android/settings/notification/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/HtcBoomSoundPreference;->onHandleStateChangedInBackground(Lcom/android/settings/notification/HtcBoomSoundState;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mIsMiracast:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/HtcBoomSoundPreference;->setWidgetEnabled(Z)V

    sget-object v0, Lcom/android/settings/notification/HtcBoomSoundState;->STATE_OFF:Lcom/android/settings/notification/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/HtcBoomSoundPreference;->onHandleStateChangedInBackground(Lcom/android/settings/notification/HtcBoomSoundState;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mHeadsetState:I

    if-ne v0, v3, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mHeadsetStream:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/HtcBoomSoundPreference;->setWidgetEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/notification/HtcBoomSoundPreference;->checkGlobalEffect()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mBtState:I

    if-ne v0, v3, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mBluetoothStream:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mBtDevice:I

    if-ne v3, v0, :cond_3

    const-string v0, "[setWidgetEnabled: false] BoomBass case"

    invoke-direct {p0, v0}, Lcom/android/settings/notification/HtcBoomSoundPreference;->log(Ljava/lang/String;)V

    const-string v0, "[onHandleStateChanged: STATE_OFF] BoomBass case"

    invoke-direct {p0, v0}, Lcom/android/settings/notification/HtcBoomSoundPreference;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/HtcBoomSoundPreference;->setWidgetEnabled(Z)V

    sget-object v0, Lcom/android/settings/notification/HtcBoomSoundState;->STATE_OFF:Lcom/android/settings/notification/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/HtcBoomSoundPreference;->onHandleStateChangedInBackground(Lcom/android/settings/notification/HtcBoomSoundState;)V

    goto :goto_0

    :cond_3
    const-string v0, "[setWidgetEnabled: true] BT A2DP case"

    invoke-direct {p0, v0}, Lcom/android/settings/notification/HtcBoomSoundPreference;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/HtcBoomSoundPreference;->setWidgetEnabled(Z)V

    sget-object v0, Lcom/android/settings/notification/HtcBoomSoundState;->STATE_OFF:Lcom/android/settings/notification/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/HtcBoomSoundPreference;->onHandleStateChangedInBackground(Lcom/android/settings/notification/HtcBoomSoundState;)V

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mWiredHdmiMode:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/HtcBoomSoundPreference;->setWidgetEnabled(Z)V

    sget-object v0, Lcom/android/settings/notification/HtcBoomSoundState;->STATE_OFF:Lcom/android/settings/notification/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/HtcBoomSoundPreference;->onHandleStateChangedInBackground(Lcom/android/settings/notification/HtcBoomSoundState;)V

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mIsDualSpeaker:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/HtcBoomSoundPreference;->setWidgetEnabled(Z)V

    sget-object v0, Lcom/android/settings/notification/HtcBoomSoundState;->STATE_ON:Lcom/android/settings/notification/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/HtcBoomSoundPreference;->onHandleStateChangedInBackground(Lcom/android/settings/notification/HtcBoomSoundState;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/settings/notification/HtcBoomSoundPreference;->setWidgetEnabled(Z)V

    sget-object v0, Lcom/android/settings/notification/HtcBoomSoundState;->STATE_OFF:Lcom/android/settings/notification/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/HtcBoomSoundPreference;->onHandleStateChangedInBackground(Lcom/android/settings/notification/HtcBoomSoundState;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/notification/HtcBoomSoundPreference;->getStateSummary()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/settings/notification/HtcBoomSoundPreference;->setWidgetStatus(Ljava/lang/CharSequence;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings/notification/HtcBoomSoundPreference;->getStateSummary()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/settings/notification/HtcBoomSoundPreference;->setWidgetStatus(Ljava/lang/CharSequence;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPauseInBackground(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method protected onReceiveInBackground(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "state"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mHeadsetState:I

    :cond_0
    :goto_0
    sget-object v2, Lcom/android/settings/notification/HtcBoomSoundState;->STATE_SYNC:Lcom/android/settings/notification/HtcBoomSoundState;

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/HtcBoomSoundPreference;->onHandleStateChangedInBackground(Lcom/android/settings/notification/HtcBoomSoundState;)V

    return-void

    :cond_1
    const-string v2, "HDMI_CABLE_CONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v5, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mWiredHdmiMode:Z

    goto :goto_0

    :cond_2
    const-string v2, "HDMI_CABLE_DISCONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-boolean v4, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mWiredHdmiMode:Z

    goto :goto_0

    :cond_3
    const-string v2, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v4, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mWiredHdmiMode:Z

    const-string v2, "state"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_0

    iput-boolean v5, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mWiredHdmiMode:Z

    goto :goto_0
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcom/android/settings/notification/HtcBoomSoundState;->STATE_SYNC:Lcom/android/settings/notification/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/HtcBoomSoundPreference;->onHandleStateChangedInBackground(Lcom/android/settings/notification/HtcBoomSoundState;)V

    return-void
.end method

.method public onToggleChangeInBackground(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x386

    const-string v2, "com.android.settings"

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setGlobalEffect(ILjava/lang/String;)V

    sget-object v0, Lcom/android/settings/notification/HtcBoomSoundState;->STATE_ON:Lcom/android/settings/notification/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/HtcBoomSoundPreference;->onHandleStateChangedInBackground(Lcom/android/settings/notification/HtcBoomSoundState;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/HtcBoomSoundPreference;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x320

    const-string v2, "com.android.settings"

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setGlobalEffect(ILjava/lang/String;)V

    sget-object v0, Lcom/android/settings/notification/HtcBoomSoundState;->STATE_OFF:Lcom/android/settings/notification/HtcBoomSoundState;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/HtcBoomSoundPreference;->onHandleStateChangedInBackground(Lcom/android/settings/notification/HtcBoomSoundState;)V

    goto :goto_0
.end method

.method protected setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1

    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.htc.intent.action.SOUNDEFFECT_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "HDMI_CABLE_CONNECTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "HDMI_CABLE_DISCONNECTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method
