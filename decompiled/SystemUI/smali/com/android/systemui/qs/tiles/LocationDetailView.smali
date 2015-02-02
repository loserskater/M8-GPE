.class public Lcom/android/systemui/qs/tiles/LocationDetailView;
.super Landroid/widget/LinearLayout;
.source "LocationDetailView.java"


# instance fields
.field private mBatterySaving:Landroid/widget/RadioButton;

.field private mController:Lcom/android/systemui/statusbar/policy/LocationController;

.field private mHighAccuracy:Landroid/widget/RadioButton;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mSensorsOnly:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0e012f

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/LocationDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/LocationDetailView;->mRadioGroup:Landroid/widget/RadioGroup;

    const v0, 0x7f0e0130

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/LocationDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/LocationDetailView;->mHighAccuracy:Landroid/widget/RadioButton;

    const v0, 0x7f0e0131

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/LocationDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/LocationDetailView;->mBatterySaving:Landroid/widget/RadioButton;

    const v0, 0x7f0e0132

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/LocationDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/LocationDetailView;->mSensorsOnly:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationDetailView;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/android/systemui/qs/tiles/LocationDetailView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/LocationDetailView$1;-><init>(Lcom/android/systemui/qs/tiles/LocationDetailView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method public onRadioButtonClicked(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationDetailView;->mController:Lcom/android/systemui/statusbar/policy/LocationController;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/LocationController;->setLocationMode(I)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationDetailView;->mController:Lcom/android/systemui/statusbar/policy/LocationController;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/LocationController;->setLocationMode(I)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationDetailView;->mController:Lcom/android/systemui/statusbar/policy/LocationController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/LocationController;->setLocationMode(I)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0130
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setLocationController(Lcom/android/systemui/statusbar/policy/LocationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocationDetailView;->mController:Lcom/android/systemui/statusbar/policy/LocationController;

    return-void
.end method

.method public setLocationMode(I)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationDetailView;->mHighAccuracy:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationDetailView;->mBatterySaving:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationDetailView;->mSensorsOnly:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationDetailView;->mRadioGroup:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationDetailView;->mHighAccuracy:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationDetailView;->mRadioGroup:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationDetailView;->mBatterySaving:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationDetailView;->mRadioGroup:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationDetailView;->mSensorsOnly:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
