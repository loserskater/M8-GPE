.class public Lcom/android/systemui/statusbar/phone/DozeParameters;
.super Ljava/lang/Object;
.source "DozeParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static sPulseSchedule:Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "DozeParameters"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->DEBUG:Z

    return v0
.end method

.method private getBoolean(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x2710

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    return v1
.end method

.method private getString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "  DozeParameters:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    getDisplayStateSupported(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayStateSupported()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "    getPulseDuration(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseDuration()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "    getPulseInDuration(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseInDuration()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "    getPulseInVisibleDuration(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseVisibleDuration()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "    getPulseOutDuration(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseOutDuration()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "    getPulseOnSigMotion(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseOnSigMotion()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "    getVibrateOnSigMotion(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getVibrateOnSigMotion()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "    getPulseOnPickup(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseOnPickup()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "    getVibrateOnPickup(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getVibrateOnPickup()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "    getPulseOnNotifications(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseOnNotifications()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "    getPulseSchedule(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseSchedule()Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "    getPulseScheduleResets(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseScheduleResets()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "    getPickupVibrationThreshold(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPickupVibrationThreshold()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public getDisplayStateSupported()Z
    .locals 2

    const-string v0, "doze.display.supported"

    const v1, 0x7f080013

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getBoolean(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getFullMode()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getTimeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPocketMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHalfMode()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getTimeMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPocketMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOverwriteValue()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "doze_overwrite_value"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getPickupVibrationThreshold()I
    .locals 2

    const-string v0, "doze.pickup.vibration.threshold"

    const v1, 0x7f090027

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPocketMode()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "doze_pocket_mode"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getPulseDuration()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseInDuration()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseVisibleDuration()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseOutDuration()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getPulseInDuration()I
    .locals 4

    const v3, 0x7f090028

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getOverwriteValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_pulse_duration_in"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "doze.pulse.duration.in"

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getPulseOnNotifications()Z
    .locals 5

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getOverwriteValue()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->setUsingAccelerometerAsSensorPickUp()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "doze_pulse_on_notifications"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string v1, "doze.pulse.notifications"

    const v2, 0x7f080016

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getBoolean(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0
.end method

.method public getPulseOnPickup()Z
    .locals 2

    const-string v0, "doze.pulse.pickup"

    const v1, 0x7f080015

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getBoolean(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getPulseOnSigMotion()Z
    .locals 2

    const-string v0, "doze.pulse.sigmotion"

    const v1, 0x7f080014

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getBoolean(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getPulseOutDuration()I
    .locals 4

    const v3, 0x7f09002a

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getOverwriteValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_pulse_duration_out"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "doze.pulse.duration.out"

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getPulseSchedule()Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;
    .locals 3

    const-string v1, "doze.pulse.schedule"

    const v2, 0x7f0b0004

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/DozeParameters;->sPulseSchedule:Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/phone/DozeParameters;->sPulseSchedule:Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;

    # getter for: Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;->mSpec:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;->access$000(Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;->parse(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/phone/DozeParameters;->sPulseSchedule:Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;

    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/phone/DozeParameters;->sPulseSchedule:Lcom/android/systemui/statusbar/phone/DozeParameters$PulseSchedule;

    return-object v1
.end method

.method public getPulseScheduleResets()I
    .locals 2

    const-string v0, "doze.pulse.schedule.resets"

    const v1, 0x7f090026

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPulseVisibleDuration()I
    .locals 4

    const v3, 0x7f090029

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getOverwriteValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_pulse_duration_visible"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "doze.pulse.duration.visible"

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getShakeAccelerometerThreshold()I
    .locals 4

    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getOverwriteValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_shake_acc_threshold"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "doze.shake.acc.threshold"

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getShakeMode()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "doze_shake_mode"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getTimeMode()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "doze_time_mode"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getVibrateOnPickup()Z
    .locals 2

    const-string v0, "doze.vibrate.pickup"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getVibrateOnSigMotion()Z
    .locals 2

    const-string v0, "doze.vibrate.sigmotion"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setUsingAccelerometerAsSensorPickUp()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
