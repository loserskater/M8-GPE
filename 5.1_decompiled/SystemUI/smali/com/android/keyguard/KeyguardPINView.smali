.class public Lcom/android/keyguard/KeyguardPINView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardPINView.java"


# static fields
.field private static sNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

.field private final mDisappearAnimationUtils:Lcom/android/keyguard/DisappearAnimationUtils;

.field private mDisappearYTranslation:I

.field private mDivider:Landroid/view/View;

.field private mKeyguardBouncerFrame:Landroid/view/ViewGroup;

.field private mRow0:Landroid/view/ViewGroup;

.field private mRow1:Landroid/view/ViewGroup;

.field private mRow2:Landroid/view/ViewGroup;

.field private mRow3:Landroid/view/ViewGroup;

.field private mViews:[[Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardPINView;->sNumbers:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/keyguard/AppearAnimationUtils;

    invoke-direct {v0, p1}, Lcom/android/keyguard/AppearAnimationUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPINView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->disappear_y_translation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearYTranslation:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardPINView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPINView;->validateQuickUnlock(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardPINView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPINView;->enableClipping(Z)V

    return-void
.end method

.method private enableClipping(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mKeyguardBouncerFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mKeyguardBouncerFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow1:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow2:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow3:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardPINView;->setClipChildren(Z)V

    return-void
.end method

.method private validateQuickUnlock(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPINView;->resetPasswordText(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    sget v0, Lcom/android/keyguard/R$id;->pinEntry:I

    return v0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    sget v0, Lcom/android/keyguard/R$string;->kg_wrong_pin:I

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 12

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    sget v8, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/android/keyguard/KeyguardPINView;->mKeyguardBouncerFrame:Landroid/view/ViewGroup;

    sget v8, Lcom/android/keyguard/R$id;->row0:I

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/android/keyguard/KeyguardPINView;->mRow0:Landroid/view/ViewGroup;

    sget v8, Lcom/android/keyguard/R$id;->row1:I

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/android/keyguard/KeyguardPINView;->mRow1:Landroid/view/ViewGroup;

    sget v8, Lcom/android/keyguard/R$id;->row2:I

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/android/keyguard/KeyguardPINView;->mRow2:Landroid/view/ViewGroup;

    sget v8, Lcom/android/keyguard/R$id;->row3:I

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/android/keyguard/KeyguardPINView;->mRow3:Landroid/view/ViewGroup;

    sget v8, Lcom/android/keyguard/R$id;->divider:I

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/keyguard/KeyguardPINView;->mDivider:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPINView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "quick_unlock"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_1

    move v4, v9

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPINView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "scramble_pin"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_2

    move v5, v9

    :goto_1
    if-eqz v5, :cond_5

    sget-object v8, Lcom/android/keyguard/KeyguardPINView;->sNumbers:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    sget v8, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    if-ge v1, v8, :cond_4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v8, v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    if-ge v2, v8, :cond_3

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Lcom/android/keyguard/NumPadKey;

    if-ne v8, v9, :cond_0

    check-cast v6, Lcom/android/keyguard/NumPadKey;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1
    move v4, v10

    goto :goto_0

    :cond_2
    move v5, v10

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_4
    sget-object v8, Lcom/android/keyguard/KeyguardPINView;->sNumbers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_5

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/keyguard/NumPadKey;

    sget-object v8, Lcom/android/keyguard/KeyguardPINView;->sNumbers:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/keyguard/NumPadKey;->setDigit(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    if-eqz v4, :cond_6

    iget-object v8, p0, Lcom/android/keyguard/KeyguardPINView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    new-instance v9, Lcom/android/keyguard/KeyguardPINView$1;

    invoke-direct {v9, p0}, Lcom/android/keyguard/KeyguardPINView$1;-><init>(Lcom/android/keyguard/KeyguardPINView;)V

    invoke-virtual {v8, v9}, Lcom/android/keyguard/PasswordTextView;->setQuickUnlockListener(Lcom/android/keyguard/PasswordTextView$QuickUnlockListener;)V

    :goto_5
    return-void

    :cond_6
    iget-object v8, p0, Lcom/android/keyguard/KeyguardPINView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/keyguard/PasswordTextView;->setQuickUnlockListener(Lcom/android/keyguard/PasswordTextView$QuickUnlockListener;)V

    goto :goto_5
.end method

.method protected resetState()V
    .locals 3

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetState()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->faceunlock_multiple_failures:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->kg_pin_instructions:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0
.end method

.method public showUsabilityHint()V
    .locals 0

    return-void
.end method

.method public startAppearAnimation()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/keyguard/KeyguardPINView;->enableClipping(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    invoke-virtual {v0}, Lcom/android/keyguard/AppearAnimationUtils;->getStartTranslation()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPINView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    invoke-virtual {v1}, Lcom/android/keyguard/AppearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    const/4 v1, 0x6

    new-array v1, v1, [[Landroid/view/View;

    new-array v2, v8, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPINView;->mRow0:Landroid/view/ViewGroup;

    aput-object v3, v2, v5

    aput-object v9, v2, v6

    aput-object v9, v2, v7

    aput-object v2, v1, v5

    new-array v2, v8, [Landroid/view/View;

    sget v3, Lcom/android/keyguard/R$id;->key1:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v5

    sget v3, Lcom/android/keyguard/R$id;->key2:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v6

    sget v3, Lcom/android/keyguard/R$id;->key3:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v1, v6

    new-array v2, v8, [Landroid/view/View;

    sget v3, Lcom/android/keyguard/R$id;->key4:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v5

    sget v3, Lcom/android/keyguard/R$id;->key5:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v6

    sget v3, Lcom/android/keyguard/R$id;->key6:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v1, v7

    new-array v2, v8, [Landroid/view/View;

    sget v3, Lcom/android/keyguard/R$id;->key7:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v5

    sget v3, Lcom/android/keyguard/R$id;->key8:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v6

    sget v3, Lcom/android/keyguard/R$id;->key9:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v1, v8

    const/4 v2, 0x4

    new-array v3, v8, [Landroid/view/View;

    aput-object v9, v3, v5

    sget v4, Lcom/android/keyguard/R$id;->key0:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v6

    sget v4, Lcom/android/keyguard/R$id;->key_enter:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-array v3, v8, [Landroid/view/View;

    aput-object v9, v3, v5

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPINView;->mEcaView:Landroid/view/View;

    aput-object v4, v3, v6

    aput-object v9, v3, v7

    aput-object v3, v1, v2

    new-instance v2, Lcom/android/keyguard/KeyguardPINView$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPINView$2;-><init>(Lcom/android/keyguard/KeyguardPINView;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/AppearAnimationUtils;->startAnimation([[Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPINView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearYTranslation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mContext:Landroid/content/Context;

    const v2, 0x10c000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x1

    return v0
.end method
