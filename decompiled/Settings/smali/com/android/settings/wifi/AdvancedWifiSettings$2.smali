.class Lcom/android/settings/wifi/AdvancedWifiSettings$2;
.super Ljava/lang/Object;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/AdvancedWifiSettings;->initPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1    # Landroid/preference/Preference;

    new-instance v0, Lcom/android/settings/wifi/AdvancedWifiSettings$WpsFragment;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings$WpsFragment;-><init>(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "wps_push_button"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/AdvancedWifiSettings$WpsFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1
.end method
