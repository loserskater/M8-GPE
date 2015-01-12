.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdma()Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTelephonySignalStrength()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 522
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    .line 524
    :cond_0
    return-void
.end method

.method public onDataActivity(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    .line 545
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 546
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    .line 547
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    .line 533
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iput p2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    .line 534
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 535
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 536
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    .line 537
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    .line 508
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTelephonySignalStrength()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 509
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 510
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 511
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    .line 512
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 497
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTelephonySignalStrength()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 498
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    .line 499
    return-void
.end method
