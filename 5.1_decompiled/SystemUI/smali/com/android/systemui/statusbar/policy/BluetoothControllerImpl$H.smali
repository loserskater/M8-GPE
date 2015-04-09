.class Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;
.super Landroid/os/Handler;
.source "BluetoothControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->handleUpdateConnectionStates()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$1300(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->firePairedDevicesChanged()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$1400(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->handleUpdateConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$1500(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->handleConnectionChange()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$1600(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->firePairedDevicesChanged()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$1400(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->handleUpdateBondedDevices()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$1700(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->firePairedDevicesChanged()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$1400(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mProfiles:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$1800(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->handleUpdateConnectionStates()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$1300(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->firePairedDevicesChanged()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$1400(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mProfiles:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$1800(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->handleUpdateConnectionStates()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$1300(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->firePairedDevicesChanged()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$1400(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
