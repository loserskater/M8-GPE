.class public Lcom/android/systemui/cm/NavigationRingHelpers;
.super Ljava/lang/Object;
.source "NavigationRingHelpers.java"


# direct methods
.method private static filterAction([Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-object v1, p0, v0

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    aput-object v1, p0, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getRingerDrawableResId(Landroid/content/Context;)I
    .locals 3

    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const v2, 0x7f02019e

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const v2, 0x7f020199

    goto :goto_0

    :cond_1
    const v2, 0x7f02019a

    goto :goto_0
.end method

.method private static getSilentDrawableResId(Landroid/content/Context;)I
    .locals 2

    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f020199

    :goto_0
    return v1

    :cond_0
    const v1, 0x7f02019a

    goto :goto_0
.end method

.method public static getTargetActions(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_1

    sget-object v4, Landroid/provider/Settings$Secure;->NAVIGATION_RING_TARGETS:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    aget-object v4, v3, v1

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/android/systemui/cm/NavigationRingHelpers;->resetActionsToDefaults(Landroid/content/Context;)V

    const/4 v4, 0x1

    const-string v5, "assist"

    aput-object v5, v3, v4

    :cond_2
    const-string v4, "assist"

    invoke-static {p0}, Lcom/android/systemui/cm/NavigationRingHelpers;->isAssistantAvailable(Landroid/content/Context;)Z

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/systemui/cm/NavigationRingHelpers;->filterAction([Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "torch"

    invoke-static {p0}, Lcom/android/systemui/cm/NavigationRingHelpers;->isTorchAvailable(Landroid/content/Context;)Z

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/systemui/cm/NavigationRingHelpers;->filterAction([Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v3
.end method

.method public static getTargetDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v3, -0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "none"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const v3, 0x7f020194

    :cond_1
    :goto_0
    if-gez v3, :cond_c

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p1, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_1
    return-object v4

    :cond_2
    const-string v4, "screenshot"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const v3, 0x7f020197

    goto :goto_0

    :cond_3
    const-string v4, "imeSwitcher"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const v3, 0x7f020195

    goto :goto_0

    :cond_4
    const-string v4, "ringVibrate"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {p0}, Lcom/android/systemui/cm/NavigationRingHelpers;->getVibrateDrawableResId(Landroid/content/Context;)I

    move-result v3

    goto :goto_0

    :cond_5
    const-string v4, "ringSilent"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {p0}, Lcom/android/systemui/cm/NavigationRingHelpers;->getSilentDrawableResId(Landroid/content/Context;)I

    move-result v3

    goto :goto_0

    :cond_6
    const-string v4, "ringVibrateSilent"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {p0}, Lcom/android/systemui/cm/NavigationRingHelpers;->getRingerDrawableResId(Landroid/content/Context;)I

    move-result v3

    goto :goto_0

    :cond_7
    const-string v4, "killTask"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const v3, 0x7f020196

    goto :goto_0

    :cond_8
    const-string v4, "standby"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const v3, 0x7f02019b

    goto :goto_0

    :cond_9
    const-string v4, "torch"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {p0}, Lcom/android/systemui/cm/NavigationRingHelpers;->getTorchDrawableResId(Landroid/content/Context;)I

    move-result v3

    goto :goto_0

    :cond_a
    const-string v4, "assist"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v3, 0x7f020198

    goto/16 :goto_0

    :catch_0
    move-exception v4

    :cond_b
    const/4 v4, 0x0

    goto :goto_1

    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_1
.end method

.method private static getTorchDrawableResId(Landroid/content/Context;)I
    .locals 1

    const v0, 0x7f02019d

    return v0
.end method

.method private static getVibrateDrawableResId(Landroid/content/Context;)I
    .locals 3

    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const v1, 0x7f02019e

    :goto_0
    return v1

    :cond_0
    const v1, 0x7f02019a

    goto :goto_0
.end method

.method public static isAssistantAvailable(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x1

    const-string v0, "search"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    const/4 v2, -0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTorchAvailable(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static resetActionsToDefaults(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->NAVIGATION_RING_TARGETS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v1, Landroid/provider/Settings$Secure;->NAVIGATION_RING_TARGETS:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v2, "assist"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v1, Landroid/provider/Settings$Secure;->NAVIGATION_RING_TARGETS:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
