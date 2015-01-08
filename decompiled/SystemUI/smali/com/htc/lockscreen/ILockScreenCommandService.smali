.class public interface abstract Lcom/htc/lockscreen/ILockScreenCommandService;
.super Ljava/lang/Object;
.source "ILockScreenCommandService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/ILockScreenCommandService$Stub;
    }
.end annotation


# virtual methods
.method public abstract doKeyguardAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
