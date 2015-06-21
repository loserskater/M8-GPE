.class Lcom/android/keyguard/KeyguardPINView$1;
.super Ljava/lang/Object;
.source "KeyguardPINView.java"

# interfaces
.implements Lcom/android/keyguard/PasswordTextView$QuickUnlockListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPINView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPINView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPINView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPINView$1;->this$0:Lcom/android/keyguard/KeyguardPINView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValidateQuickUnlock(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView$1;->this$0:Lcom/android/keyguard/KeyguardPINView;

    # invokes: Lcom/android/keyguard/KeyguardPINView;->validateQuickUnlock(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardPINView;->access$000(Lcom/android/keyguard/KeyguardPINView;Ljava/lang/String;)V

    return-void
.end method
