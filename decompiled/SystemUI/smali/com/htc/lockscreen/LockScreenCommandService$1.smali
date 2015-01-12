.class Lcom/htc/lockscreen/LockScreenCommandService$1;
.super Lcom/htc/lockscreen/ILockScreenCommandService$Stub;
.source "LockScreenCommandService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/LockScreenCommandService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/LockScreenCommandService;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/LockScreenCommandService;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/lockscreen/LockScreenCommandService$1;->this$0:Lcom/htc/lockscreen/LockScreenCommandService;

    invoke-direct {p0}, Lcom/htc/lockscreen/ILockScreenCommandService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public doKeyguardAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/lockscreen/LockScreenCommandService$1;->this$0:Lcom/htc/lockscreen/LockScreenCommandService;

    invoke-virtual {v0}, Lcom/htc/lockscreen/LockScreenCommandService;->checkPermission()V

    const-string v0, "forceDismiss"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/LockScreenCommandService$1;->this$0:Lcom/htc/lockscreen/LockScreenCommandService;

    # invokes: Lcom/htc/lockscreen/LockScreenCommandService;->forceDismiss()V
    invoke-static {v0}, Lcom/htc/lockscreen/LockScreenCommandService;->access$000(Lcom/htc/lockscreen/LockScreenCommandService;)V

    :cond_0
    return-void
.end method
