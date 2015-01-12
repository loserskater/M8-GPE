.class public Lcom/android/systemui/volume/ZenModePanel;
.super Landroid/widget/LinearLayout;
.source "ZenModePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/ZenModePanel$Prefs;,
        Lcom/android/systemui/volume/ZenModePanel$ConditionTag;,
        Lcom/android/systemui/volume/ZenModePanel$Callback;,
        Lcom/android/systemui/volume/ZenModePanel$H;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_BUCKET_INDEX:I

.field private static final MAX_BUCKET_MINUTES:I

.field private static final MINUTE_BUCKETS:[I

.field private static final MIN_BUCKET_MINUTES:I

.field public static final ZEN_SETTINGS:Landroid/content/Intent;


# instance fields
.field private mAttachedZen:I

.field private mBucketIndex:I

.field private mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

.field private mConditions:[Landroid/service/notification/Condition;

.field private final mContext:Landroid/content/Context;

.field private mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private mExitCondition:Landroid/service/notification/Condition;

.field private mExitConditionText:Ljava/lang/String;

.field private mExpanded:Z

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mHandler:Lcom/android/systemui/volume/ZenModePanel$H;

.field private mHidden:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

.field private mMoreSettings:Landroid/view/View;

.field private final mPrefs:Lcom/android/systemui/volume/ZenModePanel$Prefs;

.field private mRequestingConditions:Z

.field private mSessionExitCondition:Landroid/service/notification/Condition;

.field private mSessionZen:I

.field private final mSubheadColor:I

.field private final mSubheadWarningColor:I

.field private mTag:Ljava/lang/String;

.field private mTimeCondition:Landroid/service/notification/Condition;

.field private mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

.field private final mZenButtonsCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

.field private final mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

.field private mZenConditions:Landroid/widget/LinearLayout;

.field private mZenSubhead:Landroid/view/View;

.field private mZenSubheadCollapsed:Landroid/widget/TextView;

.field private mZenSubheadExpanded:Landroid/widget/TextView;

.field private final mZenToast:Lcom/android/systemui/volume/ZenToast;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    const-string v0, "ZenModePanel"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    .line 61
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    :goto_0
    sput-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    .line 64
    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sput v0, Lcom/android/systemui/volume/ZenModePanel;->MIN_BUCKET_MINUTES:I

    .line 65
    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    sget-object v1, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    sput v0, Lcom/android/systemui/volume/ZenModePanel;->MAX_BUCKET_MINUTES:I

    .line 66
    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    sput v0, Lcom/android/systemui/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ZEN_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/volume/ZenModePanel;->ZEN_SETTINGS:Landroid/content/Intent;

    return-void

    .line 61
    :cond_0
    sget-object v0, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x5
        0xf
        0x1e
        0x2d
        0x3c
        0x78
        0xb4
        0xf0
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 107
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    new-instance v1, Lcom/android/systemui/volume/ZenModePanel$H;

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/volume/ZenModePanel$H;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$1;)V

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mHandler:Lcom/android/systemui/volume/ZenModePanel$H;

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZenModePanel/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    .line 97
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 99
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mHidden:Z

    .line 596
    new-instance v1, Lcom/android/systemui/volume/ZenModePanel$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/ZenModePanel$8;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 715
    new-instance v1, Lcom/android/systemui/volume/ZenModePanel$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/ZenModePanel$9;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtonsCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    .line 730
    new-instance v1, Lcom/android/systemui/volume/ZenModePanel$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/ZenModePanel$10;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    .line 108
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    .line 109
    new-instance v1, Lcom/android/systemui/volume/ZenModePanel$Prefs;

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/volume/ZenModePanel$Prefs;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$1;)V

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$Prefs;

    .line 110
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mInflater:Landroid/view/LayoutInflater;

    .line 111
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v2, 0x10c000d

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 113
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 114
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f07000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSubheadWarningColor:I

    .line 115
    const v1, 0x7f070011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSubheadColor:I

    .line 116
    new-instance v1, Lcom/android/systemui/volume/ZenToast;

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/volume/ZenToast;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenToast:Lcom/android/systemui/volume/ZenToast;

    .line 117
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string v2, "new ZenModePanel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/volume/ZenModePanel;Landroid/service/notification/Condition;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p1, "x1"    # Landroid/service/notification/Condition;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->select(Landroid/service/notification/Condition;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p1, "x1"    # Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->announceConditionSelection(Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/volume/ZenModePanel;Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    .param p3, "x3"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/volume/ZenModePanel;->onClickTimeButton(Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/volume/ZenModePanel$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mHandler:Lcom/android/systemui/volume/ZenModePanel$H;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/volume/ZenModePanel;[Landroid/service/notification/Condition;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p1, "x1"    # [Landroid/service/notification/Condition;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateConditions([Landroid/service/notification/Condition;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/volume/ZenModePanel;Landroid/service/notification/Condition;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p1, "x1"    # Landroid/service/notification/Condition;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->handleExitConditionChanged(Landroid/service/notification/Condition;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/volume/ZenModePanel;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateZen(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/android/systemui/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    return v0
.end method

