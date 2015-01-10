.class public Lcom/android/settings/users/ProfileUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProfileUpdateReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static copyProfileName(Landroid/content/Context;)V
    .locals 7
    .param p0    # Landroid/content/Context;

    const/4 v5, 0x0

    const-string v4, "profile"

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "name_copied_once"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const-string v4, "user"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-static {p0, v5}, Lcom/android/settings/Utils;->getMeProfileName(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v2, v3, v1}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "name_copied_once"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    new-instance v0, Lcom/android/settings/users/ProfileUpdateReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/users/ProfileUpdateReceiver$1;-><init>(Lcom/android/settings/users/ProfileUpdateReceiver;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/settings/users/ProfileUpdateReceiver$1;->start()V

    return-void
.end method
