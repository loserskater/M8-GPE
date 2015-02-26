.class Lcom/android/systemui/doze/DozeService$3;
.super Lcom/android/systemui/doze/DozeService$ProximityCheck;
.source "DozeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/doze/DozeService;->requestPulse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeService;

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeService;J)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    iput-wide p2, p0, Lcom/android/systemui/doze/DozeService$3;->val$start:J

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/doze/DozeService$ProximityCheck;-><init>(Lcom/android/systemui/doze/DozeService;Lcom/android/systemui/doze/DozeService$1;)V

    return-void
.end method


# virtual methods
.method public onProximityResult(I)V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_1

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mUseAccelerometer:Z
    invoke-static {v4}, Lcom/android/systemui/doze/DozeService;->access$600(Lcom/android/systemui/doze/DozeService;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;
    invoke-static {v4}, Lcom/android/systemui/doze/DozeService;->access$700(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getShakeMode()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/doze/DozeService$3;->val$start:J

    sub-long/2addr v4, v6

    invoke-static {v1, v4, v5}, Lcom/android/systemui/doze/DozeLog;->traceProximityResult(ZJ)V

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    # setter for: Lcom/android/systemui/doze/DozeService;->mPulsing:Z
    invoke-static {v2, v3}, Lcom/android/systemui/doze/DozeService;->access$002(Lcom/android/systemui/doze/DozeService;Z)Z

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/systemui/doze/DozeService;->access$400(Lcom/android/systemui/doze/DozeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mShakeSensorManager:Lcom/android/systemui/doze/ShakeSensorManager;
    invoke-static {v2}, Lcom/android/systemui/doze/DozeService;->access$800(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/ShakeSensorManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/doze/ShakeSensorManager;->disable()V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mShakeSensorManager:Lcom/android/systemui/doze/ShakeSensorManager;
    invoke-static {v2}, Lcom/android/systemui/doze/DozeService;->access$800(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/ShakeSensorManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;
    invoke-static {v3}, Lcom/android/systemui/doze/DozeService;->access$700(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getShakeAccelerometerThreshold()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/doze/ShakeSensorManager;->enable(F)V

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;
    invoke-static {v2}, Lcom/android/systemui/doze/DozeService;->access$900(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/doze/DozeService$3$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/doze/DozeService$3$1;-><init>(Lcom/android/systemui/doze/DozeService$3;)V

    invoke-interface {v2, v3}, Lcom/android/systemui/doze/DozeHost;->pulseWhileDozing(Lcom/android/systemui/doze/DozeHost$PulseCallback;)V

    goto :goto_2
.end method
