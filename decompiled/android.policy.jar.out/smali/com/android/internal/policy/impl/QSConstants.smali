.class public Lcom/android/internal/policy/impl/QSConstants;
.super Ljava/lang/Object;
.source "QSConstants.java"


# static fields
.field protected static final TILES_AVAILABLE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final TILES_DEFAULT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TILE_ADB_NETWORK:Ljava/lang/String; = "adb_network"

.field public static final TILE_AIRPLANE:Ljava/lang/String; = "airplane"

.field public static final TILE_APN:Ljava/lang/String; = "apn"

.field public static final TILE_APPCIRCLEBAR:Ljava/lang/String; = "toggleAppCircleBar"

.field public static final TILE_BATTERY_SAVER:Ljava/lang/String; = "battery_saver"

.field public static final TILE_BLUETOOTH:Ljava/lang/String; = "bt"

.field public static final TILE_BRIGHTNESS:Ljava/lang/String; = "brightness"

.field public static final TILE_CAST:Ljava/lang/String; = "cast"

.field public static final TILE_CELLULAR:Ljava/lang/String; = "cell"

.field public static final TILE_COMPASS:Ljava/lang/String; = "compass"

.field public static final TILE_DATA:Ljava/lang/String; = "data"

.field public static final TILE_DDS:Ljava/lang/String; = "dds"

.field public static final TILE_EXPANDED_DESKTOP:Ljava/lang/String; = "expanded_desktop"

.field public static final TILE_FLASHLIGHT:Ljava/lang/String; = "flashlight"

.field public static final TILE_HEADS_UP:Ljava/lang/String; = "toggleHeadsUp"

.field public static final TILE_HOTSPOT:Ljava/lang/String; = "hotspot"

.field public static final TILE_INVERSION:Ljava/lang/String; = "inversion"

.field public static final TILE_LOCATION:Ljava/lang/String; = "location"

.field public static final TILE_LOCKSCREEN:Ljava/lang/String; = "lockscreen"

.field public static final TILE_LTE:Ljava/lang/String; = "lte"

.field public static final TILE_NAVBAR:Ljava/lang/String; = "toggleNavBar"

.field public static final TILE_NFC:Ljava/lang/String; = "nfc"

.field public static final TILE_NOTIFICATIONS:Ljava/lang/String; = "notifications"

.field public static final TILE_PERFORMANCE:Ljava/lang/String; = "performance"

.field public static final TILE_POWERMENU:Ljava/lang/String; = "togglePowerMenu"

.field public static final TILE_PROFILES:Ljava/lang/String; = "profiles"

.field public static final TILE_REBOOT:Ljava/lang/String; = "reboot"

.field public static final TILE_ROAMING:Ljava/lang/String; = "roaming"

.field public static final TILE_ROTATION:Ljava/lang/String; = "rotation"

.field public static final TILE_SCREENSHOT:Ljava/lang/String; = "screenshot"

.field public static final TILE_SCREEN_OFF:Ljava/lang/String; = "screen_off"

.field public static final TILE_SCREEN_TIMEOUT:Ljava/lang/String; = "screen_timeout"

.field public static final TILE_SYNC:Ljava/lang/String; = "sync"

.field public static final TILE_VISUALIZER:Ljava/lang/String; = "visualizer"

.field public static final TILE_WIFI:Ljava/lang/String; = "wifi"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v1, "bt"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v1, "cell"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v1, "airplane"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v1, "rotation"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v1, "flashlight"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v1, "cast"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/policy/impl/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string v1, "inversion"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string v1, "hotspot"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string v1, "notifications"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string v1, "roaming"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string v1, "dds"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string v1, "apn"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string v1, "profiles"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string v1, "performance"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string v1, "togglePowerMenu"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string v1, "adb_network"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string v1, "nfc"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string v1, "compass"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string v1, "lockscreen"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string v1, "lte"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string v1, "visualizer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string v1, "screen_timeout"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string v1, "screenshot"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string v1, "sync"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string v1, "toggleHeadsUp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string v1, "battery_saver"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string v1, "brightness"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string v1, "expanded_desktop"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string v1, "screen_off"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string v1, "toggleNavBar"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string v1, "toggleAppCircleBar"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/policy/impl/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string v1, "reboot"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
