.class public Lcom/android/systemui/BatteryLevelTextView;
.super Landroid/widget/TextView;
.source "BatteryLevelTextView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# instance fields
.field private mAttached:Z

.field private mBatteryCharging:Z

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mForceShow:Z

.field private mPercentMode:I

.field private mRequestedVisibility:I

.field private mStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/systemui/BatteryLevelTextView;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/BatteryLevelTextView;->mRequestedVisibility:I

    return-void
.end method

.method private updateVisibility()V
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/systemui/BatteryLevelTextView;->mPercentMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/BatteryLevelTextView;->mBatteryCharging:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/systemui/BatteryLevelTextView;->mPercentMode:I

    if-ne v1, v0, :cond_3

    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/systemui/BatteryLevelTextView;->mStyle:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    const/4 v0, 0x0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/BatteryLevelTextView;->mForceShow:Z

    if-eqz v1, :cond_5

    :cond_2
    iget v1, p0, Lcom/android/systemui/BatteryLevelTextView;->mRequestedVisibility:I

    invoke-super {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/android/systemui/BatteryLevelTextView;->mStyle:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/16 v1, 0x8

    invoke-super {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/BatteryLevelTextView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/BatteryLevelTextView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/BatteryLevelTextView;->mAttached:Z

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/BatteryLevelTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0137

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryLevelTextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/android/systemui/BatteryLevelTextView;->mBatteryCharging:Z

    if-eq v0, p3, :cond_0

    iput-boolean p3, p0, Lcom/android/systemui/BatteryLevelTextView;->mBatteryCharging:Z

    invoke-direct {p0}, Lcom/android/systemui/BatteryLevelTextView;->updateVisibility()V

    :cond_0
    return-void
.end method

.method public onBatteryStyleChanged(II)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/BatteryLevelTextView;->mStyle:I

    iput p2, p0, Lcom/android/systemui/BatteryLevelTextView;->mPercentMode:I

    invoke-direct {p0}, Lcom/android/systemui/BatteryLevelTextView;->updateVisibility()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/BatteryLevelTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/BatteryLevelTextView;->setTextSize(IF)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryLevelTextView;->mAttached:Z

    iget-object v0, p0, Lcom/android/systemui/BatteryLevelTextView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/BatteryLevelTextView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    :cond_0
    return-void
.end method

.method public onPowerSaveChanged()V
    .locals 0

    return-void
.end method

.method public setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/BatteryLevelTextView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-boolean v0, p0, Lcom/android/systemui/BatteryLevelTextView;->mAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/BatteryLevelTextView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    :cond_0
    return-void
.end method

.method public setForceShown(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/BatteryLevelTextView;->mForceShow:Z

    invoke-direct {p0}, Lcom/android/systemui/BatteryLevelTextView;->updateVisibility()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/BatteryLevelTextView;->mRequestedVisibility:I

    invoke-direct {p0}, Lcom/android/systemui/BatteryLevelTextView;->updateVisibility()V

    return-void
.end method
