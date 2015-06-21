.class Lcom/android/systemui/cm/UserContentObserver$1;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "UserContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/cm/UserContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/cm/UserContentObserver;


# direct methods
.method constructor <init>(Lcom/android/systemui/cm/UserContentObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/cm/UserContentObserver$1;->this$0:Lcom/android/systemui/cm/UserContentObserver;

    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/cm/UserContentObserver$1;->this$0:Lcom/android/systemui/cm/UserContentObserver;

    # getter for: Lcom/android/systemui/cm/UserContentObserver;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/cm/UserContentObserver;->access$100(Lcom/android/systemui/cm/UserContentObserver;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/cm/UserContentObserver$1;->this$0:Lcom/android/systemui/cm/UserContentObserver;

    # getter for: Lcom/android/systemui/cm/UserContentObserver;->mUpdateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui/cm/UserContentObserver;->access$000(Lcom/android/systemui/cm/UserContentObserver;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 0

    return-void
.end method
