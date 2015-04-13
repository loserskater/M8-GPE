.class Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;
.super Ljava/lang/Object;
.source "LockPatternActivity.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/LockPatternActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockPatternListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/LockPatternActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/applications/LockPatternActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/applications/LockPatternActivity;Lcom/android/settings/applications/LockPatternActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;-><init>(Lcom/android/settings/applications/LockPatternActivity;)V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPatternCleared()V
    .locals 0

    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    const v2, 0x7f09046e    # type="string" name="lockpattern_need_to_unlock_wrong"

    const/4 v4, 0x4

    const-wide/16 v6, 0x7d0

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-boolean v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mCreate:Z

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090473    # type="string" name="lockpattern_recording_incorrect_too_short"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v1, v1, Lcom/android/settings/applications/LockPatternActivity;->mCancelPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090479    # type="string" name="lockpattern_retry_button_text"

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iput-boolean v5, v0, Lcom/android/settings/applications/LockPatternActivity;->mRetryPattern:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-boolean v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mConfirming:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternHash:[B

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1, p1}, Lcom/android/settings/applications/LockPatternActivity;->patternToHash(Ljava/util/List;)[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090477    # type="string" name="lockpattern_confirm_button_text"

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090476    # type="string" name="lockpattern_pattern_confirmed_header"

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v1, v1, Lcom/android/settings/applications/LockPatternActivity;->mCancelPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090479    # type="string" name="lockpattern_retry_button_text"

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iput-boolean v5, v0, Lcom/android/settings/applications/LockPatternActivity;->mRetryPattern:Z

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1, p1}, Lcom/android/settings/applications/LockPatternActivity;->patternToHash(Ljava/util/List;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternHash:[B

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090474    # type="string" name="lockpattern_pattern_entered_header"

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternHash:[B

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1, p1}, Lcom/android/settings/applications/LockPatternActivity;->patternToHash(Ljava/util/List;)[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LockPatternActivity;->setResult(I)V

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v0}, Lcom/android/settings/applications/LockPatternActivity;->finish()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget v1, v0, Lcom/android/settings/applications/LockPatternActivity;->mRetry:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/settings/applications/LockPatternActivity;->mRetry:I

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v1, v1, Lcom/android/settings/applications/LockPatternActivity;->mCancelPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public onPatternStart()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v1, v1, Lcom/android/settings/applications/LockPatternActivity;->mCancelPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090472    # type="string" name="lockpattern_recording_inprogress"

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