.method static synthetic access$1900()[I
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/volume/ZenModePanel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->setExpanded(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/volume/SegmentedButtons;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/volume/ZenModePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->fireInteraction()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/ZenModePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->fireMoreSettings()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/volume/ZenModePanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    return v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/volume/ZenModePanel;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/volume/ZenModePanel;I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v0

    return-object v0
.end method

.method private announceConditionSelection(Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V
    .locals 7
    .param p1, "tag"    # Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    .prologue
    const/4 v5, 0x0

    .line 514
    invoke-direct {p0, v5}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v1

    .line 516
    .local v1, "zen":I
    packed-switch v1, :pswitch_data_0

    .line 528
    :goto_0
    return-void

    .line 518
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0115

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, "modeText":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0157

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    const/4 v5, 0x1

    iget-object v6, p1, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->title:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/ZenModePanel;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 521
    .end local v0    # "modeText":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0114

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 522
    .restart local v0    # "modeText":Ljava/lang/String;
    goto :goto_1

    .line 516
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private bind(Landroid/service/notification/Condition;Landroid/view/View;)V
    .locals 13
    .param p1, "condition"    # Landroid/service/notification/Condition;
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    .line 416
    if-eqz p1, :cond_0

    iget v10, p1, Landroid/service/notification/Condition;->state:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    :cond_0
    const/4 v2, 0x1

    .line 418
    .local v2, "enabled":Z
    :goto_0
    if-nez p2, :cond_7

    .line 419
    iget-object v10, p0, Lcom/android/systemui/volume/ZenModePanel;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f04004d

    const/4 v12, 0x0

    invoke-virtual {v10, v11, p0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 420
    .local v4, "row":Landroid/view/View;
    sget-boolean v10, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Adding new condition view for: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_1
    iget-object v10, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 425
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-object v5, v10

    .line 427
    .local v5, "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 428
    iget-object v10, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    if-nez v10, :cond_2

    .line 429
    const v10, 0x1020001

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioButton;

    iput-object v10, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    .line 431
    :cond_2
    iput-object p1, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    .line 432
    iget-object v10, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v10, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 433
    iget-object v10, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    iget-object v11, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-static {v10, v11}, Lcom/android/systemui/volume/ZenModePanel;->sameConditionId(Landroid/service/notification/Condition;Landroid/service/notification/Condition;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 434
    iget-object v10, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 436
    :cond_3
    iget-object v10, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    new-instance v11, Lcom/android/systemui/volume/ZenModePanel$4;

    invoke-direct {v11, p0, v5}, Lcom/android/systemui/volume/ZenModePanel$4;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 453
    iget-object v10, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->title:Landroid/widget/TextView;

    if-nez v10, :cond_4

    .line 454
    const v10, 0x1020016

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->title:Landroid/widget/TextView;

    .line 456
    :cond_4
    if-nez p1, :cond_9

    .line 457
    iget-object v10, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->title:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v12, 0x1040680

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    :goto_3
    iget-object v10, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->title:Landroid/widget/TextView;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 462
    iget-object v11, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->title:Landroid/widget/TextView;

    if-eqz v2, :cond_a

    const/high16 v10, 0x3f800000

    :goto_4
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 464
    const v10, 0x1020019

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 465
    .local v0, "button1":Landroid/widget/ImageView;
    new-instance v10, Lcom/android/systemui/volume/ZenModePanel$5;

    invoke-direct {v10, p0, v4, v5}, Lcom/android/systemui/volume/ZenModePanel$5;-><init>(Lcom/android/systemui/volume/ZenModePanel;Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    const v10, 0x102001a

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 473
    .local v1, "button2":Landroid/widget/ImageView;
    new-instance v10, Lcom/android/systemui/volume/ZenModePanel$6;

    invoke-direct {v10, p0, v4, v5}, Lcom/android/systemui/volume/ZenModePanel$6;-><init>(Lcom/android/systemui/volume/ZenModePanel;Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    iget-object v10, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->title:Landroid/widget/TextView;

    new-instance v11, Lcom/android/systemui/volume/ZenModePanel$7;

    invoke-direct {v11, p0, v5}, Lcom/android/systemui/volume/ZenModePanel$7;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    iget-object v10, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-static {v10}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v10}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 487
    .local v8, "time":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_12

    .line 488
    iget v10, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    const/4 v11, -0x1

    if-le v10, v11, :cond_d

    .line 489
    iget v10, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    if-lez v10, :cond_b

    const/4 v10, 0x1

    :goto_5
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 490
    iget v10, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    sget-object v11, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    if-ge v10, v11, :cond_c

    const/4 v10, 0x1

    :goto_6
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 498
    :goto_7
    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_10

    const/high16 v10, 0x3f800000

    :goto_8
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 499
    invoke-virtual {v1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_11

    const/high16 v10, 0x3f800000

    :goto_9
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 505
    :goto_a
    if-nez p2, :cond_5

    .line 506
    iget-object v10, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    iget-object v11, p0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    invoke-static {v10, v11}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 507
    iget-object v10, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->title:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    invoke-static {v10, v11}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 508
    iget-object v10, p0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    invoke-static {v0, v10}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 509
    iget-object v10, p0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    invoke-static {v1, v10}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 511
    :cond_5
    return-void

    .line 416
    .end local v0    # "button1":Landroid/widget/ImageView;
    .end local v1    # "button2":Landroid/widget/ImageView;
    .end local v2    # "enabled":Z
    .end local v4    # "row":Landroid/view/View;
    .end local v5    # "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    .end local v8    # "time":J
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 423
    .restart local v2    # "enabled":Z
    :cond_7
    move-object v4, p2

    .restart local v4    # "row":Landroid/view/View;
    goto/16 :goto_1

    .line 425
    :cond_8
    new-instance v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    const/4 v10, 0x0

    invoke-direct {v5, v10}, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;-><init>(Lcom/android/systemui/volume/ZenModePanel$1;)V

    goto/16 :goto_2

    .line 459
    .restart local v5    # "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    :cond_9
    iget-object v10, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->title:Landroid/widget/TextView;

    iget-object v11, p1, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 462
    :cond_a
    const v10, 0x3ecccccd

    goto/16 :goto_4

    .line 489
    .restart local v0    # "button1":Landroid/widget/ImageView;
    .restart local v1    # "button2":Landroid/widget/ImageView;
    .restart local v8    # "time":J
    :cond_b
    const/4 v10, 0x0

    goto :goto_5

    .line 490
    :cond_c
    const/4 v10, 0x0

    goto :goto_6

    .line 492
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v6, v8, v10

    .line 493
    .local v6, "span":J
    sget v10, Lcom/android/systemui/volume/ZenModePanel;->MIN_BUCKET_MINUTES:I

    const v11, 0xea60

    mul-int/2addr v10, v11

    int-to-long v10, v10

    cmp-long v10, v6, v10

    if-lez v10, :cond_e

    const/4 v10, 0x1

    :goto_b
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 494
    sget v10, Lcom/android/systemui/volume/ZenModePanel;->MAX_BUCKET_MINUTES:I

    invoke-static {v10}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(I)Landroid/service/notification/Condition;

    move-result-object v3

    .line 495
    .local v3, "maxCondition":Landroid/service/notification/Condition;
    iget-object v10, p1, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    iget-object v11, v3, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    const/4 v10, 0x1

    :goto_c
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_7

    .line 493
    .end local v3    # "maxCondition":Landroid/service/notification/Condition;
    :cond_e
    const/4 v10, 0x0

    goto :goto_b

    .line 495
    .restart local v3    # "maxCondition":Landroid/service/notification/Condition;
    :cond_f
    const/4 v10, 0x0

    goto :goto_c

    .line 498
    .end local v3    # "maxCondition":Landroid/service/notification/Condition;
    .end local v6    # "span":J
    :cond_10
    const/high16 v10, 0x3f000000

    goto :goto_8

    .line 499
    :cond_11
    const/high16 v10, 0x3f000000

    goto :goto_9

    .line 501
    :cond_12
    const/16 v10, 0x8

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 502
    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a
.end method

.method private checkForAttachedZenChange()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 187
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v0

    .line 188
    .local v0, "selectedZen":I
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectedZen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    if-eq v0, v1, :cond_4

    .line 190
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachedZen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_1
    if-ne v0, v4, :cond_2

    .line 192
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$Prefs;

    invoke-virtual {v1}, Lcom/android/systemui/volume/ZenModePanel$Prefs;->trackNoneSelected()V

    .line 194
    :cond_2
    if-eq v0, v4, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 196
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenToast:Lcom/android/systemui/volume/ZenToast;

    invoke-virtual {v1, v0}, Lcom/android/systemui/volume/ZenToast;->show(I)V

    .line 199
    :cond_4
    return-void
.end method

.method private checkForDefault()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 386
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 387
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 388
    sget-boolean v2, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not selecting a default, checked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    :goto_1
    return-void

    .line 386
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 393
    :cond_2
    sget-boolean v2, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string v3, "Selecting a default"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$Prefs;

    invoke-virtual {v2}, Lcom/android/systemui/volume/ZenModePanel$Prefs;->getMinuteIndex()I

    move-result v0

    .line 395
    .local v0, "favoriteIndex":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    .line 396
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 398
    :cond_4
    sget-object v2, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    aget v2, v2, v0

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(I)Landroid/service/notification/Condition;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    .line 399
    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 400
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;)V

    .line 401
    invoke-direct {p0, v4}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method

.method private static copy(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;
    .locals 1
    .param p0, "condition"    # Landroid/service/notification/Condition;

    .prologue
    .line 264
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/Condition;->copy()Landroid/service/notification/Condition;

    move-result-object v0

    goto :goto_0
.end method

.method private fireExpanded()V
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    iget-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/volume/ZenModePanel$Callback;->onExpanded(Z)V

    .line 594
    :cond_0
    return-void
.end method

.method private fireInteraction()V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    invoke-interface {v0}, Lcom/android/systemui/volume/ZenModePanel$Callback;->onInteraction()V

    .line 588
    :cond_0
    return-void
.end method

.method private fireMoreSettings()V
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    invoke-interface {v0}, Lcom/android/systemui/volume/ZenModePanel$Callback;->onMoreSettings()V

    .line 582
    :cond_0
    return-void
.end method

.method private static getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;
    .locals 1
    .param p0, "condition"    # Landroid/service/notification/Condition;

    .prologue
    .line 256
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    return-object v0
.end method

.method private getSelectedZen(I)I
    .locals 2
    .param p1, "defValue"    # I

    .prologue
    .line 309
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SegmentedButtons;->getSelectedValue()Ljava/lang/Object;

    move-result-object v0

    .line 310
    .local v0, "zen":Ljava/lang/Object;
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "zen":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .end local p1    # "defValue":I
    :cond_0
    return p1
.end method

.method private handleExitConditionChanged(Landroid/service/notification/Condition;)V
    .locals 6
    .param p1, "exitCondition"    # Landroid/service/notification/Condition;

    .prologue
    .line 406
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->setExitCondition(Landroid/service/notification/Condition;)V

    .line 407
    sget-boolean v3, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleExitConditionChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 409
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 410
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v2

    .line 411
    .local v2, "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    iget-object v3, v2, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    iget-object v4, v2, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v4, v5}, Lcom/android/systemui/volume/ZenModePanel;->sameConditionId(Landroid/service/notification/Condition;Landroid/service/notification/Condition;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 409
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 413
    .end local v2    # "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    :cond_1
    return-void
.end method

.method private handleUpdateConditions()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 353
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    if-nez v4, :cond_1

    move v0, v3

    .line 354
    .local v0, "conditionCount":I
    :goto_0
    sget-boolean v4, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleUpdateConditions conditionCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    const/4 v4, 0x2

    if-lt v2, v4, :cond_2

    .line 356
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 355
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 353
    .end local v0    # "conditionCount":I
    .end local v2    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    array-length v0, v4

    goto :goto_0

    .line 359
    .restart local v0    # "conditionCount":I
    .restart local v2    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v7, v3}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;)V

    .line 361
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;)V

    .line 363
    const/4 v1, 0x0

    .line 364
    .local v1, "foundDowntime":Z
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_3

    .line 365
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    add-int/lit8 v5, v2, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;)V

    .line 366
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/android/systemui/volume/ZenModePanel;->isDowntime(Landroid/service/notification/Condition;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 364
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 369
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    invoke-static {v3}, Lcom/android/systemui/volume/ZenModePanel;->isDowntime(Landroid/service/notification/Condition;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v1, :cond_4

    .line 370
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    invoke-direct {p0, v3, v7}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;)V

    .line 373
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->checkForDefault()V

    .line 374
    return-void
.end method

.method private handleUpdateConditions([Landroid/service/notification/Condition;)V
    .locals 0
    .param p1, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    .line 349
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateConditions()V

    .line 350
    return-void
.end method

.method private handleUpdateZen(I)V
    .locals 2
    .param p1, "zen"    # I

    .prologue
    .line 300
    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    if-eq v0, p1, :cond_0

    .line 301
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->setExpanded(Z)V

    .line 302
    iput p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SegmentedButtons;->setSelectedValue(Ljava/lang/Object;)V

    .line 305
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    .line 306
    return-void

    .line 301
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDowntime(Landroid/service/notification/Condition;)Z
    .locals 1
    .param p0, "c"    # Landroid/service/notification/Condition;

    .prologue
    .line 377
    invoke-static {p0}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidDowntimeConditionId(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method private onClickTimeButton(Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;Z)V
    .locals 18
    .param p1, "row"    # Landroid/view/View;
    .param p2, "tag"    # Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    .param p3, "up"    # Z

    .prologue
    .line 531
    const/4 v9, 0x0

    .line 532
    .local v9, "newCondition":Landroid/service/notification/Condition;
    sget-object v14, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    array-length v2, v14

    .line 533
    .local v2, "N":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_6

    .line 535
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-static {v14}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v6

    .line 536
    .local v6, "conditionId":Landroid/net/Uri;
    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v12

    .line 537
    .local v12, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 538
    .local v10, "now":J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_2

    .line 539
    if-eqz p3, :cond_4

    move v8, v7

    .line 540
    .local v8, "j":I
    :goto_1
    sget-object v14, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    aget v3, v14, v8

    .line 541
    .local v3, "bucketMinutes":I
    const v14, 0xea60

    mul-int/2addr v14, v3

    int-to-long v14, v14

    add-long v4, v10, v14

    .line 542
    .local v4, "bucketTime":J
    if-eqz p3, :cond_0

    cmp-long v14, v4, v12

    if-gtz v14, :cond_1

    :cond_0
    if-nez p3, :cond_5

    cmp-long v14, v4, v12

    if-gez v14, :cond_5

    .line 543
    :cond_1
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 544
    invoke-static {v4, v5, v3}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(JI)Landroid/service/notification/Condition;

    move-result-object v9

    .line 548
    .end local v3    # "bucketMinutes":I
    .end local v4    # "bucketTime":J
    .end local v8    # "j":I
    :cond_2
    if-nez v9, :cond_3

    .line 549
    sget v14, Lcom/android/systemui/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 550
    sget-object v14, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    aget v14, v14, v15

    invoke-static {v14}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(I)Landroid/service/notification/Condition;

    move-result-object v9

    .line 557
    .end local v6    # "conditionId":Landroid/net/Uri;
    .end local v7    # "i":I
    .end local v10    # "now":J
    .end local v12    # "time":J
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    .line 558
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v14, v1}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;)V

    .line 559
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 560
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/volume/ZenModePanel;->select(Landroid/service/notification/Condition;)V

    .line 561
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->announceConditionSelection(Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    .line 562
    return-void

    .line 539
    .restart local v6    # "conditionId":Landroid/net/Uri;
    .restart local v7    # "i":I
    .restart local v10    # "now":J
    .restart local v12    # "time":J
    :cond_4
    add-int/lit8 v14, v2, -0x1

    sub-int v8, v14, v7

    goto :goto_1

    .line 538
    .restart local v3    # "bucketMinutes":I
    .restart local v4    # "bucketTime":J
    .restart local v8    # "j":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 554
    .end local v3    # "bucketMinutes":I
    .end local v4    # "bucketTime":J
    .end local v6    # "conditionId":Landroid/net/Uri;
    .end local v7    # "i":I
    .end local v8    # "j":I
    .end local v10    # "now":J
    .end local v12    # "time":J
    :cond_6
    const/4 v15, 0x0

    add-int/lit8 v16, v2, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    move/from16 v17, v0

    if-eqz p3, :cond_7

    const/4 v14, 0x1

    :goto_3
    add-int v14, v14, v17

    move/from16 v0, v16

    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 555
    sget-object v14, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    aget v14, v14, v15

    invoke-static {v14}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(I)Landroid/service/notification/Condition;

    move-result-object v9

    goto :goto_2

    .line 554
    :cond_7
    const/4 v14, -0x1

    goto :goto_3
.end method

.method private parseExistingTimeCondition(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;
    .locals 10
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    .line 339
    if-nez p1, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-object v4

    .line 340
    :cond_1
    iget-object v5, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v5}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 341
    .local v2, "time":J
    cmp-long v5, v2, v8

    if-eqz v5, :cond_0

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v2, v6

    .line 343
    .local v0, "span":J
    cmp-long v5, v0, v8

    if-lez v5, :cond_0

    sget v5, Lcom/android/systemui/volume/ZenModePanel;->MAX_BUCKET_MINUTES:I

    const v6, 0xea60

    mul-int/2addr v5, v6

    int-to-long v6, v5

    cmp-long v5, v0, v6

    if-gtz v5, :cond_0

    .line 344
    long-to-float v4, v0

    const v5, 0x476a6000

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(JI)Landroid/service/notification/Condition;

    move-result-object v4

    goto :goto_0
.end method

.method private refreshExitConditionText()V
    .locals 4

    .prologue
    .line 268
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v3, 0x1040680

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "forever":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    if-nez v2, :cond_0

    .line 270
    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitConditionText:Ljava/lang/String;

    .line 277
    .end local v1    # "forever":Ljava/lang/String;
    :goto_0
    return-void

    .line 271
    .restart local v1    # "forever":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    iget-object v2, v2, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 272
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/ZenModePanel;->parseExistingTimeCondition(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;

    move-result-object v0

    .line 273
    .local v0, "condition":Landroid/service/notification/Condition;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    .end local v1    # "forever":Ljava/lang/String;
    :cond_1
    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitConditionText:Ljava/lang/String;

    goto :goto_0

    .line 275
    .end local v0    # "condition":Landroid/service/notification/Condition;
    .restart local v1    # "forever":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    iget-object v2, v2, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitConditionText:Ljava/lang/String;

    goto :goto_0
.end method

.method private static sameConditionId(Landroid/service/notification/Condition;Landroid/service/notification/Condition;)Z
    .locals 4
    .param p0, "lhs"    # Landroid/service/notification/Condition;
    .param p1, "rhs"    # Landroid/service/notification/Condition;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 260
    if-nez p0, :cond_2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v2, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    iget-object v3, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private select(Landroid/service/notification/Condition;)V
    .locals 4
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    const/4 v3, -0x1

    .line 565
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-eqz v0, :cond_1

    .line 567
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setExitCondition(Landroid/service/notification/Condition;)V

    .line 569
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->setExitCondition(Landroid/service/notification/Condition;)V

    .line 570
    if-nez p1, :cond_3

    .line 571
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$Prefs;

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/ZenModePanel$Prefs;->setMinuteIndex(I)V

    .line 575
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->copy(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    .line 576
    return-void

    .line 572
    :cond_3
    iget-object v0, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    if-eq v0, v3, :cond_2

    .line 573
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$Prefs;

    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/ZenModePanel$Prefs;->setMinuteIndex(I)V

    goto :goto_0
.end method

.method private setExitCondition(Landroid/service/notification/Condition;)V
    .locals 1
    .param p1, "exitCondition"    # Landroid/service/notification/Condition;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/ZenModePanel;->sameConditionId(Landroid/service/notification/Condition;Landroid/service/notification/Condition;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 250
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    .line 251
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->refreshExitConditionText()V

    .line 252
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    goto :goto_0
.end method

.method private setExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    if-ne p1, v0, :cond_0

    .line 207
    :goto_0
    return-void

    .line 203
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    .line 204
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    .line 205
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->setRequestingConditions(Z)V

    .line 206
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->fireExpanded()V

    goto :goto_0
.end method

.method private setRequestingConditions(Z)V
    .locals 3
    .param p1, "requesting"    # Z

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mRequestingConditions:Z

    if-ne v0, p1, :cond_0

    .line 231
    :goto_0
    return-void

    .line 212
    :cond_0
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRequestingConditions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mRequestingConditions:Z

    .line 214
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mRequestingConditions:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->requestConditions(Z)V

    .line 217
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mRequestingConditions:Z

    if-eqz v0, :cond_5

    .line 218
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->parseExistingTimeCondition(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    .line 219
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    if-eqz v0, :cond_4

    .line 220
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 225
    :goto_1
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initial bucket index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    .line 227
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateConditions()V

    goto :goto_0

    .line 222
    :cond_4
    sget v0, Lcom/android/systemui/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 223
    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    aget v0, v0, v1

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(I)Landroid/service/notification/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    goto :goto_1

    .line 229
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto :goto_0
.end method

.method private updateWidgets()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 314
    invoke-direct {p0, v6}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v1

    .line 315
    .local v1, "zen":I
    if-nez v1, :cond_1

    move v4, v5

    .line 316
    .local v4, "zenOff":Z
    :goto_0
    if-ne v1, v5, :cond_2

    move v2, v5

    .line 317
    .local v2, "zenImportant":Z
    :goto_1
    const/4 v8, 0x2

    if-ne v1, v8, :cond_3

    move v3, v5

    .line 318
    .local v3, "zenNone":Z
    :goto_2
    iget-boolean v8, p0, Lcom/android/systemui/volume/ZenModePanel;->mHidden:Z

    if-nez v8, :cond_4

    iget-boolean v8, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    if-eqz v8, :cond_4

    move v0, v5

    .line 320
    .local v0, "expanded":Z
    :goto_3
    iget-object v8, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    iget-boolean v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mHidden:Z

    if-eqz v5, :cond_5

    move v5, v7

    :goto_4
    invoke-virtual {v8, v5}, Lcom/android/systemui/volume/SegmentedButtons;->setVisibility(I)V

    .line 321
    iget-object v8, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubhead:Landroid/view/View;

    iget-boolean v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mHidden:Z

    if-nez v5, :cond_6

    if-nez v4, :cond_6

    move v5, v6

    :goto_5
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 322
    iget-object v8, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubheadExpanded:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    move v5, v6

    :goto_6
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    iget-object v8, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubheadCollapsed:Landroid/widget/TextView;

    if-nez v0, :cond_8

    move v5, v6

    :goto_7
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 324
    iget-object v8, p0, Lcom/android/systemui/volume/ZenModePanel;->mMoreSettings:Landroid/view/View;

    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    move v5, v6

    :goto_8
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 325
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    if-nez v4, :cond_a

    if-eqz v0, :cond_a

    :goto_9
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 327
    if-eqz v3, :cond_b

    .line 328
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubheadExpanded:Landroid/widget/TextView;

    const v6, 0x7f0b0113

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 329
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubheadCollapsed:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitConditionText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    :cond_0
    :goto_a
    iget-object v6, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubheadExpanded:Landroid/widget/TextView;

    if-eqz v3, :cond_c

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$Prefs;

    invoke-virtual {v5}, Lcom/android/systemui/volume/ZenModePanel$Prefs;->isNoneDangerous()Z

    move-result v5

    if-eqz v5, :cond_c

    iget v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mSubheadWarningColor:I

    :goto_b
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 336
    return-void

    .end local v0    # "expanded":Z
    .end local v2    # "zenImportant":Z
    .end local v3    # "zenNone":Z
    .end local v4    # "zenOff":Z
    :cond_1
    move v4, v6

    .line 315
    goto :goto_0

    .restart local v4    # "zenOff":Z
    :cond_2
    move v2, v6

    .line 316
    goto :goto_1

    .restart local v2    # "zenImportant":Z
    :cond_3
    move v3, v6

    .line 317
    goto :goto_2

    .restart local v3    # "zenNone":Z
    :cond_4
    move v0, v6

    .line 318
    goto :goto_3

    .restart local v0    # "expanded":Z
    :cond_5
    move v5, v6

    .line 320
    goto :goto_4

    :cond_6
    move v5, v7

    .line 321
    goto :goto_5

    :cond_7
    move v5, v7

    .line 322
    goto :goto_6

    :cond_8
    move v5, v7

    .line 323
    goto :goto_7

    :cond_9
    move v5, v7

    .line 324
    goto :goto_8

    :cond_a
    move v6, v7

    .line 325
    goto :goto_9

    .line 330
    :cond_b
    if-eqz v2, :cond_0

    .line 331
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubheadExpanded:Landroid/widget/TextView;

    const v6, 0x7f0b0115

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 332
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubheadCollapsed:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitConditionText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 334
    :cond_c
    iget v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mSubheadColor:I

    goto :goto_b
.end method


# virtual methods
.method public init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .locals 3
    .param p1, "controller"    # Lcom/android/systemui/statusbar/policy/ZenModeController;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 235
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getExitCondition()Landroid/service/notification/Condition;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->setExitCondition(Landroid/service/notification/Condition;)V

    .line 236
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->refreshExitConditionText()V

    .line 237
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    .line 238
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateZen(I)V

    .line 239
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init mExitCondition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 241
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    .line 242
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 159
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 160
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenToast:Lcom/android/systemui/volume/ZenToast;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ZenToast;->hide()V

    .line 162
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    .line 163
    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    .line 164
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->copy(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    .line 165
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->refreshExitConditionText()V

    .line 166
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    .line 167
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 171
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 172
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->checkForAttachedZenChange()V

    .line 174
    iput v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    .line 175
    iput v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->setExpanded(Z)V

    .line 178
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 122
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 124
    const v0, 0x7f0e011f

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SegmentedButtons;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    .line 125
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    const v1, 0x7f0b011f

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(ILjava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    const v1, 0x7f0b0120

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(ILjava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    const v1, 0x7f0b0121

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(ILjava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtonsCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SegmentedButtons;->setCallback(Lcom/android/systemui/volume/SegmentedButtons$Callback;)V

    .line 131
    const v0, 0x7f0e0120

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubhead:Landroid/view/View;

    .line 133
    const v0, 0x7f0e0121

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubheadCollapsed:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubheadCollapsed:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/volume/ZenModePanel$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/ZenModePanel$1;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubheadCollapsed:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 142
    const v0, 0x7f0e0122

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubheadExpanded:Landroid/widget/TextView;

    .line 143
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubheadExpanded:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 145
    const v0, 0x7f0e0123

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mMoreSettings:Landroid/view/View;

    .line 146
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mMoreSettings:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/volume/ZenModePanel$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/ZenModePanel$2;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mMoreSettings:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 154
    const v0, 0x7f0e0124

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    .line 155
    return-void
.end method

.method public setCallback(Lcom/android/systemui/volume/ZenModePanel$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/volume/ZenModePanel$Callback;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    .line 281
    return-void
.end method

.method public setHidden(Z)V
    .locals 1
    .param p1, "hidden"    # Z

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mHidden:Z

    if-ne v0, p1, :cond_0

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mHidden:Z

    .line 183
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    goto :goto_0
.end method

.method public showSilentHint()V
    .locals 4

    .prologue
    const v3, 0x3f8ccccd

    .line 284
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string v2, "showSilentHint"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SegmentedButtons;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 297
    :cond_1
    :goto_0
    return-void

    .line 286
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/SegmentedButtons;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 287
    .local v0, "noneButton":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v1

    const/high16 v2, 0x3f800000

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 288
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 289
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/volume/ZenModePanel$3;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/volume/ZenModePanel$3;-><init>(Lcom/android/systemui/volume/ZenModePanel;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method public updateLocale()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SegmentedButtons;->updateLocale()V

    .line 246
    return-void
.end method
