.class public Lcom/android/systemui/statusbar/phone/NavbarEditor;
.super Ljava/lang/Object;
.source "NavbarEditor.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;,
        Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;
    }
.end annotation


# static fields
.field private static final ALL_BUTTONS:[Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

.field private static final BUTTON_IDS:[I

.field public static final NAVBAR_ALWAYS_MENU:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

.field public static final NAVBAR_BACK:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

.field public static final NAVBAR_CONDITIONAL_MENU:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

.field public static final NAVBAR_DPAD_LEFT:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

.field public static final NAVBAR_DPAD_RIGHT:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

.field public static final NAVBAR_EMPTY:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

.field public static final NAVBAR_HOME:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

.field public static final NAVBAR_MENU_BIG:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

.field public static final NAVBAR_RECENT:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

.field public static final NAVBAR_SEARCH:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

.field private static final SMALL_BUTTON_IDS:[I

.field private static sIsDevicePhone:Ljava/lang/Boolean;

.field private static final sLocation:[I


# instance fields
.field private final mButtonViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/KeyButtonView;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckLongPress:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDragOrigin:F

.field private mInEditMode:Z

.field private mLongPressed:Z

.field private mParent:Landroid/view/View;

.field private final mRtl:Z

.field private mVertical:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->BUTTON_IDS:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->SMALL_BUTTON_IDS:[I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->sIsDevicePhone:Ljava/lang/Boolean;

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->sLocation:[I

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    const-string v1, "empty"

    const v2, 0x7f0b020c

    const v3, 0x7f0b00c5

    const/4 v4, 0x0

    const v5, 0x7f020187

    const v6, 0x7f020188

    const v7, 0x7f020189

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_EMPTY:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    const-string v1, "home"

    const v2, 0x7f0b0208

    const v3, 0x7f0b0041

    const/4 v4, 0x3

    const v5, 0x7f0200ac

    const v6, 0x7f0200ad

    const v7, 0x7f0200ac

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_HOME:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    const-string v1, "back"

    const v2, 0x7f0b020b

    const v3, 0x7f0b0040

    const/4 v4, 0x4

    const v5, 0x7f0200a9

    const v6, 0x7f0200ab

    const v7, 0x7f02018b

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_BACK:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    const-string v1, "search"

    const v2, 0x7f0b020a

    const v3, 0x7f0b0040

    const/16 v4, 0x54

    const v5, 0x7f020191

    const v6, 0x7f020192

    const v7, 0x7f020193

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_SEARCH:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    const-string v1, "recent"

    const v2, 0x7f0b0209

    const v3, 0x7f0b0043

    const/4 v4, 0x0

    const v5, 0x7f0200b2

    const v6, 0x7f0200b3

    const v7, 0x7f020190

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_RECENT:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    const-string v1, "menu0"

    const v2, 0x7f0b020d

    const v3, 0x7f0b0042

    const/16 v4, 0x52

    const v5, 0x7f0200b0

    const v6, 0x7f0200b1

    const v7, 0x7f0200b0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_CONDITIONAL_MENU:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    const-string v1, "menu1"

    const v2, 0x7f0b020e

    const v3, 0x7f0b0042

    const/16 v4, 0x52

    const v5, 0x7f0200b0

    const v6, 0x7f0200b1

    const v7, 0x7f0200b0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_ALWAYS_MENU:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    const-string v1, "menu2"

    const v2, 0x7f0b020f

    const v3, 0x7f0b0042

    const/16 v4, 0x52

    const v5, 0x7f02018e

    const v6, 0x7f02018f

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_MENU_BIG:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    const-string v1, "dpad_left"

    const/4 v2, 0x0

    const v3, 0x7f0b0210

    const/16 v4, 0x15

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f02018c

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_DPAD_LEFT:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    const-string v1, "dpad_right"

    const/4 v2, 0x0

    const v3, 0x7f0b0211

    const/16 v4, 0x16

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f02018d

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_DPAD_RIGHT:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_EMPTY:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_HOME:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_BACK:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_SEARCH:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_RECENT:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_CONDITIONAL_MENU:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_ALWAYS_MENU:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_MENU_BIG:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->ALL_BUTTONS:[Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0e0137
        0x7f0e013a
        0x7f0e013b
        0x7f0e013c
        0x7f0e013d
        0x7f0e013f
    .end array-data

    :array_1
    .array-data 4
        0x7f0e0137
        0x7f0e013f
    .end array-data
.end method

.method public constructor <init>(Landroid/view/View;ZZ)V
    .locals 9

    const/4 v8, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mInEditMode:Z

    new-instance v6, Lcom/android/systemui/statusbar/phone/NavbarEditor$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/NavbarEditor$1;-><init>(Lcom/android/systemui/statusbar/phone/NavbarEditor;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/View;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mRtl:Z

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mButtonViews:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/View;

    const v7, 0x7f0e0138

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    sget-object v6, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_DPAD_LEFT:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    invoke-virtual {v1, v6, p2, v8}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setInfo(Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;ZZ)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->BUTTON_IDS:[I

    array-length v5, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget v4, v0, v3

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mButtonViews:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/View;

    const v7, 0x7f0e013e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    sget-object v6, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_DPAD_RIGHT:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    invoke-virtual {v2, v6, p2, v8}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setInfo(Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;ZZ)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NavbarEditor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mInEditMode:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/NavbarEditor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mLongPressed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NavbarEditor;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NavbarEditor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    return v0
.end method

.method static synthetic access$500()[Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->ALL_BUTTONS:[Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    return-object v0
.end method

.method private adjustPadding(I)V
    .locals 11

    const/16 v10, 0x8

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/View;

    const v9, 0x7f0e0139

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_6

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v8, v1, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    if-nez v8, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    add-int/lit8 v8, v6, 0x2

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    sget-object v8, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_EMPTY:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    if-eq v0, v8, :cond_5

    sget-object v8, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_EMPTY:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    if-ne v2, v8, :cond_2

    const/4 v8, 0x1

    if-le p1, v8, :cond_4

    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    move-object v2, v8

    goto :goto_2

    :cond_4
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_5
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method private findInterceptingView(FLandroid/view/View;)Landroid/view/View;
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    if-eq v3, p2, :cond_0

    sget-object v4, Lcom/android/systemui/statusbar/phone/NavbarEditor;->SMALL_BUTTON_IDS:[I

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/systemui/statusbar/phone/NavbarEditor;->sLocation:[I

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getLocationOnScreen([I)V

    sget-object v5, Lcom/android/systemui/statusbar/phone/NavbarEditor;->sLocation:[I

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    aget v4, v5, v4

    int-to-float v2, v4

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v1, v4

    :goto_1
    const/high16 v4, 0x40800000

    div-float v4, v1, v4

    add-float/2addr v4, v2

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    add-float v4, v2, v1

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    :goto_2
    return-object v3

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v1, v4

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public static isDevicePhone(Landroid/content/Context;)Z
    .locals 6

    sget-object v4, Lcom/android/systemui/statusbar/phone/NavbarEditor;->sIsDevicePhone:Ljava/lang/Boolean;

    if-nez v4, :cond_0

    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v4, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v5, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/lit16 v4, v1, 0xa0

    iget v5, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    div-int v2, v4, v5

    const/16 v4, 0x258

    if-ge v2, v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/systemui/statusbar/phone/NavbarEditor;->sIsDevicePhone:Ljava/lang/Boolean;

    :cond_0
    sget-object v4, Lcom/android/systemui/statusbar/phone/NavbarEditor;->sIsDevicePhone:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private switchId(Landroid/view/View;Landroid/view/View;)V
    .locals 5

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    sget-object v3, Lcom/android/systemui/statusbar/phone/NavbarEditor;->sLocation:[I

    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDragOrigin:F

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    sget-object v3, Lcom/android/systemui/statusbar/phone/NavbarEditor;->sLocation:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDragOrigin:F

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mButtonViews:Ljava/util/ArrayList;

    invoke-static {v3, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    return-void

    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDragOrigin:F

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    sget-object v3, Lcom/android/systemui/statusbar/phone/NavbarEditor;->sLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDragOrigin:F

    goto :goto_0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 14

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mInEditMode:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_4

    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/View;->setPressed(Z)V

    sget-object v10, Lcom/android/systemui/statusbar/phone/NavbarEditor;->sLocation:[I

    invoke-virtual {p1, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    sget-object v11, Lcom/android/systemui/statusbar/phone/NavbarEditor;->sLocation:[I

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    :goto_1
    aget v10, v11, v10

    int-to-float v10, v10

    iput v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDragOrigin:F

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v11

    int-to-long v12, v11

    invoke-virtual {p1, v10, v12, v13}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_2
    const/4 v10, 0x1

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_f

    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/View;->setPressed(Z)V

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mLongPressed:Z

    if-eqz v10, :cond_5

    sget-object v10, Lcom/android/systemui/statusbar/phone/NavbarEditor;->SMALL_BUTTON_IDS:[I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_5
    const/4 v10, 0x0

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-eqz v10, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    :goto_3
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-eqz v10, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v2, v10

    :goto_4
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-eqz v10, :cond_a

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getTop()I

    move-result v10

    int-to-float v6, v10

    :goto_5
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-eqz v10, :cond_b

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getTop()I

    move-result v10

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v5, v10

    :goto_6
    cmpg-float v10, v8, v6

    if-ltz v10, :cond_7

    cmpl-float v10, v8, v5

    if-lez v10, :cond_c

    :cond_7
    const/4 v10, 0x0

    goto :goto_0

    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    goto :goto_3

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v2, v10

    goto :goto_4

    :cond_a
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLeft()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x40000000

    div-float v11, v2, v11

    sub-float v6, v10, v11

    goto :goto_5

    :cond_b
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLeft()I

    move-result v10

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v5, v10

    goto :goto_6

    :cond_c
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-nez v10, :cond_d

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLeft()I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v8, v10

    const/high16 v11, 0x40000000

    div-float v11, v2, v11

    sub-float/2addr v10, v11

    invoke-virtual {p1, v10}, Landroid/view/View;->setX(F)V

    :goto_7
    invoke-direct {p0, v8, p1}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->findInterceptingView(FLandroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getTop()I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v8, v10

    const/high16 v11, 0x40000000

    div-float v11, v2, v11

    sub-float/2addr v10, v11

    invoke-virtual {p1, v10}, Landroid/view/View;->setY(F)V

    goto :goto_7

    :cond_e
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->switchId(Landroid/view/View;Landroid/view/View;)V

    goto/16 :goto_2

    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_10

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    :cond_10
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/View;->setPressed(Z)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p1, v10}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mLongPressed:Z

    if-nez v10, :cond_11

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_HOME:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    sget-object v10, Lcom/android/systemui/statusbar/phone/NavbarEditor;->SMALL_BUTTON_IDS:[I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    new-instance v4, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mButtonViews:Ljava/util/ArrayList;

    invoke-direct {v4, v10, v11, v3}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mContext:Landroid/content/Context;

    const v12, 0x7f0b0207

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/android/systemui/statusbar/phone/NavbarEditor$3;

    invoke-direct {v11, p0, p1, v4, v3}, Lcom/android/systemui/statusbar/phone/NavbarEditor$3;-><init>(Lcom/android/systemui/statusbar/phone/NavbarEditor;Landroid/view/View;Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;Z)V

    invoke-virtual {v10, v4, v11}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/high16 v11, 0x1040000

    new-instance v12, Lcom/android/systemui/statusbar/phone/NavbarEditor$2;

    invoke-direct {v12, p0}, Lcom/android/systemui/statusbar/phone/NavbarEditor$2;-><init>(Lcom/android/systemui/statusbar/phone/NavbarEditor;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x7d8

    invoke-virtual {v10, v11}, Landroid/view/Window;->setType(I)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    :goto_8
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mLongPressed:Z

    goto/16 :goto_2

    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-nez v10, :cond_12

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDragOrigin:F

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLeft()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-virtual {p1, v10}, Landroid/view/View;->setX(F)V

    goto :goto_8

    :cond_12
    iget v10, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDragOrigin:F

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTop()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-virtual {p1, v10}, Landroid/view/View;->setY(F)V

    goto :goto_8
.end method

.method protected saveKeys()V
    .locals 8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    sget-object v4, Lcom/android/systemui/statusbar/phone/NavbarEditor;->BUTTON_IDS:[I

    array-length v4, v4

    if-ge v0, v4, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mRtl:Z

    if-nez v4, :cond_1

    sget-object v4, Lcom/android/systemui/statusbar/phone/NavbarEditor;->BUTTON_IDS:[I

    array-length v4, v4

    add-int/lit8 v5, v0, 0x1

    sub-int v1, v4, v5

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    if-eqz v0, :cond_0

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    # getter for: Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;->access$400(Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "nav_buttons"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public setEditMode(Z)V
    .locals 7

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mInEditMode:Z

    sget-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->BUTTON_IDS:[I

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    aget v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/View;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setEditMode(Z)V

    if-eqz p1, :cond_1

    move-object v5, p0

    :goto_1
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    :cond_3
    return-void
.end method

.method protected updateKeys()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "nav_buttons"

    const/16 v17, -0x2

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_0

    const-string v13, "empty|back|home|recent|empty|menu0"

    :cond_0
    const-string v15, "\\|"

    invoke-virtual {v13, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v15, v4

    sget-object v16, Lcom/android/systemui/statusbar/phone/NavbarEditor;->BUTTON_IDS:[I

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_1

    const-string v15, "empty|back|home|recent|empty|menu0"

    const-string v16, "\\|"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    :cond_1
    const/4 v14, 0x0

    const/4 v5, 0x0

    :goto_0
    sget-object v15, Lcom/android/systemui/statusbar/phone/NavbarEditor;->BUTTON_IDS:[I

    array-length v15, v15

    if-ge v5, v15, :cond_7

    sget-object v15, Lcom/android/systemui/statusbar/phone/NavbarEditor;->BUTTON_IDS:[I

    aget v7, v15, v5

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mRtl:Z

    if-nez v15, :cond_4

    sget-object v15, Lcom/android/systemui/statusbar/phone/NavbarEditor;->BUTTON_IDS:[I

    array-length v15, v15

    sub-int/2addr v15, v5

    add-int/lit8 v8, v15, -0x1

    :goto_1
    array-length v15, v4

    if-ge v8, v15, :cond_5

    aget-object v11, v4, v8

    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/View;

    invoke-virtual {v15, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    sget-object v15, Lcom/android/systemui/statusbar/phone/NavbarEditor;->SMALL_BUTTON_IDS:[I

    invoke-static {v15, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v10

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_EMPTY:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    sget-object v1, Lcom/android/systemui/statusbar/phone/NavbarEditor;->ALL_BUTTONS:[Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    array-length v12, v1

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v12, :cond_2

    aget-object v9, v1, v6

    # getter for: Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;->key:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;->access$400(Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    move-object v2, v9

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    invoke-virtual {v3, v2, v15, v10}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setInfo(Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;ZZ)V

    sget-object v15, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_EMPTY:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    if-eq v2, v15, :cond_3

    if-nez v10, :cond_3

    add-int/lit8 v14, v14, 0x1

    :cond_3
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setTranslationX(F)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v15, v5, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    move v8, v5

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->isDevicePhone(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->adjustPadding(I)V

    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->updateLowLights(I)V

    return-void
.end method

.method protected updateLowLights(I)V
    .locals 9

    const/16 v7, 0x8

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/View;

    const v8, 0x7f0e00a4

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v5, v1, Landroid/widget/ImageView;

    if-nez v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-gtz p1, :cond_2

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-lez p1, :cond_3

    move v5, v6

    :goto_3
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_3
    move v5, v7

    goto :goto_3

    :cond_4
    return-void
.end method
