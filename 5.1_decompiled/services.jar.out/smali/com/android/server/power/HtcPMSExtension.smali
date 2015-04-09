.class final Lcom/android/server/power/HtcPMSExtension;
.super Ljava/lang/Object;
.source "HtcPMSExtension.java"


# static fields
.field private static final DISABLE_GC_TOLERANCE_RANGE_MB:J = 0x4L

.field private static final TAG:Ljava/lang/String; = "HtcPMSExtension"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getWakeLockTypeInfo(I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    const v1, 0xffff

    and-int/2addr v1, p0

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "FULL_WAKE_LOCK"

    goto :goto_0

    :sswitch_1
    const-string v0, "SCREEN_BRIGHT_WAKE_LOCK"

    goto :goto_0

    :sswitch_2
    const-string v0, "SCREEN_DIM_WAKE_LOCK"

    goto :goto_0

    :sswitch_3
    const-string v0, "PARTIAL_WAKE_LOCK"

    goto :goto_0

    :sswitch_4
    const-string v0, "PROXIMITY_SCREEN_OFF_WAKE_LOCK"

    goto :goto_0

    :sswitch_5
    const-string v0, "CPU_PERF_WAKE_LOCK"

    goto :goto_0

    :sswitch_6
    const-string v0, "CPU_MAX_FREQ"

    goto :goto_0

    :sswitch_7
    const-string v0, "CPU_MIN_FREQ"

    goto :goto_0

    :sswitch_8
    const-string v0, "CPU_MAX_NUM"

    goto :goto_0

    :sswitch_9
    const-string v0, "CPU_MIN_NUM"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x6 -> :sswitch_2
        0xa -> :sswitch_1
        0x1a -> :sswitch_0
        0x20 -> :sswitch_4
        0x800 -> :sswitch_5
        0x1000 -> :sswitch_6
        0x2000 -> :sswitch_7
        0x4000 -> :sswitch_8
        0x8000 -> :sswitch_9
    .end sparse-switch
.end method
