.class public Lcom/android/systemui/statusbar/phone/QSTileHost;
.super Ljava/lang/Object;
.source "QSTileHost.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$Host;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private mCallback:Lcom/android/systemui/qs/QSTile$Host$Callback;

.field private final mCast:Lcom/android/systemui/statusbar/policy/CastController;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private final mLocation:Lcom/android/systemui/statusbar/policy/LocationController;

.field private final mLooper:Landroid/os/Looper;

.field private final mNetwork:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mObserver:Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;

.field private final mRotation:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field private final mSecurity:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mTiles:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private final mVolume:Lcom/android/systemui/volume/VolumeComponent;

.field private final mZen:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "QSTileHost"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/volume/VolumeComponent;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/policy/SecurityController;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    new-instance v2, Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;-><init>(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mObserver:Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLocation:Lcom/android/systemui/statusbar/policy/LocationController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mRotation:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mNetwork:Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mZen:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mVolume:Lcom/android/systemui/volume/VolumeComponent;

    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    iput-object p10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    iput-object p11, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mSecurity:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v1, Landroid/os/HandlerThread;

    const-class v2, Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLooper:Landroid/os/Looper;

    new-instance v2, Lcom/android/systemui/statusbar/phone/QSTileHost$1;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/QSTileHost$1;-><init>(Lcom/android/systemui/statusbar/phone/QSTileHost;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->recreateTiles()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v2}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mObserver:Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;->register()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->recreateTiles()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/QSTileHost;)Ljava/util/LinkedHashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/QSTileHost;)Lcom/android/systemui/statusbar/policy/SecurityController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mSecurity:Lcom/android/systemui/statusbar/policy/SecurityController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/QSTileHost;)Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mObserver:Lcom/android/systemui/statusbar/phone/QSTileHost$Observer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/QSTileHost;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/QSTileHost;)Lcom/android/systemui/settings/CurrentUserTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    return-object v0
.end method

