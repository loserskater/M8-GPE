.class Landroid/media/AudioService$HtcBeatsEffect;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HtcBeatsEffect"
.end annotation


# static fields
.field public static final EVT_BTHEADSET:I = 0x2

.field public static final EVT_BTSUBWOOFER:I = 0x6

.field public static final EVT_HDMI:I = 0x4

.field public static final EVT_HEADSET:I = 0x1

.field public static final EVT_MIRACAST:I = 0x5

.field public static final EVT_WIRELESSDISPLAY:I = 0x3


# instance fields
.field private mBTA2dpHeadset:Z

.field private mBTHeadsetConnected:Z

.field private mBeatsSpeaker:Z

.field private mCurrentSoundEffect:I

.field private final mEffectCommands:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mForcedEffectStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/AudioService$ForcedEffectEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mHDMIOn:Z

.field private mHeadsetConnected:Z

.field private mIconId:I

.field private final mLock:Ljava/lang/Object;

.field private mMiracastOn:Z

.field private mMirrorOn:Z

.field private mNotificationOn:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSubwooferHeadset:Z

.field private mSubwooferOn:Z

.field private mSystemSoundEffect:I

.field private final mValidEffectCommands:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoEvent:Landroid/media/AudioService$VideoEvent;

.field private mVideoOn:Z

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method public constructor <init>(Landroid/media/AudioService;Landroid/content/Context;)V
    .locals 8

    const/16 v7, 0x386

    const/16 v6, 0x384

    const/16 v5, 0x320

    const/16 v4, -0x64

    const/4 v3, 0x0

    iput-object p1, p0, Landroid/media/AudioService$HtcBeatsEffect;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mLock:Ljava/lang/Object;

    iput-boolean v3, p0, Landroid/media/AudioService$HtcBeatsEffect;->mNotificationOn:Z

    const-string v0, "ro.product.device"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # setter for: Landroid/media/AudioService;->mProductName:Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/media/AudioService;->access$10002(Landroid/media/AudioService;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "statusbar"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mStatusBarManager:Landroid/app/StatusBarManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mEffectCommands:Ljava/util/HashMap;

    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mEffectCommands:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_effect=none"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mEffectCommands:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_effect=Beats"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mEffectCommands:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_effect=SRS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mValidEffectCommands:Ljava/util/HashMap;

    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mValidEffectCommands:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_effect=none"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    # invokes: Landroid/media/AudioService;->isBeatsSupport()Z
    invoke-static {p1}, Landroid/media/AudioService;->access$10100(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mValidEffectCommands:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_effect=Beats"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iput v4, p0, Landroid/media/AudioService$HtcBeatsEffect;->mSystemSoundEffect:I

    iput v4, p0, Landroid/media/AudioService$HtcBeatsEffect;->mCurrentSoundEffect:I

    iput-boolean v3, p0, Landroid/media/AudioService$HtcBeatsEffect;->mMirrorOn:Z

    iput-boolean v3, p0, Landroid/media/AudioService$HtcBeatsEffect;->mHeadsetConnected:Z

    iput-boolean v3, p0, Landroid/media/AudioService$HtcBeatsEffect;->mBTHeadsetConnected:Z

    iput-boolean v3, p0, Landroid/media/AudioService$HtcBeatsEffect;->mBTA2dpHeadset:Z

    iput-boolean v3, p0, Landroid/media/AudioService$HtcBeatsEffect;->mHDMIOn:Z

    iput-boolean v3, p0, Landroid/media/AudioService$HtcBeatsEffect;->mVideoOn:Z

    iput-boolean v3, p0, Landroid/media/AudioService$HtcBeatsEffect;->mMiracastOn:Z

    iput-boolean v3, p0, Landroid/media/AudioService$HtcBeatsEffect;->mSubwooferOn:Z

    iput-boolean v3, p0, Landroid/media/AudioService$HtcBeatsEffect;->mSubwooferHeadset:Z

    invoke-static {}, Landroid/media/AudioManager;->hasBeatsSpeaker()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mBeatsSpeaker:Z

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mForcedEffectStack:Ljava/util/Stack;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mVideoEvent:Landroid/media/AudioService$VideoEvent;

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mValidEffectCommands:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_effect=SRS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private checkBeatsSupport()Z
    .locals 3

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcBeatsEffect]checkBeatsSupport mMirrorOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/AudioService$HtcBeatsEffect;->mMirrorOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMiracastOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/AudioService$HtcBeatsEffect;->mMiracastOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSubwooferOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/AudioService$HtcBeatsEffect;->mSubwooferOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSubwooferHeadset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/AudioService$HtcBeatsEffect;->mSubwooferHeadset:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHeadsetConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/AudioService$HtcBeatsEffect;->mHeadsetConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBTHeadsetConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/AudioService$HtcBeatsEffect;->mBTHeadsetConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBTA2dpHeadset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/AudioService$HtcBeatsEffect;->mBTA2dpHeadset:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHDMIOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/AudioService$HtcBeatsEffect;->mHDMIOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBeatsSpeaker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/AudioService$HtcBeatsEffect;->mBeatsSpeaker:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mMirrorOn:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mMiracastOn:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mSubwooferOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mSubwooferHeadset:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mBTHeadsetConnected:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mBTA2dpHeadset:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mHeadsetConnected:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mHDMIOn:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mBeatsSpeaker:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private convertEffect(I)I
    .locals 4

    const/16 v0, 0x386

    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcBeatsEffect]convertEffect before="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x320

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->isBeatsSupport()Z
    invoke-static {v1}, Landroid/media/AudioService;->access$10100(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mBeatsSpeaker:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mHeadsetConnected:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mBTHeadsetConnected:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mVideoOn:Z

    if-nez v1, :cond_0

    move p1, v0

    :cond_0
    :goto_0
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcBeatsEffect]convertEffect after="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_1
    iget-boolean v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mBeatsSpeaker:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mHeadsetConnected:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mBTHeadsetConnected:Z

    if-nez v1, :cond_2

    move p1, v0

    :cond_2
    goto :goto_0
