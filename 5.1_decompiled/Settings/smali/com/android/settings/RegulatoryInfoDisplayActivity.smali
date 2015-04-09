.class public Lcom/android/settings/RegulatoryInfoDisplayActivity;
.super Landroid/app/Activity;
.source "RegulatoryInfoDisplayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final REGULATORY_INFO_RESOURCE:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "regulatory_info"

    iput-object v0, p0, Lcom/android/settings/RegulatoryInfoDisplayActivity;->REGULATORY_INFO_RESOURCE:Ljava/lang/String;

    return-void
.end method

.method private getHtcResourceId()I
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "regulatory_info_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private getResourceId()I
    .locals 9

    invoke-direct {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getHtcResourceId()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "regulatory_info"

    const-string v7, "drawable"

    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v5, "ro.boot.hardware.sku"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "regulatory_info_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "drawable"

    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v2, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    move v3, v1

    :cond_1
    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    const/4 v13, 0x2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f0c0005

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->finish()V

    :cond_0
    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-direct {v11, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v12, 0x7f09044f

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getResourceId()I

    move-result v8

    if-eqz v8, :cond_2

    :try_start_0
    invoke-virtual {p0, v8}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    if-le v11, v13, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-le v11, v13, :cond_1

    const/4 v6, 0x1

    :goto_0
    const v11, 0x7f0908dc

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f040099

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    const v11, 0x7f0f0163

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_1
    return-void

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-lez v11, :cond_4

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    const v11, 0x102000b

    invoke-virtual {v2, v11}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/16 v11, 0x11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->finish()V

    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->finish()V

    return-void
.end method
