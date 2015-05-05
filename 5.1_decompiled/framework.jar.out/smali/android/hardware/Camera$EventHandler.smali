.class Landroid/hardware/Camera$EventHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private final mCamera:Landroid/hardware/Camera;

.field final synthetic this$0:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    iget v3, p1, Landroid/os/Message;->what:I

    const v4, 0x8000

    and-int/2addr v3, v4

    if-eqz v3, :cond_b

    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTC_CALLBACK: callbackType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    and-int/lit16 v5, v5, 0x7fff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " arg1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " arg2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mHtcCallback="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mHtcCallback:Landroid/hardware/Camera$HtcCallback;
    invoke-static {v5}, Landroid/hardware/Camera;->access$2200(Landroid/hardware/Camera;)Landroid/hardware/Camera$HtcCallback;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mHtcCallback:Landroid/hardware/Camera$HtcCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$2200(Landroid/hardware/Camera;)Landroid/hardware/Camera$HtcCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mHtcCallback:Landroid/hardware/Camera$HtcCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$2200(Landroid/hardware/Camera;)Landroid/hardware/Camera$HtcCallback;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    and-int/lit16 v4, v4, 0x7fff

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/hardware/Camera$HtcCallback;->OnReceive(IIILandroid/hardware/Camera;)V

    :cond_0
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mHtcHDKCallback:Ljava/lang/Object;
    invoke-static {v3}, Landroid/hardware/Camera;->access$2300(Landroid/hardware/Camera;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mHtcHDKCallback:Ljava/lang/Object;
    invoke-static {v3}, Landroid/hardware/Camera;->access$2300(Landroid/hardware/Camera;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/hardware/Camera$HtcCallback;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mHtcHDKCallback:Ljava/lang/Object;
    invoke-static {v3}, Landroid/hardware/Camera;->access$2300(Landroid/hardware/Camera;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$HtcCallback;

    iget v4, p1, Landroid/os/Message;->what:I

    and-int/lit16 v4, v4, 0x7fff

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/hardware/Camera$HtcCallback;->OnReceive(IIILandroid/hardware/Camera;)V

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v3

    invoke-interface {v3}, Landroid/hardware/Camera$ShutterCallback;->onShutter()V

    goto :goto_0

    :sswitch_1
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto :goto_0

    :sswitch_2
    # getter for: Landroid/hardware/Camera;->hasSubCam:Z
    invoke-static {}, Landroid/hardware/Camera;->access$200()Z

    move-result v3

    if-eqz v3, :cond_5

    # getter for: Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;
    invoke-static {}, Landroid/hardware/Camera;->access$300()Landroid/hardware/Camera;

    move-result-object v3

    if-eqz v3, :cond_2

    # getter for: Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;
    invoke-static {}, Landroid/hardware/Camera;->access$400()Landroid/hardware/Camera;

    move-result-object v3

    if-eqz v3, :cond_3

    # getter for: Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;
    invoke-static {}, Landroid/hardware/Camera;->access$400()Landroid/hardware/Camera;

    move-result-object v3

    # getter for: Landroid/hardware/Camera;->mIsSubCamTakePic:Z
    invoke-static {v3}, Landroid/hardware/Camera;->access$500(Landroid/hardware/Camera;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget-object v4, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    # invokes: Landroid/hardware/Camera;->sendJpgCallback([BLandroid/hardware/Camera;)V
    invoke-static {v4, v3, v5}, Landroid/hardware/Camera;->access$600(Landroid/hardware/Camera;[BLandroid/hardware/Camera;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mJpg:[B
    invoke-static {v3}, Landroid/hardware/Camera;->access$700(Landroid/hardware/Camera;)[B

    move-result-object v3

    if-nez v3, :cond_4

    iget-object v4, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    # setter for: Landroid/hardware/Camera;->mJpg:[B
    invoke-static {v4, v3}, Landroid/hardware/Camera;->access$702(Landroid/hardware/Camera;[B)[B

    :cond_4
    # getter for: Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;
    invoke-static {}, Landroid/hardware/Camera;->access$300()Landroid/hardware/Camera;

    move-result-object v3

    if-eqz v3, :cond_1

    # getter for: Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;
    invoke-static {}, Landroid/hardware/Camera;->access$400()Landroid/hardware/Camera;

    move-result-object v3

    if-eqz v3, :cond_1

    # getter for: Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;
    invoke-static {}, Landroid/hardware/Camera;->access$400()Landroid/hardware/Camera;

    move-result-object v3

    # getter for: Landroid/hardware/Camera;->mJpg:[B
    invoke-static {v3}, Landroid/hardware/Camera;->access$700(Landroid/hardware/Camera;)[B

    move-result-object v3

    if-eqz v3, :cond_1

    # getter for: Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;
    invoke-static {}, Landroid/hardware/Camera;->access$300()Landroid/hardware/Camera;

    move-result-object v3

    # getter for: Landroid/hardware/Camera;->mJpg:[B
    invoke-static {v3}, Landroid/hardware/Camera;->access$700(Landroid/hardware/Camera;)[B

    move-result-object v3

    if-eqz v3, :cond_1

    # getter for: Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;
    invoke-static {}, Landroid/hardware/Camera;->access$400()Landroid/hardware/Camera;

    move-result-object v3

    # getter for: Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;
    invoke-static {}, Landroid/hardware/Camera;->access$400()Landroid/hardware/Camera;

    move-result-object v4

    # getter for: Landroid/hardware/Camera;->mJpg:[B
    invoke-static {v4}, Landroid/hardware/Camera;->access$700(Landroid/hardware/Camera;)[B

    move-result-object v4

    array-length v4, v4

    # getter for: Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;
    invoke-static {}, Landroid/hardware/Camera;->access$300()Landroid/hardware/Camera;

    move-result-object v5

    # getter for: Landroid/hardware/Camera;->mJpg:[B
    invoke-static {v5}, Landroid/hardware/Camera;->access$700(Landroid/hardware/Camera;)[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v4, v5

    new-array v4, v4, [B

    # setter for: Landroid/hardware/Camera;->mConcateJpg:[B
    invoke-static {v3, v4}, Landroid/hardware/Camera;->access$802(Landroid/hardware/Camera;[B)[B

    # getter for: Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;
    invoke-static {}, Landroid/hardware/Camera;->access$400()Landroid/hardware/Camera;

    move-result-object v3

    # setter for: Landroid/hardware/Camera;->mIsSubCamTakePic:Z
    invoke-static {v3, v2}, Landroid/hardware/Camera;->access$502(Landroid/hardware/Camera;Z)Z

    # getter for: Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;
    invoke-static {}, Landroid/hardware/Camera;->access$400()Landroid/hardware/Camera;

    move-result-object v3

    # getter for: Landroid/hardware/Camera;->mJpg:[B
    invoke-static {v3}, Landroid/hardware/Camera;->access$700(Landroid/hardware/Camera;)[B

    move-result-object v3

    # getter for: Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;
    invoke-static {}, Landroid/hardware/Camera;->access$400()Landroid/hardware/Camera;

    move-result-object v4

    # getter for: Landroid/hardware/Camera;->mConcateJpg:[B
    invoke-static {v4}, Landroid/hardware/Camera;->access$800(Landroid/hardware/Camera;)[B

    move-result-object v4

    # getter for: Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;
    invoke-static {}, Landroid/hardware/Camera;->access$400()Landroid/hardware/Camera;

    move-result-object v5

    # getter for: Landroid/hardware/Camera;->mJpg:[B
    invoke-static {v5}, Landroid/hardware/Camera;->access$700(Landroid/hardware/Camera;)[B

    move-result-object v5

    array-length v5, v5

    invoke-static {v3, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    # getter for: Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;
    invoke-static {}, Landroid/hardware/Camera;->access$300()Landroid/hardware/Camera;

    move-result-object v3

    # getter for: Landroid/hardware/Camera;->mJpg:[B
    invoke-static {v3}, Landroid/hardware/Camera;->access$700(Landroid/hardware/Camera;)[B

    move-result-object v3

    # getter for: Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;
    invoke-static {}, Landroid/hardware/Camera;->access$400()Landroid/hardware/Camera;

    move-result-object v4

    # getter for: Landroid/hardware/Camera;->mConcateJpg:[B
    invoke-static {v4}, Landroid/hardware/Camera;->access$800(Landroid/hardware/Camera;)[B

    move-result-object v4

    # getter for: Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;
    invoke-static {}, Landroid/hardware/Camera;->access$400()Landroid/hardware/Camera;

    move-result-object v5

    # getter for: Landroid/hardware/Camera;->mJpg:[B
    invoke-static {v5}, Landroid/hardware/Camera;->access$700(Landroid/hardware/Camera;)[B

    move-result-object v5

    array-length v5, v5

    # getter for: Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;
    invoke-static {}, Landroid/hardware/Camera;->access$300()Landroid/hardware/Camera;

    move-result-object v6

    # getter for: Landroid/hardware/Camera;->mJpg:[B
    invoke-static {v6}, Landroid/hardware/Camera;->access$700(Landroid/hardware/Camera;)[B

    move-result-object v6

    array-length v6, v6

    invoke-static {v3, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;
    invoke-static {}, Landroid/hardware/Camera;->access$400()Landroid/hardware/Camera;

    move-result-object v4

    # getter for: Landroid/hardware/Camera;->mConcateJpg:[B
    invoke-static {v4}, Landroid/hardware/Camera;->access$800(Landroid/hardware/Camera;)[B

    move-result-object v4

    # getter for: Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;
    invoke-static {}, Landroid/hardware/Camera;->access$400()Landroid/hardware/Camera;

    move-result-object v5

    # invokes: Landroid/hardware/Camera;->sendJpgCallback([BLandroid/hardware/Camera;)V
    invoke-static {v3, v4, v5}, Landroid/hardware/Camera;->access$600(Landroid/hardware/Camera;[BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$900(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$900(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v4, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static {v4}, Landroid/hardware/Camera;->access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v4, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mOneShot:Z
    invoke-static {v4}, Landroid/hardware/Camera;->access$1100(Landroid/hardware/Camera;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    const/4 v4, 0x0

    # setter for: Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static {v3, v4}, Landroid/hardware/Camera;->access$1002(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;

    :cond_6
    :goto_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    iget-object v4, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v1, v3, v4}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :cond_7
    iget-object v4, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mWithBuffer:Z
    invoke-static {v4}, Landroid/hardware/Camera;->access$1200(Landroid/hardware/Camera;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # invokes: Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V
    invoke-static {v4, v3, v2}, Landroid/hardware/Camera;->access$1300(Landroid/hardware/Camera;ZZ)V

    goto :goto_1

    :sswitch_4
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$1400(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$1400(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :sswitch_5
    const/4 v0, 0x0

    iget-object v4, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;
    invoke-static {v4}, Landroid/hardware/Camera;->access$1500(Landroid/hardware/Camera;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;
    invoke-static {v5}, Landroid/hardware/Camera;->access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;

    move-result-object v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_8

    :goto_2
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v2, v3}, Landroid/hardware/Camera$AutoFocusCallback;->onAutoFocus(ZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_8
    move v2, v3

    goto :goto_2

    :sswitch_6
    iget-object v4, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;
    invoke-static {v4}, Landroid/hardware/Camera;->access$1700(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;
    invoke-static {v4}, Landroid/hardware/Camera;->access$1700(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-eqz v6, :cond_9

    :goto_3
    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v5, v3, v6}, Landroid/hardware/Camera$OnZoomChangeListener;->onZoomChange(IZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :cond_9
    move v3, v2

    goto :goto_3

    :sswitch_7
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;
    invoke-static {v3}, Landroid/hardware/Camera;->access$1800(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;
    invoke-static {v3}, Landroid/hardware/Camera;->access$1800(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Landroid/hardware/Camera$Face;

    check-cast v3, [Landroid/hardware/Camera$Face;

    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$FaceDetectionListener;->onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mOtListener:Landroid/hardware/Camera$OtDetectionListener;
    invoke-static {v3}, Landroid/hardware/Camera;->access$1900(Landroid/hardware/Camera;)Landroid/hardware/Camera$OtDetectionListener;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mOtListener:Landroid/hardware/Camera$OtDetectionListener;
    invoke-static {v3}, Landroid/hardware/Camera;->access$1900(Landroid/hardware/Camera;)Landroid/hardware/Camera$OtDetectionListener;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Landroid/hardware/Camera$Ot;

    check-cast v3, [Landroid/hardware/Camera$Ot;

    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$OtDetectionListener;->onOtDetection([Landroid/hardware/Camera$Ot;Landroid/hardware/Camera;)V

    goto/16 :goto_0

    :sswitch_9
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$2000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$2000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v3, v4, v5}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v4, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;
    invoke-static {v4}, Landroid/hardware/Camera;->access$2100(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;
    invoke-static {v4}, Landroid/hardware/Camera;->access$2100(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-nez v5, :cond_a

    :goto_4
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v2, v3}, Landroid/hardware/Camera$AutoFocusMoveCallback;->onAutoFocusMoving(ZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :cond_a
    move v2, v3

    goto :goto_4

    :cond_b
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown message type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_0
        0x4 -> :sswitch_5
        0x8 -> :sswitch_6
        0x10 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_1
        0x100 -> :sswitch_2
        0x400 -> :sswitch_7
        0x800 -> :sswitch_a
        0x4000 -> :sswitch_8
    .end sparse-switch
.end method