.end method

.method private isValidSystemSoundEffect(I)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mValidEffectCommands:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "this SystemSoundEffect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not valid!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeForcedEffectEntry(Ljava/lang/String;)V
    .locals 3

    iget-object v2, p0, Landroid/media/AudioService$HtcBeatsEffect;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ForcedEffectEntry;

    iget-object v2, v0, Landroid/media/AudioService$ForcedEffectEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v0}, Landroid/media/AudioService$ForcedEffectEntry;->unlinkToDeath()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateSoundEffect()V
    .locals 12

    const/16 v3, 0x320

    const/4 v2, 0x0

    const/4 v9, 0x0

    invoke-direct {p0}, Landroid/media/AudioService$HtcBeatsEffect;->checkBeatsSupport()Z

    move-result v10

    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mEffectCommands:Ljava/util/HashMap;

    iget v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mCurrentSoundEffect:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_3

    iget v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mCurrentSoundEffect:I

    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ForcedEffectEntry;

    iget v0, v0, Landroid/media/AudioService$ForcedEffectEntry;->mEffectId:I

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ForcedEffectEntry;

    iget v0, v0, Landroid/media/AudioService$ForcedEffectEntry;->mEffectId:I

    iput v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mCurrentSoundEffect:I

    const/4 v9, 0x1

    :cond_0
    :goto_0
    if-eqz v9, :cond_2

    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mEffectCommands:Ljava/util/HashMap;

    iget v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mCurrentSoundEffect:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcBeatsEffect]setParameters("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v0}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    const/16 v1, 0x3e8

    const/4 v5, 0x0

    move v3, v2

    move v4, v2

    move v6, v2

    # invokes: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->this$0:Landroid/media/AudioService;

    iget v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mCurrentSoundEffect:I

    # invokes: Landroid/media/AudioService;->broadcastSoundEffectChanged(I)V
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$10300(Landroid/media/AudioService;I)V

    :cond_2
    return-void

    :cond_3
    if-nez v10, :cond_4

    iget v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mCurrentSoundEffect:I

    if-eq v0, v3, :cond_4

    iput v3, p0, Landroid/media/AudioService$HtcBeatsEffect;->mCurrentSoundEffect:I

    const/4 v9, 0x1

    goto :goto_0

    :cond_4
    if-eqz v10, :cond_0

    iget v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mSystemSoundEffect:I

    invoke-direct {p0, v0}, Landroid/media/AudioService$HtcBeatsEffect;->convertEffect(I)I

    move-result v8

    iget v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mCurrentSoundEffect:I

    if-eq v0, v8, :cond_0

    iput v8, p0, Landroid/media/AudioService$HtcBeatsEffect;->mCurrentSoundEffect:I

    const/4 v9, 0x1

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 5

    const-string v2, "\nHtcBeatsEffect ForcedEffect stack entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/media/AudioService$HtcBeatsEffect;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService$HtcBeatsEffect;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ForcedEffectEntry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "     source:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$ForcedEffectEntry;->mCb:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- client: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$ForcedEffectEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- package: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$ForcedEffectEntry;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- pid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$ForcedEffectEntry;->mCallingPid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public forceSoundEffect(ILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcBeatsEffect]forceSoundEffect effect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " client="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/media/AudioService$HtcBeatsEffect;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$ForcedEffectEntry;

    iget-object v1, v1, Landroid/media/AudioService$ForcedEffectEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$ForcedEffectEntry;

    iget v1, v1, Landroid/media/AudioService$ForcedEffectEntry;->mEffectId:I

    if-ne v1, p1, :cond_0

    monitor-exit v6

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioService$HtcBeatsEffect;->isValidSystemSoundEffect(I)Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    invoke-direct {p0, p3}, Landroid/media/AudioService$HtcBeatsEffect;->removeForcedEffectEntry(Ljava/lang/String;)V

    new-instance v0, Landroid/media/AudioService$ForcedEffectEntry;

    iget-object v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->this$0:Landroid/media/AudioService;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService$ForcedEffectEntry;-><init>(Landroid/media/AudioService;ILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v0, Landroid/media/AudioService$ForcedEffectEntry;->mStatus:I

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/media/AudioService$HtcBeatsEffect;->updateSoundEffect()V

    :cond_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getSoundEffect(Z)I
    .locals 2

    const-string v0, "AudioService"

    const-string v1, "[HtcBeatsEffect]getSoundEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mSystemSoundEffect:I

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mCurrentSoundEffect:I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hideBeatsIcon()V
    .locals 2

    iget-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mNotificationOn:Z

    if-eqz v0, :cond_0

    const-string v0, "AudioService"

    const-string v1, "[HtcBeatsEffect]disableBeats notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mNotificationOn:Z

    :cond_0
    return-void
.end method

.method public loadSoundEffect()V
    .locals 4

    iget-object v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "audio.soundenhancer.effect"

    const/16 v3, -0x64

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcBeatsEffect]loadSoundEffect id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mProductName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService$HtcBeatsEffect;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mProductName:Ljava/lang/String;
    invoke-static {v3}, Landroid/media/AudioService;->access$10000(Landroid/media/AudioService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/media/AudioService$HtcBeatsEffect;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, v0}, Landroid/media/AudioService$HtcBeatsEffect;->isValidSystemSoundEffect(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mSystemSoundEffect:I

    :goto_0
    invoke-direct {p0}, Landroid/media/AudioService$HtcBeatsEffect;->updateSoundEffect()V

    monitor-exit v2

    return-void

    :cond_0
    iget-object v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->isBeatsSupport()Z
    invoke-static {v1}, Landroid/media/AudioService;->access$10100(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x384

    iput v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mSystemSoundEffect:I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    const/16 v1, 0x386

    :try_start_1
    iput v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mSystemSoundEffect:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onEventChanged(IZ)V
    .locals 3

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcBeatsEffect]onEventChanged id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mLock:Ljava/lang/Object;

    monitor-enter v1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioService$HtcBeatsEffect;->updateSoundEffect()V

    monitor-exit v1

    return-void

    :pswitch_0
    iput-boolean p2, p0, Landroid/media/AudioService$HtcBeatsEffect;->mHeadsetConnected:Z

    iget-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mSubwooferOn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mHeadsetConnected:Z

    if-eqz v0, :cond_1

    const-string v0, "AudioService"

    const-string v2, "[HtcBeatsEffect]Subwoofer connected and plug headset later!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mSubwooferHeadset:Z

    :goto_1
    iget-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mBTHeadsetConnected:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mHeadsetConnected:Z

    if-eqz v0, :cond_2

    const-string v0, "AudioService"

    const-string v2, "[HtcBeatsEffect]bt a2dp connected and plug headset later!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mBTA2dpHeadset:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mSubwooferHeadset:Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mBTA2dpHeadset:Z

    goto :goto_0

    :pswitch_1
    iput-boolean p2, p0, Landroid/media/AudioService$HtcBeatsEffect;->mBTHeadsetConnected:Z

    iget-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mBTHeadsetConnected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mBTA2dpHeadset:Z

    goto :goto_0

    :pswitch_2
    iput-boolean p2, p0, Landroid/media/AudioService$HtcBeatsEffect;->mMirrorOn:Z

    goto :goto_0

    :pswitch_3
    iput-boolean p2, p0, Landroid/media/AudioService$HtcBeatsEffect;->mHDMIOn:Z

    goto :goto_0

    :pswitch_4
    iput-boolean p2, p0, Landroid/media/AudioService$HtcBeatsEffect;->mMiracastOn:Z

    goto :goto_0

    :pswitch_5
    iput-boolean p2, p0, Landroid/media/AudioService$HtcBeatsEffect;->mSubwooferOn:Z

    iget-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mSubwooferOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mSubwooferHeadset:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onMessageBeatsNotify()V
    .locals 5

    iget-object v3, p0, Landroid/media/AudioService$HtcBeatsEffect;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mCurrentSoundEffect:I

    # getter for: Landroid/media/AudioService;->SUPPORT_DTS:Z
    invoke-static {}, Landroid/media/AudioService;->access$10200()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x320

    if-ne v1, v2, :cond_0

    iget-boolean v2, p0, Landroid/media/AudioService$HtcBeatsEffect;->mVideoOn:Z

    if-eqz v2, :cond_0

    const/16 v1, 0x385

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcBeatsEffect]onMessageBeatsNotify active="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " effect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onVideoEvent(Landroid/os/IBinder;Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcBeatsEffect]onVideoEvent client="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p3, :cond_2

    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mVideoEvent:Landroid/media/AudioService$VideoEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mVideoEvent:Landroid/media/AudioService$VideoEvent;

    iget-object v0, v0, Landroid/media/AudioService$VideoEvent;->mClientId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mVideoEvent:Landroid/media/AudioService$VideoEvent;

    invoke-virtual {v0}, Landroid/media/AudioService$VideoEvent;->unlinkToDeath()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mVideoEvent:Landroid/media/AudioService$VideoEvent;

    :cond_0
    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mVideoEvent:Landroid/media/AudioService$VideoEvent;

    if-nez v0, :cond_1

    new-instance v0, Landroid/media/AudioService$VideoEvent;

    iget-object v2, p0, Landroid/media/AudioService$HtcBeatsEffect;->this$0:Landroid/media/AudioService;

    invoke-direct {v0, v2, p1, p2}, Landroid/media/AudioService$VideoEvent;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mVideoEvent:Landroid/media/AudioService$VideoEvent;

    :cond_1
    :goto_0
    iput-boolean p3, p0, Landroid/media/AudioService$HtcBeatsEffect;->mVideoOn:Z

    invoke-direct {p0}, Landroid/media/AudioService$HtcBeatsEffect;->updateSoundEffect()V

    monitor-exit v1

    return-void

    :cond_2
    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mVideoEvent:Landroid/media/AudioService$VideoEvent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mVideoEvent:Landroid/media/AudioService$VideoEvent;

    invoke-virtual {v0}, Landroid/media/AudioService$VideoEvent;->unlinkToDeath()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mVideoEvent:Landroid/media/AudioService$VideoEvent;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetSoundEffect()V
    .locals 2

    const-string v0, "AudioService"

    const-string v1, "[HtcBeatsEffect]resetSoundEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/16 v0, -0x64

    :try_start_0
    iput v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mSystemSoundEffect:I

    const/16 v0, -0x64

    iput v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mCurrentSoundEffect:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public restoreSoundEffect(Ljava/lang/String;)V
    .locals 4

    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcBeatsEffect]restoreSoundEffect client="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/media/AudioService$HtcBeatsEffect;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$ForcedEffectEntry;

    iget-object v1, v1, Landroid/media/AudioService$ForcedEffectEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ForcedEffectEntry;

    invoke-virtual {v0}, Landroid/media/AudioService$ForcedEffectEntry;->unlinkToDeath()V

    invoke-direct {p0}, Landroid/media/AudioService$HtcBeatsEffect;->updateSoundEffect()V

    :goto_0
    monitor-exit v2

    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioService$HtcBeatsEffect;->removeForcedEffectEntry(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSystemSoundEffect(I)V
    .locals 8

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcBeatsEffect]setSystemSoundEffect id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Landroid/media/AudioService$HtcBeatsEffect;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mSystemSoundEffect:I

    if-ne v0, p1, :cond_0

    const-string v0, "AudioService"

    const-string v1, "[HtcBeatsEffect]system sound effect is the same as previous"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    :goto_0
    return-void

    :cond_0
    const/16 v0, -0x64

    if-eq p1, v0, :cond_2

    invoke-direct {p0, p1}, Landroid/media/AudioService$HtcBeatsEffect;->isValidSystemSoundEffect(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iput p1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mSystemSoundEffect:I

    :goto_1
    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v0}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    iget v3, p0, Landroid/media/AudioService$HtcBeatsEffect;->mSystemSoundEffect:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    # invokes: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    invoke-direct {p0}, Landroid/media/AudioService$HtcBeatsEffect;->updateSoundEffect()V

    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v7

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->isBeatsSupport()Z
    invoke-static {v0}, Landroid/media/AudioService;->access$10100(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x384

    iput v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mSystemSoundEffect:I

    goto :goto_1

    :cond_3
    const/16 v0, 0x386

    iput v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mSystemSoundEffect:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public showBeatsIcon(I)V
    .locals 2

    iget-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mNotificationOn:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mIconId:I

    if-eq v0, p1, :cond_1

    :cond_0
    const-string v0, "AudioService"

    const-string v1, "[HtcBeatsEffect]enableBeats notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Landroid/media/AudioService$HtcBeatsEffect;->mIconId:I

    iget v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mIconId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/AudioService$HtcBeatsEffect;->mNotificationOn:Z

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
