.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

.field final synthetic val$device:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

.field final synthetic val$profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iput-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    iput-object p3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    instance-of v0, v0, Lcom/android/settings/bluetooth/MapProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    # invokes: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V
    invoke-static {v1, v0, v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$000(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroid/preference/CheckBoxPreference;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    :cond_0
    return-void
.end method
