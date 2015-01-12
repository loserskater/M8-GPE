.class Lcom/android/keyguard/KeyguardUpdateMonitor$1;
.super Landroid/os/Handler;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 156
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 224
    :goto_0
    :pswitch_0
    return-void

    .line 158
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # invokes: Lcom/android/keyguard/KeyguardUpdateMonitor;->handleTimeUpdate()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$000(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_0

    .line 161
    :pswitch_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    # invokes: Lcom/android/keyguard/KeyguardUpdateMonitor;->handleBatteryUpdate(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$100(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    goto :goto_0

    .line 164
    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # invokes: Lcom/android/keyguard/KeyguardUpdateMonitor;->handleCarrierInfoUpdate()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$200(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_0

    .line 167
    :pswitch_4
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimArgs;

    # invokes: Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/keyguard/KeyguardUpdateMonitor$SimArgs;)V
    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$300(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardUpdateMonitor$SimArgs;)V

    goto :goto_0

    .line 170
    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleRingerModeChange(I)V

    goto :goto_0

    .line 173
    :pswitch_6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handlePhoneStateChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :pswitch_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # invokes: Lcom/android/keyguard/KeyguardUpdateMonitor;->handleClockVisibilityChanged()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$400(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_0

    .line 179
    :pswitch_8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleDeviceProvisioned()V

    goto :goto_0

    .line 182
    :pswitch_9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleDevicePolicyManagerStateChanged()V

    goto :goto_0

    .line 185
    :pswitch_a
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IRemoteCallback;

    invoke-virtual {v1, v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserSwitching(ILandroid/os/IRemoteCallback;)V

    goto :goto_0

    .line 188
    :pswitch_b
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserSwitchComplete(I)V

    goto :goto_0

    .line 191
    :pswitch_c
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserRemoved(I)V

    goto :goto_0

    .line 194
    :pswitch_d
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/keyguard/KeyguardUpdateMonitor;->handleKeyguardVisibilityChanged(I)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$500(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    goto :goto_0

    .line 197
    :pswitch_e
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/keyguard/KeyguardUpdateMonitor;->handleKeyguardBouncerChanged(I)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$600(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    goto :goto_0

    .line 200
    :pswitch_f
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleBootCompleted()V

    goto :goto_0

    .line 203
    :pswitch_10
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserInfoChanged(I)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$700(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    goto :goto_0

    .line 206
    :pswitch_11
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # invokes: Lcom/android/keyguard/KeyguardUpdateMonitor;->handleReportEmergencyCallAction()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$800(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_0

    .line 209
    :pswitch_12
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleScreenTurnedOff(I)V

    goto/16 :goto_0

    .line 212
    :pswitch_13
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleScreenTurnedOn()V

    goto/16 :goto_0

    .line 215
    :pswitch_14
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAcquired(I)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$900(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    goto/16 :goto_0

    .line 218
    :pswitch_15
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintProcessed(I)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1000(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    goto/16 :goto_0

    .line 221
    :pswitch_16
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceUnlockStateChanged(ZI)V
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1100(Lcom/android/keyguard/KeyguardUpdateMonitor;ZI)V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x12d
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
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_e
        :pswitch_15
        :pswitch_14
        :pswitch_16
    .end packed-switch
.end method
