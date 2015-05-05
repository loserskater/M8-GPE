.class Lcom/android/settings/applications/LockPatternActivity$1;
.super Ljava/lang/Object;
.source "LockPatternActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/LockPatternActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/LockPatternActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/LockPatternActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/LockPatternActivity$1;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$1;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$1;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$1;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-boolean v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mCreate:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$1;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-boolean v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mConfirming:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$1;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$1;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090475    # type="string" name="lockpattern_need_to_confirm"

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$1;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$1;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090470    # type="string" name="lockpattern_recording_intro_header"

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$1;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$1;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09011b    # type="string" name="cancel"

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity$1;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity$1;->this$0:Lcom/android/settings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09047d    # type="string" name="lockpattern_settings_enable_summary"

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
