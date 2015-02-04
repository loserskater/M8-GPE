.class public Lcom/android/systemui/statusbar/phone/BackButtonDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BackButtonDrawable.java"


# static fields
.field public static final ROTATION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/statusbar/phone/BackButtonDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentAnimator:Landroid/animation/Animator;

.field private mRotation:F

.field private final mWrappedDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/BackButtonDrawable$1;

    const-string v1, "rotation"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/BackButtonDrawable$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/BackButtonDrawable;->ROTATION:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BackButtonDrawable;->mWrappedDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/BackButtonDrawable;->mWrappedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v2, v3, 0x2

    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget v3, p0, Lcom/android/systemui/statusbar/phone/BackButtonDrawable;->mRotation:F

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/BackButtonDrawable;->mWrappedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BackButtonDrawable;->mWrappedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BackButtonDrawable;->mWrappedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BackButtonDrawable;->mRotation:F

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BackButtonDrawable;->mWrappedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BackButtonDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BackButtonDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_0
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BackButtonDrawable;->mWrappedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BackButtonDrawable;->mWrappedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setImeVisible(Z)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BackButtonDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BackButtonDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    if-eqz p1, :cond_1

    const/high16 v0, -0x3d4c0000

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/BackButtonDrawable;->mRotation:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_2

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BackButtonDrawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/systemui/statusbar/phone/BackButtonDrawable;->ROTATION:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/BackButtonDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BackButtonDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/BackButtonDrawable;->setRotation(F)V

    goto :goto_1
.end method

.method public setRotation(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/BackButtonDrawable;->mRotation:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BackButtonDrawable;->invalidateSelf()V

    return-void
.end method
