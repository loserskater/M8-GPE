.class Lcom/android/settings/location/RecentLocationApps$AccessiblePreference;
.super Lcom/android/settings/location/DimmableIconPreference;
.source "RecentLocationApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/RecentLocationApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessiblePreference"
.end annotation


# instance fields
.field public mContentDescription:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/location/DimmableIconPreference;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/location/RecentLocationApps$AccessiblePreference;->mContentDescription:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/location/DimmableIconPreference;->onBindView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/settings/location/RecentLocationApps$AccessiblePreference;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/location/RecentLocationApps$AccessiblePreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
