.class public Lcom/android/settings/fuelgauge/BatteryHistoryPreference;
.super Landroid/preference/Preference;
.source "BatteryHistoryPreference.java"


# instance fields
.field private final mBatteryBroadcast:Landroid/content/Intent;

.field private mChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart;

.field private mHideLabels:Z

.field private mLabelHeader:Landroid/view/View;

.field private final mStats:Landroid/os/BatteryStats;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/BatteryStats;Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/os/BatteryStats;
    .param p3    # Landroid/content/Intent;

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f040072

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->setLayoutResource(I)V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mStats:Landroid/os/BatteryStats;

    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mBatteryBroadcast:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v3, 0x7f0e001c

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mStats:Landroid/os/BatteryStats;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mBatteryBroadcast:Landroid/content/Intent;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->setStats(Landroid/os/BatteryStats;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart;

    :goto_0
    const v3, 0x7f0e00fd

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mLabelHeader:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mLabelHeader:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mHideLabels:Z

    if-eqz v3, :cond_2

    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart;

    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart;

    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart;

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setHideLabels(Z)V
    .locals 2
    .param p1    # Z

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mHideLabels:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mHideLabels:Z

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mLabelHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mLabelHeader:Landroid/view/View;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
