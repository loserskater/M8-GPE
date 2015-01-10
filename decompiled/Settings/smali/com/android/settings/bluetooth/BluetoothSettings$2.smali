.class Lcom/android/settings/bluetooth/BluetoothSettings$2;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$2;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 16
    .param p1    # Landroid/view/View;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    if-nez v13, :cond_0

    const-string v13, "BluetoothSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onClick() called for other View: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/bluetooth/BluetoothSettings$2;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v13}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v13

    const v14, 0x7f0e0027

    invoke-virtual {v13, v14}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v11

    check-cast v11, Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    # getter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$100()Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_1

    # getter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$100()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    if-eqz v10, :cond_1

    # getter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$100()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    if-nez v11, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/bluetooth/BluetoothSettings$2;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v13}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v13, 0x7f040014

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    # setter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;
    invoke-static {v13}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$102(Landroid/view/View;)Landroid/view/View;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v13

    const v14, 0x7f0e0027

    invoke-virtual {v13, v14}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v11

    check-cast v11, Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const v13, 0x7f040015

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v11}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getListView()Landroid/widget/ListView;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    :cond_2
    # getter for: Lcom/android/settings/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$100()Landroid/view/View;

    move-result-object v6

    new-instance v12, Landroid/app/AlertDialog$Builder;

    invoke-direct {v12, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->setDevice(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    const v13, 0x7f0e0029

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    move-object v7, v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v12, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v13, 0x7f0801de

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v13, 0x7f08011e

    new-instance v14, Lcom/android/settings/bluetooth/BluetoothSettings$2$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v6, v3}, Lcom/android/settings/bluetooth/BluetoothSettings$2$1;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings$2;Landroid/view/View;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v13, 0x7f080121

    new-instance v14, Lcom/android/settings/bluetooth/BluetoothSettings$2$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3, v1, v2}, Lcom/android/settings/bluetooth/BluetoothSettings$2$2;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings$2;Lcom/android/settings/bluetooth/CachedBluetoothDevice;Landroid/app/Activity;Landroid/content/Context;)V

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v13, Lcom/android/settings/bluetooth/BluetoothSettings$2$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v1, v7}, Lcom/android/settings/bluetooth/BluetoothSettings$2$3;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings$2;Landroid/app/Activity;Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->create()V

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    const v14, 0x20008

    invoke-virtual {v13, v14}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_0
.end method
