.class Lcom/android/settings/bliss/AmbientSettings$4;
.super Ljava/lang/Object;
.source "AmbientSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bliss/AmbientSettings;->startAcctest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bliss/AmbientSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bliss/AmbientSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bliss/AmbientSettings$4;->this$0:Lcom/android/settings/bliss/AmbientSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bliss/AmbientSettings$4;->this$0:Lcom/android/settings/bliss/AmbientSettings;

    # invokes: Lcom/android/settings/bliss/AmbientSettings;->revertAcctest()V
    invoke-static {v0}, Lcom/android/settings/bliss/AmbientSettings;->access$200(Lcom/android/settings/bliss/AmbientSettings;)V

    return-void
.end method
