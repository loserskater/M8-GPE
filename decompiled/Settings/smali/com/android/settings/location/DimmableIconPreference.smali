.class public Lcom/android/settings/location/DimmableIconPreference;
.super Landroid/preference/Preference;
.source "DimmableIconPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private dimIcon(Z)V
    .locals 3
    .param p1    # Z

    invoke-virtual {p0}, Lcom/android/settings/location/DimmableIconPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz p1, :cond_1

    const/16 v1, 0x66

    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0, v0}, Lcom/android/settings/location/DimmableIconPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0xff

    goto :goto_0
.end method


# virtual methods
.method public onParentChanged(Landroid/preference/Preference;Z)V
    .locals 0
    .param p1    # Landroid/preference/Preference;
    .param p2    # Z

    invoke-direct {p0, p2}, Lcom/android/settings/location/DimmableIconPreference;->dimIcon(Z)V

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onParentChanged(Landroid/preference/Preference;Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1    # Z

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/location/DimmableIconPreference;->dimIcon(Z)V

    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
