.class public Lcom/android/systemui/cm/ShortcutPickHelper;
.super Ljava/lang/Object;
.source "ShortcutPickHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;,
        Lcom/android/systemui/cm/ShortcutPickHelper$AppPickAdapter;,
        Lcom/android/systemui/cm/ShortcutPickHelper$OnPickListener;
    }
.end annotation


# instance fields
.field private mActions:Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;

.field private final mAdapter:Lcom/android/systemui/cm/ShortcutPickHelper$AppPickAdapter;

.field private final mBaseIntent:Landroid/content/Intent;

.field private final mContext:Landroid/content/Context;

.field private final mIconSize:I

.field private mListener:Lcom/android/systemui/cm/ShortcutPickHelper$OnPickListener;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/cm/ShortcutPickHelper$OnPickListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/cm/ShortcutPickHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/cm/ShortcutPickHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/cm/ShortcutPickHelper;->mBaseIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/cm/ShortcutPickHelper;->mBaseIntent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Lcom/android/systemui/cm/ShortcutPickHelper$AppPickAdapter;

    invoke-direct {v0, p0}, Lcom/android/systemui/cm/ShortcutPickHelper$AppPickAdapter;-><init>(Lcom/android/systemui/cm/ShortcutPickHelper;)V

    iput-object v0, p0, Lcom/android/systemui/cm/ShortcutPickHelper;->mAdapter:Lcom/android/systemui/cm/ShortcutPickHelper$AppPickAdapter;

    iput-object p2, p0, Lcom/android/systemui/cm/ShortcutPickHelper;->mListener:Lcom/android/systemui/cm/ShortcutPickHelper$OnPickListener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x1050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/cm/ShortcutPickHelper;->mIconSize:I

    invoke-direct {p0}, Lcom/android/systemui/cm/ShortcutPickHelper;->createActionList()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/cm/ShortcutPickHelper;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/cm/ShortcutPickHelper;->mBaseIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/cm/ShortcutPickHelper;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/cm/ShortcutPickHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/cm/ShortcutPickHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/cm/ShortcutPickHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/cm/ShortcutPickHelper;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/cm/ShortcutPickHelper;->mIconSize:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/cm/ShortcutPickHelper;)Lcom/android/systemui/cm/ShortcutPickHelper$OnPickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/cm/ShortcutPickHelper;->mListener:Lcom/android/systemui/cm/ShortcutPickHelper$OnPickListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/cm/ShortcutPickHelper;)Lcom/android/systemui/cm/ShortcutPickHelper$AppPickAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/cm/ShortcutPickHelper;->mAdapter:Lcom/android/systemui/cm/ShortcutPickHelper$AppPickAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/cm/ShortcutPickHelper;)Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/cm/ShortcutPickHelper;->mActions:Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/cm/ShortcutPickHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/cm/ShortcutPickHelper;->pickApp()V

    return-void
.end method

.method private createActionList()V
    .locals 4

    new-instance v1, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;-><init>(Lcom/android/systemui/cm/ShortcutPickHelper;Lcom/android/systemui/cm/ShortcutPickHelper$1;)V

    iput-object v1, p0, Lcom/android/systemui/cm/ShortcutPickHelper;->mActions:Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;

    iget-object v1, p0, Lcom/android/systemui/cm/ShortcutPickHelper;->mActions:Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;

    const-string v2, "app"

    const v3, 0x7f0b0220

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;->addAction(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/systemui/cm/ShortcutPickHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/cm/NavigationRingHelpers;->isAssistantAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/cm/ShortcutPickHelper;->mActions:Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;

    const-string v2, "assist"

    const v3, 0x7f0b021e

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;->addAction(Ljava/lang/String;I)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/cm/ShortcutPickHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/cm/NavigationRingHelpers;->isTorchAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/cm/ShortcutPickHelper;->mActions:Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;

    const-string v2, "torch"

    const v3, 0x7f0b021d

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;->addAction(Ljava/lang/String;I)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/cm/ShortcutPickHelper;->mActions:Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;

    const-string v2, "screenshot"

    const v3, 0x7f0b0218

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;->addAction(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/systemui/cm/ShortcutPickHelper;->mActions:Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;

    const-string v2, "imeSwitcher"

    const v3, 0x7f0b0215

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;->addAction(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/systemui/cm/ShortcutPickHelper;->mActions:Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;

    const-string v2, "ringSilent"

    const v3, 0x7f0b021a

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;->addAction(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/systemui/cm/ShortcutPickHelper;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/cm/ShortcutPickHelper;->mActions:Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;

    const-string v2, "ringVibrate"

    const v3, 0x7f0b0219

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;->addAction(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/systemui/cm/ShortcutPickHelper;->mActions:Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;

    const-string v2, "ringVibrateSilent"

    const v3, 0x7f0b021b

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;->addAction(Ljava/lang/String;I)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/cm/ShortcutPickHelper;->mActions:Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;

    const-string v2, "killTask"

    const v3, 0x7f0b0216

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;->addAction(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/systemui/cm/ShortcutPickHelper;->mActions:Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;

    const-string v2, "standby"

    const v3, 0x7f0b021c

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;->addAction(Ljava/lang/String;I)V

    return-void
.end method

.method private pickApp()V
    .locals 5

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/cm/ShortcutPickHelper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0207

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/cm/ShortcutPickHelper;->mAdapter:Lcom/android/systemui/cm/ShortcutPickHelper$AppPickAdapter;

    new-instance v4, Lcom/android/systemui/cm/ShortcutPickHelper$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/cm/ShortcutPickHelper$2;-><init>(Lcom/android/systemui/cm/ShortcutPickHelper;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/systemui/cm/ShortcutPickHelper$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/cm/ShortcutPickHelper$1;-><init>(Lcom/android/systemui/cm/ShortcutPickHelper;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7e8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public pickShortcut(Z)V
    .locals 6

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/cm/ShortcutPickHelper;->mActions:Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;

    const-string v3, "none"

    const v4, 0x7f0b0217

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;->addAction(Ljava/lang/String;II)V

    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/cm/ShortcutPickHelper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/systemui/cm/ShortcutPickHelper;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0207

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/cm/ShortcutPickHelper;->mActions:Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;

    invoke-virtual {v3}, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/cm/ShortcutPickHelper$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/cm/ShortcutPickHelper$4;-><init>(Lcom/android/systemui/cm/ShortcutPickHelper;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/systemui/cm/ShortcutPickHelper$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/cm/ShortcutPickHelper$3;-><init>(Lcom/android/systemui/cm/ShortcutPickHelper;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7e8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/cm/ShortcutPickHelper;->mActions:Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;

    const-string v3, "none"

    invoke-virtual {v2, v3}, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;->removeAction(Ljava/lang/String;)V

    goto :goto_0
.end method
