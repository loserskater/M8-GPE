.class final Lcom/android/settings/bluetooth/PanProfile;
.super Ljava/lang/Object;
.source "PanProfile.java"

# interfaces
.implements Lcom/android/settings/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/PanProfile$1;,
        Lcom/android/settings/bluetooth/PanProfile$PanServiceListener;
    }
.end annotation


# static fields
.field private static V:Z


# instance fields
.field private final mDeviceRoleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsProfileReady:Z

.field private mService:Landroid/bluetooth/BluetoothPan;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/bluetooth/PanProfile;->V:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/bluetooth/PanProfile;->mDeviceRoleMap:Ljava/util/HashMap;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/PanProfile$PanServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/bluetooth/PanProfile$PanServiceListener;-><init>(Lcom/android/settings/bluetooth/PanProfile;Lcom/android/settings/bluetooth/PanProfile$1;)V

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/bluetooth/PanProfile;->V:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/bluetooth/PanProfile;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/settings/bluetooth/PanProfile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/PanProfile;->mIsProfileReady:Z

    return p1
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    iget-object v3, p0, Lcom/android/settings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/settings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothPan;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothPan;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPan;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 4

    sget-boolean v1, Lcom/android/settings/bluetooth/PanProfile;->V:Z

    if-eqz v1, :cond_0

    const-string v1, "PanProfile"

    const-string v2, "finalize()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/settings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PanProfile"

    const-string v2, "Error cleaning up PAN proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPan;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    const v0, 0x7f02003b

    return v0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0901f2

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0901ef

    goto :goto_0
.end method

.method public getOrdinal()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public isAutoConnectable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/bluetooth/PanProfile;->mDeviceRoleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/PanProfile;->mDeviceRoleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/PanProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProfileReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/PanProfile;->mIsProfileReady:Z

    return v0
.end method

.method setLocalRole(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/PanProfile;->mDeviceRoleMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "PAN"

    return-object v0
.end method
