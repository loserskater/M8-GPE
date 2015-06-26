.class public Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;
.super Ljava/lang/Object;
.source "LockscreenShortcutsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$TargetInfo;,
        Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$OnChangeListener;,
        Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$Shortcuts;
    }
.end annotation


# static fields
.field private static final CAMERA_DEFAULT_ICON:Ljava/lang/String; = "ic_camera_alt_24dp"

.field public static final DEFAULT:Ljava/lang/String; = "default"

.field private static final DELIMITER:Ljava/lang/String; = "|"

.field public static final NONE:Ljava/lang/String; = "none"

.field private static final PHONE_DEFAULT_ICON:Ljava/lang/String; = "ic_phone_24dp"

.field private static final SYSTEM_UI_PKGNAME:Ljava/lang/String; = "com.android.systemui"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$OnChangeListener;

.field private mObserver:Landroid/database/ContentObserver;

.field private mSystemUiResources:Landroid/content/res/Resources;

.field private mTargetActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$OnChangeListener;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$OnChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$1;-><init>(Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->mObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->mListener:Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$OnChangeListener;

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_target_actions"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->fetchTargets()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;)V
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->fetchTargets()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;)Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$OnChangeListener;
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->mListener:Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$OnChangeListener;

    return-object v0
.end method

.method private fetchTargets()V
    .locals 11

    iget-object v9, p0, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lockscreen_target_actions"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "|"

    invoke-static {v9}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    array-length v7, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v7, :cond_1

    aget-object v5, v0, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iput-object v8, p0, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->mTargetActivities:Ljava/util/List;

    invoke-static {}, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$Shortcuts;->values()[Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$Shortcuts;

    move-result-object v9

    array-length v9, v9

    iget-object v10, p0, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->mTargetActivities:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    sub-int v6, v9, v10

    if-lez v6, :cond_2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v6, :cond_2

    iget-object v9, p0, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->mTargetActivities:Ljava/util/List;

    const-string v10, "default"

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private getFriendlyActivityName(Landroid/content/Intent;Z)Ljava/lang/String;
    .locals 4
    .param p1    # Landroid/content/Intent;
    .param p2    # Z

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :cond_0
    if-nez v1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getFriendlyShortcutName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .param p1    # Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->getFriendlyActivityName(Landroid/content/Intent;Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-nez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getDrawableFromSystemUI(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1    # Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.systemui"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_3

    :cond_0
    :goto_1
    return-object v3

    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->mSystemUiResources:Landroid/content/res/Resources;

    if-nez v4, :cond_2

    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "com.android.systemui"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->mSystemUiResources:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->mSystemUiResources:Landroid/content/res/Resources;

    goto :goto_0

    :cond_3
    const-string v4, "drawable"

    const-string v5, "com.android.systemui"

    invoke-virtual {v2, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public getDrawablesForTargets()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$TargetInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->fetchTargets()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    const/4 v6, 0x0

    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$Shortcuts;->values()[Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$Shortcuts;

    move-result-object v11

    array-length v11, v11

    if-ge v6, v11, :cond_3

    iget-object v11, p0, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->mTargetActivities:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "none"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const/4 v11, 0x0

    :try_start_0
    invoke-static {v0, v11}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    iget-object v11, p0, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v11}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7, v9}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v4, v5

    :cond_0
    :goto_1
    if-nez v2, :cond_1

    sget-object v11, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$Shortcuts;->LEFT_SHORTCUT:Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$Shortcuts;

    # getter for: Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$Shortcuts;->index:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$Shortcuts;->access$200(Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$Shortcuts;)I

    move-result v11

    if-ne v6, v11, :cond_2

    const-string v11, "ic_phone_24dp"

    :goto_2
    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->getDrawableFromSystemUI(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v4, 0x0

    :cond_1
    new-instance v11, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$TargetInfo;

    invoke-direct {v11, v2, v4, v0}, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$TargetInfo;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/ColorFilter;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1

    :cond_2
    const-string v11, "ic_camera_alt_24dp"

    goto :goto_2

    :cond_3
    return-object v10
.end method

.method public getFriendlyNameForUri(Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$Shortcuts;)Ljava/lang/String;
    .locals 3
    .param p1    # Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$Shortcuts;

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->getIntent(Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$Shortcuts;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->getFriendlyActivityName(Landroid/content/Intent;Z)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->getFriendlyShortcutName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getIntent(Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$Shortcuts;)Landroid/content/Intent;
    .locals 4
    .param p1    # Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$Shortcuts;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->mTargetActivities:Ljava/util/List;

    # getter for: Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$Shortcuts;->index:I
    invoke-static {p1}, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$Shortcuts;->access$200(Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$Shortcuts;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public isTargetCustom(Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$Shortcuts;)Z
    .locals 4
    .param p1    # Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$Shortcuts;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->mTargetActivities:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->mTargetActivities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->mTargetActivities:Ljava/util/List;

    # getter for: Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$Shortcuts;->index:I
    invoke-static {p1}, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$Shortcuts;->access$200(Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$Shortcuts;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "default"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "none"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->getIntent(Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$Shortcuts;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isTargetEmpty(Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$Shortcuts;)Z
    .locals 2
    .param p1    # Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$Shortcuts;

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->mTargetActivities:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->mTargetActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->mTargetActivities:Ljava/util/List;

    # getter for: Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$Shortcuts;->index:I
    invoke-static {p1}, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$Shortcuts;->access$200(Lcom/android/internal/policy/impl/LockscreenShortcutsHelper$Shortcuts;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveTargets(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v1, "|"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenShortcutsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_target_actions"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
