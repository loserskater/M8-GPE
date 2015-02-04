.class Lcom/android/systemui/statusbar/phone/NavbarEditor$2;
.super Ljava/lang/Object;
.source "NavbarEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavbarEditor;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavbarEditor;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavbarEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$2;->this$0:Lcom/android/systemui/statusbar/phone/NavbarEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
