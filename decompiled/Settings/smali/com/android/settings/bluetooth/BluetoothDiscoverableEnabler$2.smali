.class Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$2;
.super Ljava/lang/Object;
.source "BluetoothDiscoverableEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    # invokes: Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->updateCountdownSummary()V
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->access$000(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V

    return-void
.end method
