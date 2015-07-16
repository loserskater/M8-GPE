.class public Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NavBarReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    const-string v2, "edit"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "save"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/NavigationBarView;->mInEditMode:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$300(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Z

    move-result v2

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    # setter for: Lcom/android/systemui/statusbar/phone/NavigationBarView;->mInEditMode:Z
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$302(Lcom/android/systemui/statusbar/phone/NavigationBarView;Z)Z

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    # invokes: Lcom/android/systemui/statusbar/phone/NavigationBarView;->removeButtonListeners()V
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$400(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEditBar:Lcom/android/systemui/statusbar/phone/NavbarEditor;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$500(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Lcom/android/systemui/statusbar/phone/NavbarEditor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->setEditMode(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEditBar:Lcom/android/systemui/statusbar/phone/NavbarEditor;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$500(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Lcom/android/systemui/statusbar/phone/NavbarEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->saveKeys()V

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEditBar:Lcom/android/systemui/statusbar/phone/NavbarEditor;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$500(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Lcom/android/systemui/statusbar/phone/NavbarEditor;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->setEditMode(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSettings()V

    goto :goto_0
.end method
