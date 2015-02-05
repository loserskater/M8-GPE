.class Lcom/android/systemui/cm/ShortcutPickHelper$2;
.super Ljava/lang/Object;
.source "ShortcutPickHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/cm/ShortcutPickHelper;->pickApp()V
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

    iput-object p1, p0, Lcom/android/systemui/cm/ShortcutPickHelper$2;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/cm/ShortcutPickHelper$2;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    # getter for: Lcom/android/systemui/cm/ShortcutPickHelper;->mAdapter:Lcom/android/systemui/cm/ShortcutPickHelper$AppPickAdapter;
    invoke-static {v2}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$500(Lcom/android/systemui/cm/ShortcutPickHelper;)Lcom/android/systemui/cm/ShortcutPickHelper$AppPickAdapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/systemui/cm/ShortcutPickHelper$AppPickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/cm/ShortcutPickHelper$2;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    # getter for: Lcom/android/systemui/cm/ShortcutPickHelper;->mBaseIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$000(Lcom/android/systemui/cm/ShortcutPickHelper;)Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/cm/ShortcutPickHelper$2;->this$0:Lcom/android/systemui/cm/ShortcutPickHelper;

    # getter for: Lcom/android/systemui/cm/ShortcutPickHelper;->mListener:Lcom/android/systemui/cm/ShortcutPickHelper$OnPickListener;
    invoke-static {v2}, Lcom/android/systemui/cm/ShortcutPickHelper;->access$400(Lcom/android/systemui/cm/ShortcutPickHelper;)Lcom/android/systemui/cm/ShortcutPickHelper$OnPickListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/systemui/cm/ShortcutPickHelper$OnPickListener;->shortcutPicked(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
