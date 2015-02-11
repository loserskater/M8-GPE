.class Lcom/android/systemui/cm/ShortcutPickHelper$5;
.super Ljava/lang/Object;
.source "ShortcutPickHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/cm/ShortcutPickHelper;->pickShortcut(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/cm/ShortcutPickHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/cm/ShortcutPickHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/cm/ShortcutPickHelper$5;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/cm/ShortcutPickHelper$5;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    # getter for: Lcom/android/systemui/cm/ShortcutPickHelper;->mListener:Lcom/android/systemui/cm/ShortcutPickHelper$OnPickListener;
    invoke-static {v0}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$900(Lcom/android/systemui/cm/ShortcutPickHelper;)Lcom/android/systemui/cm/ShortcutPickHelper$OnPickListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/cm/ShortcutPickHelper$OnPickListener;->shortcutPicked(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
