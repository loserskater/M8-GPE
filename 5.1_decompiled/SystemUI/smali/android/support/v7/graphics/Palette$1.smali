.class final Landroid/support/v7/graphics/Palette$1;
.super Landroid/os/AsyncTask;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/graphics/Palette;->generateAsync(Landroid/graphics/Bitmap;ILandroid/support/v7/graphics/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Landroid/support/v7/graphics/Palette;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/support/v7/graphics/Palette$PaletteAsyncListener;

.field final synthetic val$numColors:I


# direct methods
.method constructor <init>(ILandroid/support/v7/graphics/Palette$PaletteAsyncListener;)V
    .locals 0

    iput p1, p0, Landroid/support/v7/graphics/Palette$1;->val$numColors:I

    iput-object p2, p0, Landroid/support/v7/graphics/Palette$1;->val$listener:Landroid/support/v7/graphics/Palette$PaletteAsyncListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette;
    .locals 2

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget v1, p0, Landroid/support/v7/graphics/Palette$1;->val$numColors:I

    invoke-static {v0, v1}, Landroid/support/v7/graphics/Palette;->generate(Landroid/graphics/Bitmap;I)Landroid/support/v7/graphics/Palette;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroid/support/v7/graphics/Palette$1;->doInBackground([Landroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/support/v7/graphics/Palette;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/graphics/Palette$1;->val$listener:Landroid/support/v7/graphics/Palette$PaletteAsyncListener;

    invoke-interface {v0, p1}, Landroid/support/v7/graphics/Palette$PaletteAsyncListener;->onGenerated(Landroid/support/v7/graphics/Palette;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/support/v7/graphics/Palette;

    invoke-virtual {p0, p1}, Landroid/support/v7/graphics/Palette$1;->onPostExecute(Landroid/support/v7/graphics/Palette;)V

    return-void
.end method
