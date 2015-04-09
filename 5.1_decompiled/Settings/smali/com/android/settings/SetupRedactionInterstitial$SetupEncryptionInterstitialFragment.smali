.class public Lcom/android/settings/SetupRedactionInterstitial$SetupEncryptionInterstitialFragment;
.super Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;
.source "SetupRedactionInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SetupRedactionInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupEncryptionInterstitialFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const v3, 0x7f0400b3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0f0190

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-super {p0, p1, v1, p3}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v2
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/SetupRedactionInterstitial$SetupEncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0200ce

    invoke-static {v0, v1}, Lcom/android/settings/SetupWizardUtils;->setIllustration(Landroid/app/Activity;I)V

    invoke-virtual {p0}, Lcom/android/settings/SetupRedactionInterstitial$SetupEncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090939

    invoke-static {v0, v1}, Lcom/android/settings/SetupWizardUtils;->setHeaderText(Landroid/app/Activity;I)V

    return-void
.end method
