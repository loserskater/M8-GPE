.class Lcom/android/systemui/cm/ShortcutPickHelper$4;
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

    iput-object p1, p0, Lcom/android/systemui/cm/ShortcutPickHelper$4;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/cm/ShortcutPickHelper$4;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    # getter for: Lcom/android/systemui/cm/ShortcutPickHelper;->mActions:Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;
    invoke-static {v1}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$600(Lcom/android/systemui/cm/ShortcutPickHelper;)Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/systemui/cm/ShortcutPickHelper$ActionHolder;->getAction(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/cm/ShortcutPickHelper$4;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    # invokes: Lcom/android/systemui/cm/ShortcutPickHelper;->pickApp()V
    invoke-static {v1}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$700(Lcom/android/systemui/cm/ShortcutPickHelper;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/cm/ShortcutPickHelper$4;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    # getter for: Lcom/android/systemui/cm/ShortcutPickHelper;->mListener:Lcom/android/systemui/cm/ShortcutPickHelper$OnPickListener;
    invoke-static {v1}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$400(Lcom/android/systemui/cm/ShortcutPickHelper;)Lcom/android/systemui/cm/ShortcutPickHelper$OnPickListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/cm/ShortcutPickHelper$OnPickListener;->shortcutPicked(Ljava/lang/String;)V

    goto :goto_0
.end method
