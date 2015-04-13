.class Landroid/media/AudioService$ForcedEffectEntry;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForcedEffectEntry"
.end annotation


# static fields
.field public static final ERROR:I = -0x1

.field public static final OK:I


# instance fields
.field public mCallingPid:I

.field public mCb:Landroid/os/IBinder;

.field public mClientId:Ljava/lang/String;

.field public mEffectId:I

.field public mPackageName:Ljava/lang/String;

.field public mStatus:I

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method public constructor <init>(Landroid/media/AudioService;ILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/media/AudioService$ForcedEffectEntry;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/media/AudioService$ForcedEffectEntry;->mEffectId:I

    iput-object p3, p0, Landroid/media/AudioService$ForcedEffectEntry;->mCb:Landroid/os/IBinder;

    iput-object p4, p0, Landroid/media/AudioService$ForcedEffectEntry;->mClientId:Ljava/lang/String;

    iput-object p5, p0, Landroid/media/AudioService$ForcedEffectEntry;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    iput v2, p0, Landroid/media/AudioService$ForcedEffectEntry;->mCallingPid:I

    iget-object v2, p0, Landroid/media/AudioService$ForcedEffectEntry;->mCb:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService$ForcedEffectEntry;->mCb:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/media/AudioService$ForcedEffectEntry;->mCb:Landroid/os/IBinder;

    if-nez v2, :cond_1

    const/4 v1, -0x1

    :cond_1
    iput v1, p0, Landroid/media/AudioService$ForcedEffectEntry;->mStatus:I

    return-void

    :catch_0
    move-exception v0

    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ForcedEffectEntry() could not link to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " binder death"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/AudioService$ForcedEffectEntry;->mCb:Landroid/os/IBinder;

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    iget-object v0, p0, Landroid/media/AudioService$ForcedEffectEntry;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mHtcBeatsEffect:Landroid/media/AudioService$HtcBeatsEffect;
    invoke-static {v0}, Landroid/media/AudioService;->access$7900(Landroid/media/AudioService;)Landroid/media/AudioService$HtcBeatsEffect;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioService$ForcedEffectEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/AudioService$HtcBeatsEffect;->restoreSoundEffect(Ljava/lang/String;)V

    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/media/AudioService$ForcedEffectEntry;->unlinkToDeath()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public unlinkToDeath()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$ForcedEffectEntry;->mCb:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioService$ForcedEffectEntry;->mCb:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in ForcedEffectEntry.unlinkToDeath()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
