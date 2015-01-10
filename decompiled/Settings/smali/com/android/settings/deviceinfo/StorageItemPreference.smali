.class public Lcom/android/settings/deviceinfo/StorageItemPreference;
.super Landroid/preference/Preference;
.source "StorageItemPreference.java"


# instance fields
.field public final color:I

.field public final userHandle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v1, -0x2710

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;II)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/CharSequence;
    .param p3    # I
    .param p4    # I

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->color:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v3, 0x7f0d0000

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0d0001

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v3, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->color:I

    invoke-static {v2, v0, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    const v3, 0x7f08039b

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(I)V

    iput p4, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->userHandle:I

    return-void

    :cond_0
    const v3, -0xff01

    iput v3, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->color:I

    goto :goto_0
.end method

.method private static createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;
    .locals 2
    .param p0    # I
    .param p1    # I
    .param p2    # I

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method
