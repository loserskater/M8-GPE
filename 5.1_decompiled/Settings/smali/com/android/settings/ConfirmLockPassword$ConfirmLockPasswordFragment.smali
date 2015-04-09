.class public Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;
.super Landroid/app/Fragment;
.source "ConfirmLockPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ConfirmLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLockPasswordFragment"
.end annotation


# instance fields
.field private mContinueButton:Landroid/widget/Button;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mIsAlpha:Z

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNumWrongConfirmAttempts:I

.field private mPasswordEntry:Landroid/widget/TextView;

.field private final mResetErrorRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$2;-><init>(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDefaultHeader()I

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNumWrongConfirmAttempts:I

    return p1
.end method

.method private getDefaultHeader()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_0

    const v0, 0x7f090460

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f090462

    goto :goto_0
.end method

.method private handleAttemptLockout(J)V
    .locals 9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const v0, 0x7f090485

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(IJ)V

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    new-instance v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;-><init>(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;JJ)V

    invoke-virtual {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private handleNext()V
    .locals 6

    iget-object v4, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/android/settings/ConfirmLockPassword$InternalActivity;

    if-eqz v4, :cond_0

    const-string v5, "type"

    iget-boolean v4, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "password"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void

    :cond_1
    const/4 v4, 0x3

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNumWrongConfirmAttempts:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNumWrongConfirmAttempts:I

    const/4 v5, 0x5

    if-lt v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleAttemptLockout(J)V

    goto :goto_1

    :cond_3
    const v4, 0x7f09046e

    invoke-direct {p0, v4}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(I)V

    goto :goto_1
.end method

.method private showError(I)V
    .locals 2

    const-wide/16 v0, 0xbb8

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(IJ)V

    return-void
.end method

.method private showError(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0f003c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz p1, :cond_0

    const-string v0, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNumWrongConfirmAttempts:I

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    iget-object v9, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v6

    const v9, 0x7f04001e

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0f003c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v9, 0x7f0f003d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v9, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setEnabled(Z)V

    const v9, 0x7f0f003b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v9, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v9, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v9, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v9, 0x7f0f003e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v9, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    const v9, 0x7f0f003a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const/high16 v9, 0x40000

    if-eq v9, v6, :cond_0

    const/high16 v9, 0x50000

    if-eq v9, v6, :cond_0

    const/high16 v9, 0x60000

    if-ne v9, v6, :cond_4

    :cond_0
    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v9, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDefaultHeader()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-object v9, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v9, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v10, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iget-object v11, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v9, v0, v10, v11}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v9, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v10, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-boolean v9, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v10, v9}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    iget-object v9, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v9}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    iget-object v9, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    iget-object v9, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-boolean v10, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v10, :cond_6

    :goto_2
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setInputType(I)V

    instance-of v9, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v9, :cond_3

    move-object v5, v0

    check-cast v5, Lcom/android/settings/SettingsActivity;

    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDefaultHeader()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    return-object v8

    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    :cond_5
    const/4 v9, 0x1

    goto :goto_1

    :cond_6
    const/16 v1, 0x12

    goto :goto_2
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v2}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleAttemptLockout(J)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    iget v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNumWrongConfirmAttempts:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
