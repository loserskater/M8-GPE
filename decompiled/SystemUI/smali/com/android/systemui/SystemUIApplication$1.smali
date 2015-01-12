.class Lcom/android/systemui/SystemUIApplication$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemUIApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SystemUIApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SystemUIApplication;


# direct methods
.method constructor <init>(Lcom/android/systemui/SystemUIApplication;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 73
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    # getter for: Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z
    invoke-static {v2}, Lcom/android/systemui/SystemUIApplication;->access$000(Lcom/android/systemui/SystemUIApplication;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    :cond_0
    return-void

    .line 76
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    invoke-virtual {v2, p0}, Lcom/android/systemui/SystemUIApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 77
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    const/4 v3, 0x1

    # setter for: Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z
    invoke-static {v2, v3}, Lcom/android/systemui/SystemUIApplication;->access$002(Lcom/android/systemui/SystemUIApplication;Z)Z

    .line 78
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    # getter for: Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z
    invoke-static {v2}, Lcom/android/systemui/SystemUIApplication;->access$100(Lcom/android/systemui/SystemUIApplication;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    # getter for: Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;
    invoke-static {v2}, Lcom/android/systemui/SystemUIApplication;->access$200(Lcom/android/systemui/SystemUIApplication;)[Lcom/android/systemui/SystemUI;

    move-result-object v2

    array-length v0, v2

    .line 80
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 81
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    # getter for: Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;
    invoke-static {v2}, Lcom/android/systemui/SystemUIApplication;->access$200(Lcom/android/systemui/SystemUIApplication;)[Lcom/android/systemui/SystemUI;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/systemui/SystemUI;->onBootCompleted()V

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
