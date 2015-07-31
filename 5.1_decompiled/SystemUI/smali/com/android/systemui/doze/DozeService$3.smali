.class Lcom/android/systemui/doze/DozeService$3;
.super Lcom/android/systemui/doze/DozeService$ProximityCheck;
.source "DozeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/doze/DozeService;->requestPulse(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeService;

.field final synthetic val$nonBlocking:Z

.field final synthetic val$reason:I

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeService;JIZ)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    iput-wide p2, p0, Lcom/android/systemui/doze/DozeService$3;->val$start:J

    iput p4, p0, Lcom/android/systemui/doze/DozeService$3;->val$reason:I

    iput-boolean p5, p0, Lcom/android/systemui/doze/DozeService$3;->val$nonBlocking:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/doze/DozeService$ProximityCheck;-><init>(Lcom/android/systemui/doze/DozeService;Lcom/android/systemui/doze/DozeService$1;)V

    return-void
.end method


# virtual methods
.method public onProximityResult(I)V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p1, v4, :cond_1

    move v3, v4

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mUseAccelerometer:Z
    invoke-static {v6}, Lcom/android/systemui/doze/DozeService;->access$600(Lcom/android/systemui/doze/DozeService;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;
    invoke-static {v6}, Lcom/android/systemui/doze/DozeService;->access$700(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getShakeMode()Z

    move-result v6

    if-eqz v6, :cond_2

    move v2, v4

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/android/systemui/doze/DozeService$3;->val$start:J

    sub-long v6, v0, v6

    iget v4, p0, Lcom/android/systemui/doze/DozeService$3;->val$reason:I

    invoke-static {v3, v6, v7, v4}, Lcom/android/systemui/doze/DozeLog;->traceProximityResult(ZJI)V

    iget-boolean v4, p0, Lcom/android/systemui/doze/DozeService$3;->val$nonBlocking:Z

    if-eqz v4, :cond_3

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    # setter for: Lcom/android/systemui/doze/DozeService;->mPulsing:Z
    invoke-static {v4, v5}, Lcom/android/systemui/doze/DozeService;->access$002(Lcom/android/systemui/doze/DozeService;Z)Z

    iget-object v4, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/systemui/doze/DozeService;->access$400(Lcom/android/systemui/doze/DozeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mShakeSensorManager:Lcom/android/systemui/doze/ShakeSensorManager;
    invoke-static {v4}, Lcom/android/systemui/doze/DozeService;->access$800(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/ShakeSensorManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/doze/ShakeSensorManager;->disable()V

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mShakeSensorManager:Lcom/android/systemui/doze/ShakeSensorManager;
    invoke-static {v4}, Lcom/android/systemui/doze/DozeService;->access$800(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/ShakeSensorManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;
    invoke-static {v5}, Lcom/android/systemui/doze/DozeService;->access$700(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getShakeAccelerometerThreshold()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/doze/ShakeSensorManager;->enable(F)V

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/doze/DozeService$3;->this$0:Lcom/android/systemui/doze/DozeService;

    iget v5, p0, Lcom/android/systemui/doze/DozeService$3;->val$reason:I

    # invokes: Lcom/android/systemui/doze/DozeService;->continuePulsing(I)V
    invoke-static {v4, v5}, Lcom/android/systemui/doze/DozeService;->access$900(Lcom/android/systemui/doze/DozeService;I)V

    goto :goto_2
.end method
