.class public Landroid/media/AudioService$AudioPolicyProxy;
.super Landroid/media/audiopolicy/AudioPolicyConfig;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioPolicyProxy"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioPolicyProxy"


# instance fields
.field mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

.field mFocusDuckBehavior:I

.field mHasFocusListener:Z

.field mPolicyToken:Landroid/media/audiopolicy/IAudioPolicyCallback;

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;Z)V
    .locals 3

    iput-object p1, p0, Landroid/media/AudioService$AudioPolicyProxy;->this$0:Landroid/media/AudioService;

    invoke-direct {p0, p2}, Landroid/media/audiopolicy/AudioPolicyConfig;-><init>(Landroid/media/audiopolicy/AudioPolicyConfig;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/media/audiopolicy/AudioPolicyConfig;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":ap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # operator++ for: Landroid/media/AudioService;->mAudioPolicyCounter:I
    invoke-static {p1}, Landroid/media/AudioService;->access$11008(Landroid/media/AudioService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/media/AudioService$AudioPolicyProxy;->setRegistration(Ljava/lang/String;)V

    iput-object p3, p0, Landroid/media/AudioService$AudioPolicyProxy;->mPolicyToken:Landroid/media/audiopolicy/IAudioPolicyCallback;

    iput-boolean p4, p0, Landroid/media/AudioService$AudioPolicyProxy;->mHasFocusListener:Z

    iget-boolean v0, p0, Landroid/media/AudioService$AudioPolicyProxy;->mHasFocusListener:Z

    if-eqz v0, :cond_0

    # getter for: Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;
    invoke-static {p1}, Landroid/media/AudioService;->access$9500(Landroid/media/AudioService;)Landroid/media/MediaFocusControl;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioService$AudioPolicyProxy;->mPolicyToken:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaFocusControl;->addFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioService$AudioPolicyProxy;->connectMixes()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    iget-object v0, p0, Landroid/media/AudioService$AudioPolicyProxy;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/media/AudioService;->access$7800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v0, "AudioPolicyProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio policy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService$AudioPolicyProxy;->mPolicyToken:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " died"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/media/AudioService$AudioPolicyProxy;->release()V

    iget-object v0, p0, Landroid/media/AudioService$AudioPolicyProxy;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/media/AudioService;->access$7800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Landroid/media/AudioService$AudioPolicyProxy;->mPolicyToken:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method connectMixes()V
    .locals 2

    iget-object v0, p0, Landroid/media/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I

    return-void
.end method

.method getRegistrationId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/media/AudioService$AudioPolicyProxy;->getRegistration()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method release()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Landroid/media/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/media/AudioService$AudioPolicyProxy;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;
    invoke-static {v0}, Landroid/media/AudioService;->access$9500(Landroid/media/AudioService;)Landroid/media/MediaFocusControl;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/MediaFocusControl;->setDuckingInExtPolicyAvailable(Z)V

    :cond_0
    iget-boolean v0, p0, Landroid/media/AudioService$AudioPolicyProxy;->mHasFocusListener:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/AudioService$AudioPolicyProxy;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;
    invoke-static {v0}, Landroid/media/AudioService;->access$9500(Landroid/media/AudioService;)Landroid/media/MediaFocusControl;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioService$AudioPolicyProxy;->mPolicyToken:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaFocusControl;->removeFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    :cond_1
    iget-object v0, p0, Landroid/media/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I

    return-void
.end method