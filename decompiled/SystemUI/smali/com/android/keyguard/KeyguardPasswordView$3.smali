.class Lcom/android/keyguard/KeyguardPasswordView$3;
.super Ljava/lang/Object;
.source "KeyguardPasswordView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPasswordView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPasswordView;

.field final synthetic val$quickUnlock:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPasswordView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardPasswordView$3;->val$quickUnlock:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardPasswordView$3;->val$quickUnlock:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardPasswordView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardPasswordView;->resetPasswordText(Z)V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
