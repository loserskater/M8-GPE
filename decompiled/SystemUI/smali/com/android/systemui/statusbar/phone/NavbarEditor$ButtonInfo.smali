.class public final Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;
.super Ljava/lang/Object;
.source "NavbarEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavbarEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ButtonInfo"
.end annotation


# instance fields
.field public contentDescription:I

.field public displayId:I

.field private final key:Ljava/lang/String;

.field public keyCode:I

.field public landResource:I

.field public portResource:I

.field public sideResource:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;->key:Ljava/lang/String;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;->displayId:I

    iput p3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;->contentDescription:I

    iput p4, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;->keyCode:I

    iput p5, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;->portResource:I

    iput p6, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;->landResource:I

    iput p7, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;->sideResource:I

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;->key:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ButtonInfo["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
