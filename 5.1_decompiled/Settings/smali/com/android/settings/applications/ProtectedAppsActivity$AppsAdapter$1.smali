.class Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter$1;
.super Ljava/lang/Object;
.source "ProtectedAppsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter$1;->this$1:Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;

    iget-object v0, v2, Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;->componentName:Landroid/content/ComponentName;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter$1;->this$1:Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;

    iget-object v2, v2, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->this$0:Lcom/android/settings/applications/ProtectedAppsActivity;

    invoke-virtual {v2, v1}, Lcom/android/settings/applications/ProtectedAppsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
