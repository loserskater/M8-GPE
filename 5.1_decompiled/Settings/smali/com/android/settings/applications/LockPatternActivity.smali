.class public Lcom/android/settings/applications/LockPatternActivity;
.super Landroid/app/Activity;
.source "LockPatternActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;
    }
.end annotation


# instance fields
.field mCancel:Landroid/widget/Button;

.field mCancelOnClickListener:Landroid/view/View$OnClickListener;

.field mCancelPatternRunnable:Ljava/lang/Runnable;

.field mConfirming:Z

.field mContinue:Landroid/widget/Button;

.field mContinueOnClickListener:Landroid/view/View$OnClickListener;

.field mCreate:Z

.field mItem:Landroid/view/MenuItem;

.field mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field mPatternHash:[B

.field mPatternLockHeader:Landroid/widget/TextView;

.field mRetry:I

.field mRetryPattern:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v1, p0, Lcom/android/settings/applications/LockPatternActivity;->mRetry:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mRetryPattern:Z

    iput-boolean v1, p0, Lcom/android/settings/applications/LockPatternActivity;->mConfirming:Z

    new-instance v0, Lcom/android/settings/applications/LockPatternActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/LockPatternActivity$1;-><init>(Lcom/android/settings/applications/LockPatternActivity;)V

    iput-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mCancelPatternRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/applications/LockPatternActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/LockPatternActivity$2;-><init>(Lcom/android/settings/applications/LockPatternActivity;)V

    iput-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mCancelOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/applications/LockPatternActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/LockPatternActivity$3;-><init>(Lcom/android/settings/applications/LockPatternActivity;)V

    iput-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mContinueOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/LockPatternActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/LockPatternActivity;->resetPatternState(Z)V

    return-void
.end method

.method private resetPatternState(Z)V
    .locals 8

    const/4 v7, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pattern_lock_protected_apps"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "recreate_pattern_lock"

    invoke-virtual {p0}, Lcom/android/settings/applications/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/applications/LockPatternActivity;->mCreate:Z

    iput-object v7, p0, Lcom/android/settings/applications/LockPatternActivity;->mPatternHash:[B

    if-eqz v0, :cond_1

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/LockPatternActivity;->mPatternHash:[B

    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    iget-boolean v6, p0, Lcom/android/settings/applications/LockPatternActivity;->mCreate:Z

    if-nez v6, :cond_3

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    iget-boolean v2, p0, Lcom/android/settings/applications/LockPatternActivity;->mCreate:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f09011b    # type="string" name="cancel"

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    iget-boolean v4, p0, Lcom/android/settings/applications/LockPatternActivity;->mCreate:Z

    if-eqz v4, :cond_5

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/settings/applications/LockPatternActivity;->mCreate:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f090470    # type="string" name="lockpattern_recording_intro_header"

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    invoke-virtual {p0}, Lcom/android/settings/applications/LockPatternActivity;->invalidateOptionsMenu()V

    return-void

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    move v4, v3

    goto :goto_1

    :cond_4
    move v2, v5

    goto :goto_2

    :cond_5
    move v3, v5

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f09047d    # type="string" name="lockpattern_settings_enable_summary"

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method private switchToPattern(Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0, v3}, Lcom/android/settings/applications/LockPatternActivity;->resetPatternState(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09047d    # type="string" name="lockpattern_settings_enable_summary"

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mItem:Landroid/view/MenuItem;

    const v1, 0x7f020045    # type="drawable" name="ic_lockscreen_ime"

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0400e3    # type="layout" name="patternlock"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/LockPatternActivity;->setContentView(I)V

    const v0, 0x7f0f0274    # type="id" name="pattern_lock_header"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    const v0, 0x7f0f0275    # type="id" name="pattern_lock_btn_cancel"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity;->mCancelOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0276    # type="id" name="pattern_lock_btn_continue"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity;->mContinueOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0277    # type="id" name="lock_pattern_view"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    iput-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-direct {p0, v2}, Lcom/android/settings/applications/LockPatternActivity;->resetPatternState(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setSaveEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v1, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;-><init>(Lcom/android/settings/applications/LockPatternActivity;Lcom/android/settings/applications/LockPatternActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-boolean v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mCreate:Z

    if-nez v0, :cond_0

    const v0, 0x7f0909d7    # type="string" name="lockpattern_reset_button"

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020045    # type="drawable" name="ic_lockscreen_ime"

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mItem:Landroid/view/MenuItem;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/settings/applications/LockPatternActivity;->switchToPattern(Z)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public patternToHash(Ljava/util/List;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    new-array v6, v5, [B

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :try_start_0
    const-string v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v1, v6

    goto :goto_0
.end method
