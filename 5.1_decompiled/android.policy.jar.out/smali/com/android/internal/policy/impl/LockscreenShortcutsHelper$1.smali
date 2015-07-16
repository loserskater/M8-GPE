.class Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$1;
.super Landroid/database/ContentObserver;
.source "LockscreenShortcutsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$1;->this$0:Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$1;->this$0:Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;

    # invokes: Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->fetchTargets()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->access$000(Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$1;->this$0:Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;

    # getter for: Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->mListener:Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$OnChangeListener;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->access$100(Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;)Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$OnChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$1;->this$0:Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;

    # getter for: Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->mListener:Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$OnChangeListener;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->access$100(Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;)Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$OnChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$OnChangeListener;->onChange()V

    :cond_0
    return-void
.end method
