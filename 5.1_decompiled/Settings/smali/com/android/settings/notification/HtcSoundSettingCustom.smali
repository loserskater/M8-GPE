.class public Lcom/android/settings/notification/HtcSoundSettingCustom;
.super Ljava/lang/Object;
.source "HtcSoundSettingCustom.java"


# static fields
.field private static mProductName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/notification/HtcSoundSettingCustom;->mProductName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isBeatsSupport()Z
    .locals 2

    sget-object v0, Lcom/android/settings/notification/HtcSoundSettingCustom;->mProductName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "ro.product.device"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/HtcSoundSettingCustom;->mProductName:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/android/settings/notification/HtcSoundSettingCustom;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/notification/HtcSoundSettingCustom;->mProductName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "m7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportBeatsAudio()Z
    .locals 1

    invoke-static {}, Lcom/android/settings/notification/HtcSoundSettingCustom;->isBeatsSupport()Z

    move-result v0

    return v0
.end method

.method public static isSupportBoomSound()Z
    .locals 1

    invoke-static {}, Lcom/android/settings/notification/HtcSoundSettingCustom;->isBeatsSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