.method private createTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;"
        }
    .end annotation

    const-string v0, "intent("

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tiles/IntentTile;->create(Lcom/android/systemui/qs/QSTile$Host;Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/QSUtils;->getAvailableTiles(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad tile spec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "bt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "inversion"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "cell"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "airplane"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "rotation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v1, "flashlight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string v1, "location"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string v1, "cast"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_9
    const-string v1, "hotspot"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "notifications"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "data"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "roaming"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "dds"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "compass"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string v1, "apn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string v1, "profiles"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string v1, "performance"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string v1, "togglePowerMenu"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_13
    const-string v1, "adb_network"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_14
    const-string v1, "nfc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_15
    const-string v1, "lockscreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_16
    const-string v1, "lte"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_17
    const-string v1, "visualizer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_18
    const-string v1, "screen_timeout"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_19
    const-string v1, "screenshot"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_1a
    const-string v1, "sync"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_1b
    const-string v1, "toggleHeadsUp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_1c
    const-string v1, "battery_saver"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_1d
    const-string v1, "brightness"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_1e
    const-string v1, "expanded_desktop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_1f
    const-string v1, "screen_off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x1f

    goto/16 :goto_1

    :sswitch_20
    const-string v1, "toggleNavBar"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x20

    goto/16 :goto_1

    :sswitch_21
    const-string v1, "toggleAppCircleBar"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x21

    goto/16 :goto_1

    :sswitch_22
    const-string v1, "reboot"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x22

    goto/16 :goto_1

    :pswitch_0
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/WifiTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :pswitch_1
    new-instance v0, Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Lcom/android/systemui/qs/tiles/ColorInversionTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/ColorInversionTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :pswitch_3
    new-instance v0, Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/CellularTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :pswitch_5
    new-instance v0, Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/RotationLockTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :pswitch_6
    new-instance v0, Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/FlashlightTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :pswitch_7
    new-instance v0, Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/LocationTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :pswitch_8
    new-instance v0, Lcom/android/systemui/qs/tiles/CastTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/CastTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :pswitch_9
    new-instance v0, Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/HotspotTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :pswitch_a
    new-instance v0, Lcom/android/systemui/qs/tiles/NotificationsTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/NotificationsTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :pswitch_b
    new-instance v0, Lcom/android/systemui/qs/tiles/DataTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DataTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :pswitch_c
    new-instance v0, Lcom/android/systemui/qs/tiles/RoamingTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/RoamingTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :pswitch_d
    new-instance v0, Lcom/android/systemui/qs/tiles/DdsTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DdsTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :pswitch_e
    new-instance v0, Lcom/android/systemui/qs/tiles/CompassTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/CompassTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :pswitch_f
    new-instance v0, Lcom/android/systemui/qs/tiles/ApnTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/ApnTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :pswitch_10
    new-instance v0, Lcom/android/systemui/qs/tiles/ProfilesTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/ProfilesTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :pswitch_11
    new-instance v0, Lcom/android/systemui/qs/tiles/PerfProfileTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/PerfProfileTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :pswitch_12
    new-instance v0, Lcom/android/systemui/qs/tiles/PowerMenuTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/PowerMenuTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :pswitch_13
    new-instance v0, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/AdbOverNetworkTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :pswitch_14
    new-instance v0, Lcom/android/systemui/qs/tiles/NfcTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/NfcTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :pswitch_15
    new-instance v0, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/LockscreenToggleTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :pswitch_16
    new-instance v0, Lcom/android/systemui/qs/tiles/LteTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/LteTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :pswitch_17
    new-instance v0, Lcom/android/systemui/qs/tiles/VisualizerTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/VisualizerTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :pswitch_18
    new-instance v0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :pswitch_19
    new-instance v0, Lcom/android/systemui/qs/tiles/ScreenshotTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/ScreenshotTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :pswitch_1a
    new-instance v0, Lcom/android/systemui/qs/tiles/SyncTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SyncTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :pswitch_1b
    new-instance v0, Lcom/android/systemui/qs/tiles/HeadsupTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/HeadsupTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :pswitch_1c
    new-instance v0, Lcom/android/systemui/qs/tiles/BatterySaverTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/BatterySaverTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :pswitch_1d
    new-instance v0, Lcom/android/systemui/qs/tiles/BrightnessTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/BrightnessTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :pswitch_1e
    new-instance v0, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/ExpandedDesktopTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :pswitch_1f
    new-instance v0, Lcom/android/systemui/qs/tiles/ScreenOffTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/ScreenOffTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :pswitch_20
    new-instance v0, Lcom/android/systemui/qs/tiles/NavBarTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/NavBarTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :pswitch_21
    new-instance v0, Lcom/android/systemui/qs/tiles/AppCircleBarTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/AppCircleBarTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    :pswitch_22
    new-instance v0, Lcom/android/systemui/qs/tiles/RebootTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/RebootTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x783813ed -> :sswitch_2
        -0x6ef414f0 -> :sswitch_12
        -0x6c049572 -> :sswitch_13
        -0x583cefd0 -> :sswitch_11
        -0x49b42966 -> :sswitch_1b
        -0x468444da -> :sswitch_6
        -0x3bbd5416 -> :sswitch_10
        -0x37ba085b -> :sswitch_22
        -0x33e8fe1d -> :sswitch_1c
        -0x285a60ae -> :sswitch_4
        -0x18db78e4 -> :sswitch_1f
        -0x18d27a9a -> :sswitch_19
        -0x130a8722 -> :sswitch_17
        -0x8dd7e8a -> :sswitch_21
        -0x52ce56a -> :sswitch_1e
        -0x266f082 -> :sswitch_5
        0xc52 -> :sswitch_1
        0x17a1f -> :sswitch_f
        0x183f3 -> :sswitch_d
        0x1a3dd -> :sswitch_16
        0x1a9ab -> :sswitch_14
        0x2e7b3f -> :sswitch_8
        0x2e8962 -> :sswitch_3
        0x2eefaa -> :sswitch_b
        0x361a9b -> :sswitch_1a
        0x37af15 -> :sswitch_0
        0x26a22c51 -> :sswitch_1d
        0x3343888e -> :sswitch_18
        0x38a73d12 -> :sswitch_e
        0x39397c64 -> :sswitch_20
        0x418a9ecf -> :sswitch_9
        0x4bd694e8 -> :sswitch_a
        0x517a5c19 -> :sswitch_c
        0x6adcb957 -> :sswitch_15
        0x714f9fb5 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
    .end packed-switch
.end method

.method private loadTileSpecs()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f0b0001

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "sysui_qs_tiles"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-boolean v9, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "QSTileHost"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Config string: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v7, :cond_3

    const v9, 0x7f0b0002

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget-boolean v9, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "QSTileHost"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Loaded tile specs from config: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_6

    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    sget-boolean v9, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "QSTileHost"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Loaded tile specs from setting: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v9, "default"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    if-nez v0, :cond_2

    const-string v9, ","

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    return-object v8
.end method

.method private recreateTiles()V
    .locals 8

    sget-boolean v6, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "QSTileHost"

    const-string v7, "Recreating tiles"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->loadTileSpecs()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTile;->destroy()V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCallback:Lcom/android/systemui/qs/QSTile$Host$Callback;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCallback:Lcom/android/systemui/qs/QSTile$Host$Callback;

    invoke-interface {v6}, Lcom/android/systemui/qs/QSTile$Host$Callback;->onTilesChanged()V

    :cond_4
    return-void
.end method


# virtual methods
.method public collapsePanels()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postAnimateCollapsePanels()V

    return-void
.end method

.method public getBluetoothController()Lcom/android/systemui/statusbar/policy/BluetoothController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    return-object v0
.end method

.method public getCastController()Lcom/android/systemui/statusbar/policy/CastController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHotspotController()Lcom/android/systemui/statusbar/policy/HotspotController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    return-object v0
.end method

.method public getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object v0
.end method

.method public getLocationController()Lcom/android/systemui/statusbar/policy/LocationController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLocation:Lcom/android/systemui/statusbar/policy/LocationController;

    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mNetwork:Lcom/android/systemui/statusbar/policy/NetworkController;

    return-object v0
.end method

.method public getRotationLockController()Lcom/android/systemui/statusbar/policy/RotationLockController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mRotation:Lcom/android/systemui/statusbar/policy/RotationLockController;

    return-object v0
.end method

.method public getSecurityController()Lcom/android/systemui/statusbar/policy/SecurityController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mSecurity:Lcom/android/systemui/statusbar/policy/SecurityController;

    return-object v0
.end method

.method public getTiles()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getUserSwitcherController()Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    return-object v0
.end method

.method public getVolumeComponent()Lcom/android/systemui/volume/VolumeComponent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mVolume:Lcom/android/systemui/volume/VolumeComponent;

    return-object v0
.end method

.method public getZenModeController()Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mZen:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method public setCallback(Lcom/android/systemui/qs/QSTile$Host$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCallback:Lcom/android/systemui/qs/QSTile$Host$Callback;

    return-void
.end method

.method public startSettingsActivity(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postStartSettingsActivity(Landroid/content/Intent;I)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
